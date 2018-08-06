package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.*;
import com.chinasofti.ssm.domain.*;
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

    @Autowired
    private TypeBiz typeBiz;

    @Autowired
    private CustomerBiz customerBiz;

    @Autowired
    private FavorBiz favorBiz;

    @RequestMapping("/OrderFindByCustomer")
    public String orderFindByCustomerId(@RequestParam String customerId, HttpServletRequest request){
        List<Order> orders = orderBiz.findByCustomerId(customerId);
        List<Good> searchGoods = null;
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        if(orders != null){
            request.setAttribute("orders",orders);
            request.setAttribute("types_parents",types_parents);
            request.setAttribute("types_singleRoots",types_singleRoots);
            return "../jspFront/cart";
        }else
            return "../jspFront/cart";
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

    @RequestMapping("/addToCart")
    @ResponseBody
    public boolean addToCart(@RequestParam String customerId,@RequestParam String goodId) {
        List<Order> orders = orderBiz.findByCustomerId(customerId);
        if (orders != null){
            for (Order order : orders) {
                if (order.getGood().getGoodId().equals(goodId)) {
                    Integer goodNum = order.getGoodNum()+1;
                    orderBiz.updateGoodNum(goodNum,customerId, goodId);
                    return false;
                }
            }
        }
        Order orderNew = new Order();
        Customer customer = customerBiz.findByCustomerId(customerId);
        Good good = goodBiz.findByGoodId(goodId);

        if(customer!=null && good != null) {
            orderNew.setCustomer(customer);
            orderNew.setGood(good);
            orderNew.setDeleteStatus(1);
            orderNew.setGoodPrice(good.getGoodPrice());
            orderNew.setGoodNum(1);
            orderNew.setIsDone(0);
            return orderBiz.insert(orderNew);
        }else
            return false;
    }

    @RequestMapping("/SearchByGoodName")
    @ResponseBody
    public String[][] searchByGoodName(@RequestParam String goodName){
        List<Good> goods = goodBiz.findByName(goodName);
        int length = goods.size();
        String [][] goodArray = new String[length][5];
        int i = 0;
        for(Good good : goods){
            goodArray[i][0] = good.getGoodId();
            goodArray[i][1] = good.getGoodName();
            goodArray[i][2] = good.getGoodImage();
            goodArray[i][3] = String.valueOf(good.getGoodPrice());
            goodArray[i][4] = good.getType().getFatherTypeId();
            i++;
        }
        return goodArray;
    }
}
