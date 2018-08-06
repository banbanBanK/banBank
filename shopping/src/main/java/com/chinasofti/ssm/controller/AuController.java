package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.AuBiz;
import com.chinasofti.ssm.domain.Au;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping
public class AuController {
    @Autowired
    private AuBiz auBiz;

    @RequestMapping("/getAu")
    @ResponseBody
    public int[] getAu(){
        int [] viewaction = new int [32];
        for(int i=0; i<31; i++)
            viewaction[i] = 0;

        List<Au> aus = auBiz.findAll();
        for(Au au : aus){
            int day = au.getDay().getDate();
            viewaction[day-1] += au.getNum();
        }
        return viewaction;
    }
}
