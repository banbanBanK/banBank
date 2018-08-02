package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.ssm.biz.AdminBiz;

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
		//String adminId = request.getParameter("");
		//Admin admin1 = adminBiz.findByAdminId(adminId);
		Admin admin = adminBiz.findByAdminId("1");
		HttpSession session =  request.getSession();
		session.setAttribute("admin",admin);
		return "AdminInfo";
	}

	@RequestMapping("/UpdateAdmin")
	public String updateadmin(HttpServletRequest request){
		//String adminId = request.getParameter("");
		//Admin admin1 = adminBiz.findByAdminId(adminId);
		Admin admin = adminBiz.findByAdminId("1");
		admin.setAdminName(request.getParameter("adminName"));
		admin.setAdminTel(request.getParameter("adminTel"));
		admin.setAdminGender(request.getParameter("adminGender"));
		admin.setAdminEmail(request.getParameter("adminEmail"));
		admin.setAdminMessage(request.getParameter("adminMessage"));
		adminBiz.update(admin);
		return "AdminInfo";
	}

	@RequestMapping("/PwdModify")
	public String modify(HttpServletRequest request){
		//String adminId = request.getParameter("");
		//Admin admin1 = adminBiz.findByAdminId(adminId);
		Admin admin = adminBiz.findByAdminId("1");
		HttpSession session = request.getSession();
		session.setAttribute("admin",admin);
		admin.setAdminPassword((String)request.getAttribute("adminPassword"));
		adminBiz.modifypwd(admin);
		return "PwdModify";
	}

}
