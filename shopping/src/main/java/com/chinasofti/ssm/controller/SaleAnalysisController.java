package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.CommentAnalysisBiz;
import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.SaleAnalysisBiz;
import com.chinasofti.ssm.domain.CommentAnalysis;
import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.SaleAnalysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SaleAnalysisController {

    @Autowired
    private SaleAnalysisBiz saleAnalysisBiz;
    @Autowired
    private GoodBiz goodBiz;
    @Autowired
    private CommentAnalysisBiz commentAnalysisBiz;

    @RequestMapping("/getNameTop10")
    @ResponseBody
    public String[] getNameTop10(){
        List<SaleAnalysis> sales = saleAnalysisBiz.findTop();
        String [] goodNameTop10 = new String[11];
        for(int i=0; i<10; i++){
            goodNameTop10[i] = "电脑";
        }
        int i = 0;
        for(SaleAnalysis sale : sales){
            if( i < 10) {
                goodNameTop10[i] = goodBiz.findByGoodId( sale.getGoodId() ).getGoodName();
                i++;
            }
            else{
                break;
            }
        }
        return goodNameTop10;
    }

    @RequestMapping("/getGoodComment")
    @ResponseBody
    public double[] getGoodComment(@RequestParam int number){
        double [] goodComment = new double[5];
        for(int i=0; i<5; i++){
            goodComment[i]=0.0;
        }
        List<SaleAnalysis> sales = saleAnalysisBiz.findTop();
        String goodId = sales.get(number-1).getGoodId();
        List<CommentAnalysis> commentAnalyses = commentAnalysisBiz.findByGoodId(goodId);

        for(CommentAnalysis commentAnalysis : commentAnalyses){
            if(commentAnalysis.getCommentLevel() == 1 )
                goodComment[0] = commentAnalysis.getLevelPercent();
            if(commentAnalysis.getCommentLevel() == 2 )
                goodComment[1] = commentAnalysis.getLevelPercent();
            if(commentAnalysis.getCommentLevel() == 3 )
                goodComment[2] = commentAnalysis.getLevelPercent();
            if(commentAnalysis.getCommentLevel() == 4 )
                goodComment[3] = commentAnalysis.getLevelPercent();
            if(commentAnalysis.getCommentLevel() == 5 )
                goodComment[4] = commentAnalysis.getLevelPercent();
        }
        return goodComment;
    }

    @RequestMapping("/getGoodSum")
    @ResponseBody
    public int[] getGoodSale(@RequestParam int number){
        int [] goodSale = new int [8];
        for(int i=0; i<8; i++){
            goodSale[i] =  0;
        }
//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//        String date=sdf.format(time);
//        date.equals("2018-01-01")

        List<SaleAnalysis> sales = saleAnalysisBiz.findTop();   //八月份销量前十的商品的id在此对象内
        String goodId = sales.get(number-1).getGoodId();
        List<SaleAnalysis> saleAnalyses = saleAnalysisBiz.findByGoodId(goodId);
        for(SaleAnalysis saleAnalysis : saleAnalyses){
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            String date=sdf.format(saleAnalysis.getMonth());
            if(date.equals("2018-01-01")){
                goodSale[0] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-02-01")){
                goodSale[1] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-03-01")){
                goodSale[2] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-04-01")) {
                goodSale[3] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-05-01")){
                goodSale[4] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-06-01")){
                goodSale[5] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-07-01")){
                goodSale[6] = saleAnalysis.getSaleSum();
            }
            if(date.equals("2018-08-01")){
                goodSale[7] = saleAnalysis.getSaleSum();
            }
        }
        return goodSale;
    }

    @RequestMapping("/getSalePercent")
    @ResponseBody
    public double[] getSalePercent(@RequestParam int number){
        double [] salePercent = new double[8];
        for(int i=0; i<8; i++){
            salePercent[i] = 0.0;
        }

        List<SaleAnalysis> sales = saleAnalysisBiz.findTop();   //八月份销量前十的商品的id在此对象内
        String goodId = sales.get(number-1).getGoodId();
        List<SaleAnalysis> saleAnalyses = saleAnalysisBiz.findByGoodId(goodId);
        for(SaleAnalysis saleAnalysis : saleAnalyses){
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            String date=sdf.format(saleAnalysis.getMonth());
            if(date.equals("2018-01-01")){
                salePercent[0] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-02-01")){
                salePercent[1] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-03-01")){
                salePercent[2] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-04-01")) {
                salePercent[3] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-05-01")){
                salePercent[4] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-06-01")){
                salePercent[5] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-07-01")){
                salePercent[6] = saleAnalysis.getSalePercent();
            }
            if(date.equals("2018-08-01")){
                salePercent[7] = saleAnalysis.getSalePercent();
            }
        }
        return salePercent;
    }
}
