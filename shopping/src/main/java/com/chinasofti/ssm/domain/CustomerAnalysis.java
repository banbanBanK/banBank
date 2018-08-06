package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class CustomerAnalysis implements Serializable {
    private int browseTime;
    private int browseNum;
    private int buySum;
    private int buyNum;
    private Good good;
    private Customer customer;

    public CustomerAnalysis() {
        super();
    }

    public int getBrowseTime() {
        return browseTime;
    }

    public void setBrowseTime(int browseTime) {
        this.browseTime = browseTime;
    }

    public int getBrowseNum() {
        return browseNum;
    }

    public void setBrowseNum(int browseNum) {
        this.browseNum = browseNum;
    }

    public int getBuySum() {
        return buySum;
    }

    public void setBuySum(int buySum) {
        this.buySum = buySum;
    }

    public int getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(int buyNum) {
        this.buyNum = buyNum;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
