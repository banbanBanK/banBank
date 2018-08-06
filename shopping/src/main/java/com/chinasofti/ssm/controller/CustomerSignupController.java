package com.chinasofti.ssm.controller;

import java.util.Date;
import java.util.HashSet;
import java.util.List;


import com.chinasofti.ssm.biz.*;
import com.chinasofti.ssm.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping
public class CustomerSignupController {

	@Autowired
	private CustomerBiz customerBiz;
	
	@Autowired
	private AddressBiz addressBiz;

	@Autowired
    private AdminBiz adminBiz;
	@Autowired
	private CustomerAnalysisBiz customerAnalysisBiz;
	@Autowired
	private FavorBiz favorBiz;
	@Autowired
	private TypeBiz typeBiz;
	
	
	@RequestMapping(value="/jsp/signup")
	public String signup(String customerId,String password,String name,String gender,
			String email,String birthday,String phone,String province,String address) {
		Customer customer=new Customer();
		customer.setCustomerId(customerId);
		customer.setCustomerPassword(password);
		customer.setCustomerName(name);
		customer.setCustomerGender(gender);
	    customer.setCustomerEmail(email);
	    //customer.setCustomerBirthday(birthday);
	    customer.setCustomerPhone(phone);
	    Address addressOfCus=new Address();
	    addressOfCus.setAddressId(province);
	    customer.setAddress(addressOfCus);
	    boolean res=customerBiz.insert(customer);
	    if(res){
			int typeNum = typeBiz.findAll().size();
			for(int i=1;i <= typeNum;i++){
				Favor favor = new Favor();
				Type type = typeBiz.findByTypeId(String.valueOf(i));
				favor.setDeleteStatus(1);
				favor.setType(type);
				favor.setCustomer(customer);
				favor.setFavorLevel(0);
				favorBiz.insert(favor);
			}
			return "../jspFront/login";
		}

	    else
	    	return "customerSignupError";
	}
	
	@RequestMapping(value="/jsp/customer-add")
	@ResponseBody
	public boolean customerIdAdd(String customerId) {
		
		Customer customer=null;
		customer=customerBiz.findByCustomerId(customerId);
		if(customer!=null)
			return true;
		else
			return false;
	}
	
	@RequestMapping(value="/jsp/select-province")
	@ResponseBody
	public Object selectProvince() {
		List<Address> list= null;
		list=addressBiz.findAll();
        return list;
	}

	@RequestMapping("/loginFront")
    @ResponseBody
    public boolean loginFront(@RequestParam String customerId , @RequestParam String password, HttpServletRequest request){
	    Customer customer = customerBiz.findByCustomerId(customerId);
        HttpSession session = request.getSession();
	    if(customer!=null) {
            String Password = customer.getCustomerPassword();
            if(Password.equals(password)) {
                session.setAttribute("customerId",customerId);
                session.setAttribute("loginStatus", true);
				int typeNum = typeBiz.findAll().size();
				for(int i = 1;i <= typeNum;i++){
					Favor favor = favorBiz.findByCustomerAndType(customerId,String.valueOf(i));
					favor.setFavorLevel(0);
					favorBiz.update(favor);
				}
				List<CustomerAnalysis> customerAnalyses = customerAnalysisBiz.findByCustomerId(customerId);
				for(CustomerAnalysis customerAnalysis : customerAnalyses){
					String typeId = customerAnalysis.getGood().getType().getTypeId();
					Favor favor = favorBiz.findByCustomerAndType(customerId,typeId);
					int level = favor.getFavorLevel();
					int browseNum = customerAnalysis.getBrowseNum();
					int buyNum = customerAnalysis.getBuyNum();
					int buySum = customerAnalysis.getBuySum();
					favor.setFavorLevel(level+browseNum+5*buySum+2*buyNum);
					favorBiz.update(favor);
				}
                return true;
            }
            else {
                session.setAttribute("customerId","-1");
                session.setAttribute("loginStatus",false);
                return false;
            }
	    }else return false;
    }

    @RequestMapping("/CustomerDetails")
    public String CustomerDetails(@RequestParam String customerId,HttpServletRequest request){
	   Customer customer = customerBiz.findByCustomerId(customerId);
	   if(customer!=null)
	    request.setAttribute("customerDetail",customer);
	   return "../jspFront/CustomerDetail";

    }

    @RequestMapping("/SaveCustomerInfo")
    @ResponseBody
    public boolean SaveCustomerInfo(String customerName, String customerGender, String customerEmail, java.sql.Date customerBirthday, String customerPhone, String customerZipCode, String customerAddress, String customerInfo){
	    return customerBiz.updateCustomerInfo(customerName,customerGender,customerEmail,customerBirthday,customerPhone,customerZipCode,customerAddress,customerInfo);
    }

    @RequestMapping("/logout")
	@ResponseBody
	public boolean logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		if(session.getAttribute("customerId")!=null) {
			session.removeAttribute("customerId");
			session.removeAttribute("loginStatus");
			return true;
		}else
			return false;
	}

	@RequestMapping("/CustomerView")
    public String CustomerView(HttpServletRequest request){
	    HttpSession session = request.getSession();
	    String adminId = (String) session.getAttribute("loginAdminId");
        Admin admin = adminBiz.findByAdminId(adminId);
	    if(adminId != null){
	       List<Customer> customers = customerBiz.findAll();
	       request.setAttribute("customers",customers);
	       request.setAttribute("admin",admin);
	       return "/CustomerView";
        }else
            return "login";
    }
}
