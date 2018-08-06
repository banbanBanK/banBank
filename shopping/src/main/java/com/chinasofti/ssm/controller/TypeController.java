package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.ProductDetailsBiz;
import com.chinasofti.ssm.biz.TypeBiz;
import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.GoodSummary;
import com.chinasofti.ssm.domain.ProductDetails;
import com.chinasofti.ssm.domain.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TypeController {
    @Autowired
    private TypeBiz typeBiz;
    @Autowired
    private ProductDetailsBiz productDetailsBiz;
    @Autowired
    private GoodBiz goodBiz;

    @RequestMapping("/jspFrontIndex")
    public String typeFindAll(HttpServletRequest request){
        String customerId = (String) request.getSession().getAttribute("customerId");
        List<Type> types_parents = typeBiz.findParents();
        List<Type> types_singleRoots = typeBiz.findSingleRoots();
        if(types_parents != null)
            request.setAttribute("types_parents",types_parents);
        if(types_singleRoots != null)
            request.setAttribute("types_singleRoots",types_singleRoots);
        //新品推荐
        List<ProductDetails> productDetails = productDetailsBiz.findLatest();
        List<Good> latestGoods = new ArrayList<Good>();
        for(int i = 0;i<20 && i < productDetails.size();i++){
            Good good = goodBiz.findByGoodId(productDetails.get(i).getGood().getGoodId());
            latestGoods.add(good);
        }
        request.setAttribute("latestGoods",latestGoods);
        //特色推荐
        List<Good> specialGoods = new ArrayList<Good>();
        List<Type> parents = typeBiz.findAllChildren();
        int maxTypeId=0,minTypeId=100;
        for(int i = 0; i < parents.size();i++){
            int typeId = Integer.parseInt(parents.get(i).getTypeId());
            if(maxTypeId < typeId){
                maxTypeId = typeId;
            }
            if(minTypeId > typeId){
                minTypeId = typeId;
            }
        }
        int typeId1 = (int) (1+Math.random()*(maxTypeId-minTypeId+1)) + minTypeId - 1;
        List<GoodSummary> goodSummaries1 = goodBiz.findByChildrenTypeOrdered(String.valueOf(typeId1));
        for(int i=0;i<goodSummaries1.size()&&i<2;i++){
            Good good = goodBiz.findByGoodId(goodSummaries1.get(i).getGoodId());
            specialGoods.add(good);
        }
        int typeId2 = (typeId1 + 1) % maxTypeId - 1 + minTypeId;
        List<GoodSummary> goodSummaries2 = goodBiz.findByChildrenTypeOrdered(String.valueOf(typeId2));
        for(int i=0;i<goodSummaries2.size()&&i<2;i++){
            Good good = goodBiz.findByGoodId(goodSummaries2.get(i).getGoodId());
            specialGoods.add(good);
        }
        int typeId3 = (typeId2 + 1) % maxTypeId - 1 + minTypeId;
        List<GoodSummary> goodSummaries3 = goodBiz.findByChildrenTypeOrdered(String.valueOf(typeId3));
        for(int i=0;i<goodSummaries3.size()&&i<2;i++){
            Good good = goodBiz.findByGoodId(goodSummaries3.get(i).getGoodId());
            specialGoods.add(good);
        }
        request.setAttribute("specialGoods",specialGoods);

        List<Good> searchGoods = goodBiz.findSerchGoods(customerId);
        request.setAttribute("searchGoods",searchGoods);
        return "../jspFront/index";
    }
}
