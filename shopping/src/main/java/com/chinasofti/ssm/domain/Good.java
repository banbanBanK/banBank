package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("serial")
public class Good implements Serializable{
	private Integer Id;
	private String GoodId;
	private String GoodName;
	private double GoodPrice;
	private String GoodImage;
	private Integer GoodStock;
	private Integer GoodSaleSum;
	private Integer DeleteStatus;
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
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getGoodId() {
		return GoodId;
	}
	public void setGoodId(String goodId) {
		GoodId = goodId;
	}
	public String getGoodName() {
		return GoodName;
	}
	public void setGoodName(String goodName) {
		GoodName = goodName;
	}
	public double getGoodPrice() {
		return GoodPrice;
	}
	public void setGoodPrice(double goodPrice) {
		GoodPrice = goodPrice;
	}
	public String getGoodImage() {
		return GoodImage;
	}
	public void setGoodImage(String goodImage) {
		GoodImage = goodImage;
	}
	public Integer getGoodStock() {
		return GoodStock;
	}
	public void setGoodStock(Integer goodStock) {
		GoodStock = goodStock;
	}
	public Integer getGoodSaleSum() {
		return GoodSaleSum;
	}
	public void setGoodSaleSum(Integer goodSaleSum) {
		GoodSaleSum = goodSaleSum;
	}
	public Integer getDeleteStatus() {
		return DeleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		DeleteStatus = deleteStatus;
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
