package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.*;
import com.chinasofti.ssm.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CommentController {
    @Autowired
    private CommentBiz commentBiz;
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
    private CustomerBiz customerBiz;

    @RequestMapping("/CommentFindByCreatTime")
    public String commentFindByCreatTime(@RequestParam Timestamp createTime, HttpServletRequest request) {
        List<Comment> comments = commentBiz.findByCreateTime(createTime);

        if (comments != null) {
            request.setAttribute("comments", comments);
            return "info";
        } else
            return "";
    }
    @RequestMapping("/PublishComment")
    public String publishComment(@RequestParam String commentStr, @RequestParam String customerId, @RequestParam int evaluation,@RequestParam int id, @RequestParam String fatherTypeId, HttpServletRequest request) {
        Good good = goodBiz.findById(id);
        ProductDetails productDetails = productDetailsBiz.findByGoodId(good.getGoodId());
        List<Good> recommendGoods = goodBiz.findByChildrenTypeId(good.getType().getTypeId());
        List<Faq> faqs = faqBiz.findByGoodId(good.getGoodId());
        List<Type> types_children = typeBiz.findChildren(fatherTypeId);
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        String mainGoodId = productStyleBiz.findMainByRelationId(good.getGoodId());

        Comment comment = new Comment();
        Customer customer = customerBiz.findByCustomerId(customerId);
        comment.setCustomer(customer);
        comment.setGood(good);
        comment.setComment(commentStr);
        comment.setEvaluation(evaluation);
        comment.setDeleteStatus(1);

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
        request.setAttribute("evaluation",0);

        boolean result = commentBiz.insert(comment);

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

    @RequestMapping("/DeleteComment")
    public String update(@RequestParam Comment comment, HttpServletRequest request) {
        boolean result = commentBiz.update(comment);
        if (result) {
            return "info";
        } else {
            return "";
        }
    }

    @RequestMapping(value = "/showComments")
    public ModelAndView showComments(HttpServletRequest request) {
        request.setAttribute("goodId", "1");
        String goodId = (String) request.getAttribute("goodId");
        List<Comment> list = new ArrayList<Comment>();
        list = commentBiz.findByGoodId(goodId);
        ModelAndView model = new ModelAndView("../jspFront/show-comments");
        model.addObject("list", list);
        return model;
    }
}
