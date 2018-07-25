package com.chinasofti.ssm.domain;

import java.sql.Timestamp;

public class ViewAction {
	private Integer Id;
	private Timestamp ClickTime;
	private Timestamp EndTime;
	private Customer customer;
	private Good good;
	public ViewAction() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public Timestamp getClickTime() {
		return ClickTime;
	}
	public void setClickTime(Timestamp clickTime) {
		ClickTime = clickTime;
	}
	public Timestamp getEndTime() {
		return EndTime;
	}
	public void setEndTime(Timestamp endTime) {
		EndTime = endTime;
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
