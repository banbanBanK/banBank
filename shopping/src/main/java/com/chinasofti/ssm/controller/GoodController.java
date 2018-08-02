package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.ProviderBiz;
import com.chinasofti.ssm.domain.Admin;
import com.chinasofti.ssm.domain.Good;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class GoodController {

    @Autowired
    private GoodBiz goodBiz;
    @Autowired
    private AdminBiz adminBiz;

    @RequestMapping("/GoodFindAll")
    public String goodFindAll(HttpServletRequest request){
        List<Good> goods = goodBiz.findAll();

        if(goods!=null){
            request.setAttribute("goods",goods);
            return "info";
        }else
            return "";
    }
    @RequestMapping("/GoodFindByTypeId")
    public String goodFindByTypeId(@RequestParam int id, HttpServletRequest request){
            List<Good> goods = goodBiz.findByType(id);

        if(goods!=null){
            request.setAttribute("goods",goods);
            return "info";
        }else
            return "";
    }


    @RequestMapping("/GoodFindById")
    public String goodFindById(@RequestParam int id, HttpServletRequest request){
        Good good;
        good = goodBiz.findById(id);

        if(good!=null){
            request.setAttribute("good",good);
            return "info";
        }else
            return "";
    }

    @RequestMapping("/getgood")
    public String getGood(HttpServletRequest request){
        List<Good> goods = goodBiz.findAll();
        request.setAttribute("goods",goods);
        return "getgood";
    }
}
