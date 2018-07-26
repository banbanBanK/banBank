package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Card implements Serializable{
	private Integer Id;
	private String  CardId;
	private double  Account;
	private Integer DeleteStatus;
	private Customer customer;
	public Card() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getCardId() {
		return CardId;
	}
	public void setCardId(String cardId) {
		CardId = cardId;
	}
	public double getAccount() {
		return Account;
	}
	public void setAccount(double account) {
		Account = account;
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
