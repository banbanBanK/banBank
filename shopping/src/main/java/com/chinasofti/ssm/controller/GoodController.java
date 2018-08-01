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

        if(goods!=null)
            request.setAttribute("goods",goods);

            return "../jspFront/products";
    }
    @RequestMapping("/GoodFindByTypeId")
    public String goodFindByTypeId(@RequestParam int typeId, @RequestParam String fatherTypeId, HttpServletRequest request){
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        List<Type> types_children = typeBiz.findChildren(fatherTypeId);
        System.out.println(fatherTypeId);
        List<Good> goods = goodBiz.findByTypeId(typeId);
        if(types_children != null)
            request.setAttribute("types_children",types_children);
        if(types_parents != null)
            request.setAttribute("types_parents",types_parents);
        if(types_singleRoots != null)
            request.setAttribute("types_singleRoots",types_singleRoots);
        if(goods!=null)
            request.setAttribute("goods",goods);

        return "../jspFront/products";
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
