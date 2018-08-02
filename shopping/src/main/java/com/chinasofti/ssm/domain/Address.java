package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Address implements Serializable{
	private Integer id;
	private String addressId;
	private String addressName;
	private String addressArea;
	private Integer economicLevel;
	private Integer deleteStatus;
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public String getAddressArea() {
		return addressArea;
	}
	public void setAddressArea(String addressArea) {
		this.addressArea = addressArea;
	}
	public Integer getEconomicLevel() {
		return economicLevel;
	}
	public void setEconomicLevel(Integer economicLevel) {
		this.economicLevel = economicLevel;
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
<<<<<<< HEAD
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
=======
	}
	
	

>>>>>>> 7af4b23398edcfda6ea744208eb027a6a5bac2db
}
