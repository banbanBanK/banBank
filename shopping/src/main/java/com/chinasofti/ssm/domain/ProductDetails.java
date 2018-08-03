package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductDetails implements Serializable {
    private Integer id;
    private String review;
    private String weight;
    private String productPosition;
    private String productType;
    private String timeToMarket;
    private String packingList;
    private String cpu;
    private String ram;
    private String hardDisk;
    private String screenType;
    private String screenSize;
    private String battery;
    private String resolution;
    private String graphicsCard;
    private String adorn;
    private String microphone;
    private String sensitivity;
    private String earphoneFeature;
    private String sensorType;
    private String sensorSize;
    private String pixel;
    private String os;
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

    public String getScreenType() {
        return screenType;
    }

    public void setScreenType(String screenType) {
        this.screenType = screenType;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public String getAdorn() {
        return adorn;
    }

    public void setAdorn(String adorn) {
        this.adorn = adorn;
    }

    public String getMicrophone() {
        return microphone;
    }

    public void setMicrophone(String microphone) {
        this.microphone = microphone;
    }

    public String getSensitivity() {
        return sensitivity;
    }

    public void setSensitivity(String sensitivity) {
        this.sensitivity = sensitivity;
    }

    public String getEarphoneFeature() {
        return earphoneFeature;
    }

    public void setEarphoneFeature(String earphoneFeature) {
        this.earphoneFeature = earphoneFeature;
    }

    public String getSensorType() {
        return sensorType;
    }

    public void setSensorType(String sensorType) {
        this.sensorType = sensorType;
    }

    public String getSensorSize() {
        return sensorSize;
    }

    public void setSensorSize(String sensorSize) {
        this.sensorSize = sensorSize;
    }

    public String getPixel() {
        return pixel;
    }

    public void setPixel(String pixel) {
        this.pixel = pixel;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }
}
