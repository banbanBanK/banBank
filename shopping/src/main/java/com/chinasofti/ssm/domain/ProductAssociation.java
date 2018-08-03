package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class ProductAssociation implements Serializable {
    private Integer id;
    private Good good;
    private Good association;

    public ProductAssociation() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }

    public Good getAssociation() {
        return association;
    }

    public void setAssociation(Good association) {
        this.association = association;
    }
}
