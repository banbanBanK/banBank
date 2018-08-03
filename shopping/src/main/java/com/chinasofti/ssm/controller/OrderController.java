package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.OrderBiz;
import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderBiz orderBiz;

    @Autowired
    private GoodBiz goodBiz;

    @RequestMapping("/OrderFindByCustomer")
    public String orderFindByCustomerId(@RequestParam String customerId, HttpServletRequest request){
        List<Order> orders = orderBiz.findByCustomerId(customerId);
        List<Good> goods = goodBiz.findAll();
        if(orders != null){
            request.setAttribute("orders",orders);
            request.setAttribute("goods",goods);
            return "../jspFront/cart";
        }else
            return "";
    }
    @RequestMapping("/InsertOrder")
    public String insert(@RequestParam Order order, HttpServletRequest request) {
        boolean result = orderBiz.insert(order);
        if (result) {
            return "info";
        }
        else {
            return "";
        }
    }
    @RequestMapping("/UpdateOrder")
    public String update(@RequestParam Order order, HttpServletRequest request) {
        boolean result = orderBiz.insert(order);
        if (result) {
            return "info";
        }
        else {
            return "";
        }
    }
    @RequestMapping("/DeleteOrder")
    @ResponseBody
    public boolean delete(@RequestParam int id, HttpServletRequest request) {
        return orderBiz.delete(id);
    }

    @RequestMapping("/doneOrder")
    @ResponseBody
    public boolean doneOrder(@RequestParam String customerId,HttpServletRequest request) {
        return orderBiz.doneOrder(customerId);
    }

    @RequestMapping("/SearchByGoodName")
    @ResponseBody
    public String[][] searchByGoodName(@RequestParam String goodName){
        List<Good> goods = goodBiz.findByName(goodName);
        int length = goods.size();
        String [][] goodArray = new String[length][4];
        int i = 0;
        for(Good good : goods){
            goodArray[i][0] = good.getGoodId();
            goodArray[i][1] = good.getGoodName();
            goodArray[i][2] = good.getGoodImage();
            goodArray[i][3] = String.valueOf(good.getGoodPrice());
            i++;
        }
        return goodArray;
    }
}
