package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.CommentBiz;
import com.chinasofti.ssm.domain.Comment;
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

    @RequestMapping("/CommentFindByCreatTime")
    public String commentFindByCreatTime(@RequestParam Timestamp createTime, HttpServletRequest request) {
        List<Comment> comments = commentBiz.findByCreateTime(createTime);

        if (comments != null) {
            request.setAttribute("comments", comments);
            return "info";
        } else
            return "";
    }

    @RequestMapping("/InsertComment")
    public String insert(@RequestParam Comment comment, HttpServletRequest request) {
        boolean result = commentBiz.insert(comment);
        if (result) {
            return "info";
        } else {
            return "";
        }
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
