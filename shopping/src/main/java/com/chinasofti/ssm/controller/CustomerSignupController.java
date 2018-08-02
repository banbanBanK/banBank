package com.chinasofti.ssm.controller;

import java.util.Date;
import java.util.HashSet;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasofti.ssm.biz.AddressBiz;
import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.domain.Address;
import com.chinasofti.ssm.domain.Customer;

@Controller
@RequestMapping
public class CustomerSignupController {

	@Autowired
	private CustomerBiz customerBiz;
	
	@Autowired
	private AddressBiz addressBiz;
	
	
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
	    int res=customerBiz.insert(customer);
	    if(res!=0)
	    		return "customerSignupSuccess";
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
}
