package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.domain.Good;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class GoodController {

    @Autowired
    private GoodBiz goodBiz;

    @RequestMapping("/GoodFindById")
    public String GoodFindById(@RequestParam int Id, HttpServletRequest request){
        Good good;
        good = goodBiz.findById(Id);

        if(good!=null){
            request.setAttribute("good",good);
            return "info";
        }else
            return "";
    }
}
