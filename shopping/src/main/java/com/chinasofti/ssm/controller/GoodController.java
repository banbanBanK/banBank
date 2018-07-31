package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.TypeBiz;
import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class GoodController {

    @Autowired
    private GoodBiz goodBiz;
    @Autowired
    private TypeBiz typeBiz;

    @RequestMapping("/GoodFindAll")
    public String goodFindAll(HttpServletRequest request){
        List<Good> goods = goodBiz.findAll();

        if(goods!=null){
            request.setAttribute("goods",goods);
            return "../jspFront/products";
        }else
            return "";
    }
    @RequestMapping("/GoodFindByTypeId")
    public String goodFindByTypeId(@RequestParam int id, HttpServletRequest request){
        List<Type> types = typeBiz.findAll();
        request.setAttribute("types",types);

        List<Good> goods = goodBiz.findByTypeId(id);
        if(goods!=null){
            request.setAttribute("goods",goods);
            return "../jspFront/products";
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
}
