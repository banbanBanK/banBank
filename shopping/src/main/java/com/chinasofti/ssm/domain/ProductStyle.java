package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class ProductStyle implements Serializable {
    private Integer id;
    private Integer deleteStatus;
    private String color;
    private Good good;
    private Good relation;
    private String relatedColor;
    private int relationPlace;

    public ProductStyle() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(Integer deleteStatus) {
        this.deleteStatus = deleteStatus;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }

    public Good getRelation() {
        return relation;
    }

    public void setRelation(Good relation) {
        this.relation = relation;
    }

    public String getRelatedColor() {
        return relatedColor;
    }

    public void setRelatedColor(String relatedColor) {
        this.relatedColor = relatedColor;
    }

    public int getRelationPlace() {
        return relationPlace;
    }

    public void setRelationPlace(int relationPlace) {
        this.relationPlace = relationPlace;
    }
}
