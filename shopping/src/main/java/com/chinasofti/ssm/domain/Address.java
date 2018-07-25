package com.chinasofti.ssm.domain;

public class Address {
	private Integer Id;
	private String  AddressId;
	private String 	AddressName;
	private String 	AddressArea;
	private Integer EconomicLevel;
	private Integer DeleteStatus;
	private Customer customer;	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Integer getIdInteger() {
		return Id;
	}
	public void setIdInteger(Integer id) {
		this.Id = id;
	}
	public String getAddressId() {
		return AddressId;
	}
	public void setAddressId(String addressId) {
		AddressId = addressId;
	}
	public String getAddressName() {
		return AddressName;
	}
	public void setAddressName(String addressName) {
		AddressName = addressName;
	}
	public String getAddressArea() {
		return AddressArea;
	}
	public void setAddressArea(String addressArea) {
		AddressArea = addressArea;
	}
	public Integer getEconomicLevel() {
		return EconomicLevel;
	}
	public void setEconomicLevel(Integer economicLevel) {
		EconomicLevel = economicLevel;
	}
	public Integer getDeleteStatus() {
		return DeleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		DeleteStatus = deleteStatus;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
}
