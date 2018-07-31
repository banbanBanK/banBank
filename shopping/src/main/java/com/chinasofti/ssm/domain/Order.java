package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Order implements Serializable{
	private Integer id;
	private double goodPrice;
	private Integer goodNum;
	private Timestamp createTime;
	private Integer deleteStatus;
	private Integer isDone;
	private Customer customer ;
	private Good good ;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public double getGoodPrice() {
		return goodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		this.goodPrice = goodPrice;
	}
	public Integer getGoodNum() {
		return goodNum;
	}
	public void setGoodNum(Integer goodNum) {
		this.goodNum = goodNum;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public Integer getIsDone() {
		return isDone;
	}
	public void setIsDone(Integer isDone) {
		this.isDone = isDone;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	
}
