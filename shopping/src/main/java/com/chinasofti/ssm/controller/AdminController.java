package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
    @Autowired
    private AdminBiz adminBiz;

    @RequestMapping("/AdminInfo.do")
    public String View(HttpServletRequest request){
        Admin admin =  adminBiz.findById(1);
        System.out.println(admin.getAdminName());
        return "AdminInfo";
    }
}
