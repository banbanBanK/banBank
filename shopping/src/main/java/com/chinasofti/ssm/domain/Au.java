package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.Date;

public class Au implements Serializable {
    private Integer id;
    private Integer num;
    private Date day;

    public Au(){
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }
}
