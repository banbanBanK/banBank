package com.chinasofti.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chinasofti.ssm.biz.UserBiz;
import com.chinasofti.ssm.domain.User;

@Controller
public class UserController {
	
	@Autowired
	private UserBiz userBiz;
	
	@RequestMapping("/findById")
	public String findById(@RequestParam int Id,HttpServletRequest request) {
		
		User user = userBiz.findById(Id);
		System.out.println("Id=" + user.getUserName());
		request.setAttribute("user", user);
		return "info";
	}
}
