package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class ViewAction implements Serializable{
	private Integer id;
	private Timestamp clickTime;
	private Timestamp endTime;
	private Customer customer;
	private Good good;
	public ViewAction() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Timestamp getClickTime() {
		return clickTime;
	}
	public void setClickTime(Timestamp clickTime) {
		this.clickTime = clickTime;
	}
	public Timestamp getEndTime() {
		return endTime;
	}
	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
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
