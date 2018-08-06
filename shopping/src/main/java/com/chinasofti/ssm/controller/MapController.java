package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.AddressBiz;
import com.chinasofti.ssm.biz.MapBiz;
import com.chinasofti.ssm.domain.Address;
import com.chinasofti.ssm.domain.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MapController {

    @Autowired
    private MapBiz mapBiz;
    @Autowired
    private AddressBiz addressBiz;

    @RequestMapping("/getMapData")
    @ResponseBody
    public int[] getMapData(){
        List<Map> maps = mapBiz.findAll();
        int[] result = new int[35];
        for(int i=0; i<34; i++){
            result[i]=0;
        }
        int i=0;
        for(Map map : maps){
            result[i] = map.getNum();
            i++;
        }
        return result;
    }
}
