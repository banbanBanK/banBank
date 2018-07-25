package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Order implements Serializable{
	private Integer Id;
	private double GoodPrice;
	private Integer GoodNum;
	private Timestamp CreateTime;
	private Integer DeleteStatus;
	private Integer IsDone;
	private Customer customer ;
	private Good good ;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		this.Id = id;
	}
	public double getGoodPrice() {
		return GoodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		GoodPrice = goodPrice;
	}
	public Integer getGoodNum() {
		return GoodNum;
	}
	public void setGoodNum(Integer goodNum) {
		GoodNum = goodNum;
	}
	public Timestamp getCreateTime() {
		return CreateTime;
	}
	public void setCreateTime(Timestamp createTime) {
		CreateTime = createTime;
	}
	public Integer getDeleteStatus() {
		return DeleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		DeleteStatus = deleteStatus;
	}
	public Integer getIsDone() {
		return IsDone;
	}
	public void setIsDone(Integer isDone) {
		IsDone = isDone;
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
