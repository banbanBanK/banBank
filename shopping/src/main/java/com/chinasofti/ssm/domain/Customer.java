package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.aspectj.weaver.ast.Or;

public class Customer implements Serializable{
	private Integer id;
	private String  customerId;
	private String  customerName;
	private String customerGender;
	private Integer customerAge;
	private String  customerTel;
	private String  customerPhone;
	private String  customerZipCode;
	private String  customerPassword;
	private String  customerIdCard;
	private String  customerBirthday;
	private Integer deleteStatus;
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
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerGender() {
		return customerGender;
	}
	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}
	public Integer getCustomerAge() {
		return customerAge;
	}
	public void setCustomerAge(Integer customerAge) {
		this.customerAge = customerAge;
	}
	public String getCustomerTel() {
		return customerTel;
	}
	public void setCustomerTel(String customerTel) {
		this.customerTel = customerTel;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerZipCode() {
		return customerZipCode;
	}
	public void setCustomerZipCode(String customerZipCode) {
		this.customerZipCode = customerZipCode;
	}
	public String getCustomerPassword() {
		return customerPassword;
	}
	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}
	public String getCustomerIdCard() {
		return customerIdCard;
	}
	public void setCustomerIdCard(String customerIdCard) {
		this.customerIdCard = customerIdCard;
	}
	public String getCustomerBirthday() {
		return customerBirthday;
	}
	public void setCustomerBirthday(String customerBirthday) {
		this.customerBirthday = customerBirthday;
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
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
