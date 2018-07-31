package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.TypeBiz;
import com.chinasofti.ssm.domain.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TypeController {
    @Autowired
    private TypeBiz typeBiz;

    @RequestMapping("/jspFront/index")
    public String typeFindAll(HttpServletRequest request){
        List<Type> types = typeBiz.findAll();

        if(types!=null){
            request.setAttribute("types",types);
            return "../jspFront/index";
        }else
            return "";
    }
}
