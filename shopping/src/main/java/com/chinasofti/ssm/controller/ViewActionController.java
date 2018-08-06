package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.ViewActionBiz;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.ViewAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;

@Controller
public class ViewActionController {
    @Autowired
    private ViewActionBiz viewActionBiz;
    @Autowired
    private GoodBiz goodBiz;
    @Autowired
    private CustomerBiz customerBiz;

    @RequestMapping("/InsertViewAction")
    public String goodDetailsFindById(@RequestParam String goodId,@RequestParam String customerId,@RequestParam String clickTime,@RequestParam String endTime){
        ViewAction viewAction = new ViewAction();
        Good good = goodBiz.findByGoodId(goodId);
        Customer customer = customerBiz.findByCustomerId(customerId);
        viewAction.setGood(good);
        viewAction.setCustomer(customer);
        viewAction.setClickTime(Timestamp.valueOf(clickTime));
        viewAction.setEndTime(Timestamp.valueOf(endTime));
        viewActionBiz.insert(viewAction);
        System.out.println("clicktime:"+clickTime);

        return "../jspFront/test";
    }
}
