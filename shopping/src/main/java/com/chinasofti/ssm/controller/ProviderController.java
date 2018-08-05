package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.biz.ProviderBiz;
import com.chinasofti.ssm.domain.Admin;
import com.chinasofti.ssm.domain.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ProviderController {
    @Autowired
    ProviderBiz providerBiz;
    @Autowired
    AdminBiz adminBiz;

    @RequestMapping("/ProviderView")
    public String providerView(HttpServletRequest request){
        Admin admin = adminBiz.findByAdminId((String)request.getSession().getAttribute("loginAdminId"));
        if(admin!=null) {
           List<Provider> providers = providerBiz.findAll();
           request.setAttribute("providers",providers);
           request.setAttribute("admin",admin);
           return "ProviderView";
        }else
            return "login";
    }

    @RequestMapping("/deleteProvider")
    @ResponseBody
    public boolean deleteProvider(@RequestParam Integer id){
        return providerBiz.delete(id);
    }
}
