package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Comment implements Serializable{
	private Integer   Id;
	private String    Comment;
	private Integer   Evaluation;
	private Timestamp CreateTime;
	private Integer   DeleteStatus;
	private Good      good;
	private Customer  customer;
	
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String comment) {
		Comment = comment;
	}
	public Integer getEvaluation() {
		return Evaluation;
	}
	public void setEvaluation(Integer evaluation) {
		Evaluation = evaluation;
	}
	public Timestamp getCreateTime() {
		return CreateTime;
	}
	public void setCreateTime(Timestamp createTime) {
		CreateTime = createTime;
	}
	public Integer getDeleteStatus() {
		return DeleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		DeleteStatus = deleteStatus;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
}
