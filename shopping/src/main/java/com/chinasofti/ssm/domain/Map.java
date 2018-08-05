package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Map implements Serializable {
    private Integer id;
    private String adressId;
    private Integer num;

    public Map() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdressId() {
        return adressId;
    }

    public void setAdressId(String addressId) {
        this.adressId = addressId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
