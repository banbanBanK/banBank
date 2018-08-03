package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.List;

public class Provider implements Serializable{
	private Integer id;
	private String providerId;
	private String providerName;
	private String providerTel;
	private String providerPhone;
	private String proivderEmial;
	private String providerZipCode;
	private Integer deleteStatus;
	private List<Good> goods;
	public Provider() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProviderId() {
		return providerId;
	}
	public void setProviderId(String providerId) {
		this.providerId = providerId;
	}
	public String getProviderName() {
		return providerName;
	}
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}
	public String getProviderTel() {
		return providerTel;
	}
	public void setProviderTel(String providerTel) {
		this.providerTel = providerTel;
	}
	public String getProviderPhone() {
		return providerPhone;
	}
	public void setProviderPhone(String providerPhone) {
		this.providerPhone = providerPhone;
	}
	public String getProivderEmial() {
		return proivderEmial;
	}
	public void setProivderEmial(String proivderEmial) {
		this.proivderEmial = proivderEmial;
	}
	public String getProviderZipCode() {
		return providerZipCode;
	}
	public void setProviderZipCode(String providerZipCode) {
		this.providerZipCode = providerZipCode;
	}
	public Integer getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public List<Good> getGoods() {
		return goods;
	}
	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}
}
