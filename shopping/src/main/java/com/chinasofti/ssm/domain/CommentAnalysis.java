package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class CommentAnalysis implements Serializable {
    private Integer id;
    private String goodId;
    private Integer commentLevel;
    private double levelPercent;

    public CommentAnalysis(){
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodId() {
        return goodId;
    }

    public void setGoodId(String goodId) {
        this.goodId = goodId;
    }

    public Integer getCommentLevel() {
        return commentLevel;
    }

    public void setCommentLevel(Integer commentLevel) {
        this.commentLevel = commentLevel;
    }

    public double getLevelPercent() {
        return levelPercent;
    }

    public void setLevelPercent(double levelPercent) {
        this.levelPercent = levelPercent;
    }
}
