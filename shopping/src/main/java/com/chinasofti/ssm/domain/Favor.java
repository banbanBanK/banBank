package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Favor implements Serializable{
	private Integer id;
	private Integer favorLevel;
	private Customer customer ;
	private Type type;
	private Integer deleteStatus;
	public Favor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getFavorLevel() {
		return favorLevel;
	}
	public void setFavorLevel(Integer favorLevel) {
		this.favorLevel = favorLevel;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
}
