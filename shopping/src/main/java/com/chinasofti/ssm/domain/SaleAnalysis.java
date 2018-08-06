package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.Date;

public class SaleAnalysis implements Serializable{
    private Integer id;
    private Integer saleSum;
    private Date month;
    private double salePercent;
    private String  goodId;

    public SaleAnalysis(){
        super();
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getMonth() {
        return month;
    }

    public void setMonth(Date month) {
        this.month = month;
    }

    public double getSalePercent() {
        return salePercent;
    }

    public void setSalePercent(double salePercent) {
        this.salePercent = salePercent;
    }

    public Integer getSaleSum() {
        return saleSum;
    }

    public void setSaleSum(Integer saleSum) {
        this.saleSum = saleSum;
    }

    public String getGoodId() {
        return goodId;
    }

    public void setGoodId(String goodId) {
        this.goodId = goodId;
    }
}
