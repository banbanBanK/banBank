package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.*;
import com.chinasofti.ssm.domain.*;
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
    private TypeBiz typeBiz;
    @Autowired
    private ProductDetailsBiz productDetailsBiz;
    @Autowired
    private FaqBiz faqBiz;
    @Autowired
    private ProductStyleBiz productStyleBiz;
    @Autowired
    private AdminBiz adminBiz;

    @RequestMapping("/GoodFindAll")
    public String goodFindAll(HttpServletRequest request){
        List<Good> goods = goodBiz.findAll();

        if(goods!=null)
            request.setAttribute("goods",goods);

            return "";
    }
    @RequestMapping("/GoodFindByRootTypeId")
    public String goodFindByRootTypeId(@RequestParam String fatherTypeId, HttpServletRequest request){
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        List<Type> types_children = typeBiz.findChildren(fatherTypeId);
        List<Good> goods = goodBiz.findByRootTypeId(fatherTypeId);

        if(types_children != null)
            request.setAttribute("types_children",types_children);
        if(types_parents != null)
            request.setAttribute("types_parents",types_parents);
        if(types_singleRoots != null)
            request.setAttribute("types_singleRoots",types_singleRoots);
        if(goods != null)
            request.setAttribute("goods",goods);

        return "../jspFront/products";
    }
    @RequestMapping("/GoodFindByChildrenTypeId")
    public String goodFindByChildrenTypeId(@RequestParam String typeId, @RequestParam String fatherTypeId, HttpServletRequest request){
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        List<Type> types_children = typeBiz.findChildren(fatherTypeId);
        List<Good> goods = goodBiz.findByChildrenTypeId(typeId);

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


    @RequestMapping("/GoodDetailsFindById")
    public String goodDetailsFindById(@RequestParam int id, @RequestParam String fatherTypeId,@RequestParam int evaluation, HttpServletRequest request) {
        Good good = goodBiz.findById(id);
        ProductDetails productDetails = productDetailsBiz.findByGoodId(good.getGoodId());
        List<Good> recommendGoods = goodBiz.findByChildrenTypeId(good.getType().getTypeId());
        List<Faq> faqs = faqBiz.findByGoodId(good.getGoodId());
        List<Type> types_children = typeBiz.findChildren(fatherTypeId);
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        String mainGoodId = productStyleBiz.findMainByRelationId(good.getGoodId());

        if(types_children != null)
            request.setAttribute("types_children",types_children);
        if(types_parents != null)
            request.setAttribute("types_parents",types_parents);
        if(types_singleRoots != null)
            request.setAttribute("types_singleRoots",types_singleRoots);

        if (good != null)
            request.setAttribute("good", good);
        if (recommendGoods != null)
            request.setAttribute("recommendGoods", recommendGoods);
        if (productDetails != null)
            request.setAttribute("productDetails", productDetails);
        if(faqs != null)
            request.setAttribute("faqs",faqs);
        if(mainGoodId != null){
            List<ProductStyle> productStyles = productStyleBiz.findByGoodId(mainGoodId);
            request.setAttribute("productStyles",productStyles);
        }
        request.setAttribute("evaluation",evaluation);

        if(good.getType().getFatherTypeId().equals("1"))
            return "../jspFront/product-computer-details";
        if(good.getType().getFatherTypeId().equals("2"))
            return "../jspFront/product-headset-details";
        if(good.getType().getFatherTypeId().equals("3"))
            return "../jspFront/product-camera-details";
        if(good.getType().getFatherTypeId().equals("4"))
            return "../jspFront/product-cellphone-details";
        else return "";
    }

    @RequestMapping("/GetGood")
    public String getGood(HttpServletRequest request){
        List<Good> goods = goodBiz.findAll();
        request.setAttribute("goods",goods);
        //String adminId = request.getParameter("");
        //Admin admin1 = adminBiz.findByAdminId(adminId);
        HttpSession session = request.getSession();
        Admin admin = adminBiz.findByAdminId("1");
        session.setAttribute("admin",admin);
        return "getgood";
    }
}
