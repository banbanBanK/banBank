package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.ssm.biz.AdminBiz;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping
public class AdminController {

	@Autowired
	private AdminBiz adminBiz;

	@RequestMapping("/AdminInfo")
	public String look(HttpServletRequest request){
        HttpSession session =  request.getSession();
        String adminId = (String)session.getAttribute("loginAdminId");
        if(adminId != null) {
            Admin admin = adminBiz.findByAdminId(adminId);
            request.setAttribute("admin", admin);
            return "AdminInfo";
        }else
            return "login";

	}

	@RequestMapping("/updateAdmin")
	public String updateAdmin(HttpServletRequest request){
        HttpSession session =  request.getSession();
        String adminId = (String)session.getAttribute("loginAdminId");
		if(adminId != null) {
            Admin admin = adminBiz.findByAdminId(adminId);
            admin.setAdminName(request.getParameter("adminName"));
            admin.setAdminTel(request.getParameter("adminTel"));
            admin.setAdminGender(request.getParameter("adminGender"));
            admin.setAdminEmail(request.getParameter("adminEmail"));
            admin.setAdminMessage(request.getParameter("adminMessage"));
            adminBiz.update(admin);
            return "AdminInfo";
        }
        else
            return "login";
	}

	@RequestMapping("/PwdModify")
	public String modify(HttpServletRequest request){
		//String adminId = request.getParameter("");
		//Admin admin1 = adminBiz.findByAdminId(adminId);
		HttpSession session = request.getSession();
		String adminId =(String) session.getAttribute("loginAdminId");
		Admin admin = adminBiz.findByAdminId(adminId);
		session.setAttribute("pwd",admin.getAdminPassword());
		request.setAttribute("admin",admin);
		return "PwdModify";
	}

	@RequestMapping("/PwdModify1")
	public String modify1(HttpServletRequest request){
		//String adminId = request.getParameter("");
		//Admin admin1 = adminBiz.findByAdminId(adminId);
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("loginAdminId");
		Admin admin = adminBiz.findByAdminId(adminId);
		admin.setAdminPassword((String)request.getParameter("adminPassword"));
		adminBiz.modifypwd(admin);
		return "InfoView";
	}
	@RequestMapping("/InfoView")
	public String first(HttpServletRequest request){
	    HttpSession session = request.getSession();
	    String adminId = (String) session.getAttribute("loginAdminId");
	    if(adminId != null) {
            Admin admin = adminBiz.findByAdminId(adminId);
            request.setAttribute("admin", admin);
            return "InfoView";
        }else
            return "login";
	}
    @RequestMapping(value = "/adminLogin")
    @ResponseBody
    public boolean adminLogin(String id,String password,HttpServletRequest request){
       Boolean flag=adminBiz.login(id,password);
       if(flag) {
       		HttpSession session = request.getSession();
       		session.setAttribute("loginAdminId",id);
		   return true;
	   }else
           return false;
    }

    @RequestMapping("/AdminLogout")
    @ResponseBody
    public boolean adminLogout(HttpServletRequest request){
	    HttpSession session =request.getSession();
	    if(session.getAttribute("loginAdminId")!=null) {
            session.removeAttribute("loginAdminId");
            return true;
        }else
            return false;
    }
}
