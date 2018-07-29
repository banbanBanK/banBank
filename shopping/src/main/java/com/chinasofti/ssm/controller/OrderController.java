package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.OrderBiz;
import com.chinasofti.ssm.domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderBiz orderBiz;

    @RequestMapping("/OrderFindByCustomer")
    public String orderFindByCustomerId(@RequestParam String customerId, HttpServletRequest request){
        List<Order> orders = orderBiz.findByCustomerId(customerId);

        if(orders != null){
            request.setAttribute("orders",orders);
            return "info";
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
    public String delete(@RequestParam int id, HttpServletRequest request) {
        boolean result = orderBiz.delete(id);
        if (result) {
            return "info";
        }
        else {
            return "";
        }
    }
}
