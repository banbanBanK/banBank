package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Favor implements Serializable{
	private Integer Id;
	private Integer FavorLevel;
	private Customer customer ;
	private Type type;
	public Favor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public Integer getFavorLevel() {
		return FavorLevel;
	}
	public void setFavorLevel(Integer favorLevel) {
		FavorLevel = favorLevel;
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
