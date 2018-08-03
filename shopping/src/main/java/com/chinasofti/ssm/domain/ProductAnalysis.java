package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class ProductAnalysis implements Serializable {
    private Integer id;
    private Integer favornum;
    private Integer commentlevel;
    private Integer salesum;
    private Good good;

    public ProductAnalysis() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFavornum() {
        return favornum;
    }

    public void setFavornum(Integer favornum) {
        this.favornum = favornum;
    }

    public Integer getCommentlevel() {
        return commentlevel;
    }

    public void setCommentlevel(Integer commentlevel) {
        this.commentlevel = commentlevel;
    }

    public Integer getSalesum() {
        return salesum;
    }

    public void setSalesum(Integer salesum) {
        this.salesum = salesum;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }
}
