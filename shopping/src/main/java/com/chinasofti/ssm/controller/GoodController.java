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

import static java.lang.Integer.parseInt;

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

    @RequestMapping("/look")
    public String lookgood(@RequestParam String goodId, HttpServletRequest request){
        HttpSession session = request.getSession();
        Good good = goodBiz.findByGoodId(goodId);
        session.setAttribute("goodName",good.getGoodName());
        session.setAttribute("goodPrice",good.getGoodPrice());
        session.setAttribute("goodStock",good.getGoodStock());
        session.setAttribute("goodSaleNum",good.getGoodSaleSum());
        session.setAttribute("goodType",good.getType().getTypeName());
        session.setAttribute("goodProvider",good.getProvider().getProviderName());
        return "look";
    }

    @RequestMapping("/get")
    public String get(HttpServletRequest request){
        return "get";
    }

    @RequestMapping("/getmore")
    public String getgood( HttpServletRequest request) {
        Good goodmom = goodBiz.findByGoodId((String)request.getSession().getAttribute("getGet"));
        int num =parseInt(request.getParameter("goodnum"));
        goodmom.setGoodStock(goodmom.getGoodStock()+num);
        goodBiz.update(goodmom);
        return "get";
    }
}
