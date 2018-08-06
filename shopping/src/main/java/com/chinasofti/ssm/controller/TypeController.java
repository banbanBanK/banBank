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
public class TypeController {
    @Autowired
    private TypeBiz typeBiz;

    @Autowired
    private GoodBiz goodBiz;

    @RequestMapping("/jspFrontIndex")
    public String typeFindAll(HttpServletRequest request){
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        if(types_parents != null)
            request.setAttribute("types_parents",types_parents);
        if(types_singleRoots != null)
            request.setAttribute("types_singleRoots",types_singleRoots);

        List<Good> searchGoods = goodBiz.findAll();
        request.setAttribute("searchGoods",searchGoods);
        return "../jspFront/index";
    }
}
