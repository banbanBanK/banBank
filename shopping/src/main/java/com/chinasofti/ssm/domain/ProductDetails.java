package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class ProductDetails implements Serializable {
    private Integer id;
    private String review;
    private String weight;
    private String productPosition;
    private String productType;
    private String timeToMarket;
    private String cpu;
    private String ram;
    private String hardDisk;
    private String screenSize;
    private String graphicsCard;
    private String packingList;
    private Good good;

    public ProductDetails() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getProductPosition() {
        return productPosition;
    }

    public void setProductPosition(String productPosition) {
        this.productPosition = productPosition;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getTimeToMarket() {
        return timeToMarket;
    }

    public void setTimeToMarket(String timeToMarket) {
        this.timeToMarket = timeToMarket;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getHardDisk() {
        return hardDisk;
    }

    public void setHardDisk(String hardDisk) {
        this.hardDisk = hardDisk;
    }

    public String getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(String screenSize) {
        this.screenSize = screenSize;
    }

    public String getGraphicsCard() {
        return graphicsCard;
    }

    public void setGraphicsCard(String graphicsCard) {
        this.graphicsCard = graphicsCard;
    }

    public String getPackingList() {
        return packingList;
    }

    public void setPackingList(String packingList) {
        this.packingList = packingList;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }
}
