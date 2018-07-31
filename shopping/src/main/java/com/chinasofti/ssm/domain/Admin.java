package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Admin implements Serializable{
	private Integer Id;
	private String  AdminId;
	private String  AdminName;
	private Integer AdminGender;
	private String  AdminTel;
	private String  AdminPhone;
	private String  AdminEmail;
	private String  AdminPassword;
	private Integer DeleteStatus;
	private String  AdminMessage;
	private String  AdminTitle;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getAdminId() {
		return AdminId;
	}
	public void setAdminId(String adminId) {
		AdminId = adminId;
	}
	public Integer getAdminGender() {
		return AdminGender;
	}
	public void setAdminGender(Integer adminGender) {
		AdminGender = adminGender;
	}
	public String getAdminName() {
		return AdminName;
	}
	public void setAdminName(String adminName) {
		AdminName = adminName;
	}
	public String getAdminTel() {
		return AdminTel;
	}
	public void setAdminTel(String adminTel) {
		AdminTel = adminTel;
	}
	public String getAdminPhone() {
		return AdminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		AdminPhone = adminPhone;
	}
	public String getAdminEmail() {
		return AdminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		AdminEmail = adminEmail;
	}
	public String getAdminPassword() {
		return AdminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		AdminPassword = adminPassword;
	}
	public Integer getDeleteStatus() {
		return DeleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		DeleteStatus = deleteStatus;
	}
	public String getAdminMessage() {
		return AdminMessage;
	}
	public void setAdminMessage(String adminMessage) {
		AdminMessage = adminMessage;
	}
	public String getAdminTitle() { return AdminTitle; }
	public void setAdminTitle(String adminTitle) { AdminTitle = adminTitle; }
}
