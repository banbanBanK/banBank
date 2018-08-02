package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Admin implements Serializable {

	private Integer id;
	private String adminId;
	private String adminName;
	private String adminTel;
	private String adminPhone;
	private String adminEmail;
	private String adminPassword;
	private Integer deleteStatus;
	private String  adminTitle;
	private String adminMessage;
	private String adminGender;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminTel() {
		return adminTel;
	}
	public void setAdminTel(String adminTel) {
		this.adminTel = adminTel;
	}
	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public String getAdminTitle() { return adminTitle; }
	public void setAdminTitle(String adminTitle) { this.adminTitle = adminTitle; }
	public String getAdminMessage() { return adminMessage; }
	public void setAdminMessage(String adminMessage) { this.adminMessage = adminMessage; }
	public String getAdminGender() { return adminGender; }
	public void setAdminGender(String adminGender) { this.adminGender = adminGender; }
}
