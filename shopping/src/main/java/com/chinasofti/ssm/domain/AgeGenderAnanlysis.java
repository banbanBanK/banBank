package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class AgeGenderAnanlysis implements Serializable {
    private Integer id;
    private Integer age;
    private String  gender;
    private Integer num;

    public AgeGenderAnanlysis(){
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
