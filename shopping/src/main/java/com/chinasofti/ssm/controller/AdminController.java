package com.chinasofti.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.ssm.biz.AdminBiz;

@Controller
@RequestMapping
public class AdminController {

	@Autowired
	private AdminBiz adminBiz;
	
//	@RequestMapping(value="/jsp/adminLogin")
//	public String(String adminId) {
//		
//	}
}
