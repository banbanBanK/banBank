package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("serial")
public class Good implements Serializable{
	private Integer id;
	private String goodId;
	private String goodName;
	private double goodPrice;
	private String goodImage;
	private Integer goodStock;
	private Integer goodSaleSum;
	private Integer deleteStatus;
	private Set<Comment> comments = new HashSet<Comment>();
	private Type type;
	private Provider provider;
	private Set<ViewAction >viewActions = new HashSet<ViewAction>();
	private Set<Order> orders = new HashSet<Order>();
	public Good() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoodId() {
		return goodId;
	}
	public void setGoodId(String goodId) {
		this.goodId = goodId;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public double getGoodPrice() {
		return goodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		this.goodPrice = goodPrice;
	}
	public String getGoodImage() {
		return goodImage;
	}
	public void setGoodImage(String goodImage) {
		this.goodImage = goodImage;
	}
	public Integer getGoodStock() {
		return goodStock;
	}
	public void setGoodStock(Integer goodStock) {
		this.goodStock = goodStock;
	}
	public Integer getGoodSaleSum() {
		return goodSaleSum;
	}
	public void setGoodSaleSum(Integer goodSaleSum) {
		this.goodSaleSum = goodSaleSum;
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Provider getProvider() {
		return provider;
	}
	public void setProvider(Provider provider) {
		this.provider = provider;
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