package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.aspectj.weaver.ast.Or;

public class Customer implements Serializable{
	private Integer Id;
	private String  CustomerId;
	private String  CustomerName;
	private String CustomerGender;
	private Integer CustomerAge;
	private String  CustomerTel;
	private String  CustomerPhone;
	private String  CustomerZipCode;
	private String  CustomerPassword;
	private String  CustomerIdCard;
	private String  CustomerBirthday;
	private Integer DeleteStatus;
	private Address address;
	private Set<ViewAction>viewActions = new HashSet<ViewAction>();
	private Set<Order> orders = new HashSet<Order>();
	private Set<Favor> favors = new HashSet<Favor>();
	private Set<Comment> comments = new HashSet<Comment>();
	private Set<Card> cards = new HashSet<Card>();
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getCustomerId() {
		return CustomerId;
	}
	public void setCustomerId(String customerId) {
		CustomerId = customerId;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public String getCustomerGender() {
		return CustomerGender;
	}
	public void setCustomerGender(String customerGender) {
		CustomerGender = customerGender;
	}
	public Integer getCustomerAge() {
		return CustomerAge;
	}
	public void setCustomerAge(Integer customerAge) {
		CustomerAge = customerAge;
	}
	public String getCustomerTel() {
		return CustomerTel;
	}
	public void setCustomerTel(String customerTel) {
		CustomerTel = customerTel;
	}
	public String getCustomerPhone() {
		return CustomerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		CustomerPhone = customerPhone;
	}
	public String getCustomerZipCode() {
		return CustomerZipCode;
	}
	public void setCustomerZipCode(String customerZipCode) {
		CustomerZipCode = customerZipCode;
	}
	public String getCustomerPassword() {
		return CustomerPassword;
	}
	public void setCustomerPassword(String customerPassword) {
		CustomerPassword = customerPassword;
	}
	public String getCustomerIdCard() {
		return CustomerIdCard;
	}
	public void setCustomerIdCard(String customerIdCard) {
		CustomerIdCard = customerIdCard;
	}
	public String getCustomerBirthday() {
		return CustomerBirthday;
	}
	public void setCustomerBirthday(String customerBirthday) {
		CustomerBirthday = customerBirthday;
	}
	public Integer getDeleteStatus() {
		return DeleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		DeleteStatus = deleteStatus;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Set<Card> getCards() {
		return cards;
	}
	public void setCards(Set<Card> cards) {
		this.cards = cards;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	public Set<Favor> getFavors() {
		return favors;
	}
	public void setFavors(Set<Favor> favors) {
		this.favors = favors;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public Set<ViewAction> getViewActions() {
		return viewActions;
	}
	public void setViewActions(Set<ViewAction> viewActions) {
		this.viewActions = viewActions;
	}
}
