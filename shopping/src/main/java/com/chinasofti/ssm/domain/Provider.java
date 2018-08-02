package com.chinasofti.ssm.domain;

import java.io.Serializable;

public class Provider implements Serializable{
	private Integer Id;
	private String ProviderId;
	private String ProviderName;
	private String ProviderTel;
	private String ProviderPhone;
	private String ProivderEmial;
	private String ProviderZipCode;
	private Integer DeleteStatus;
	private Good good;
	public Provider() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getProviderId() {
		return ProviderId;
	}
	public void setProviderId(String providerId) {
		ProviderId = providerId;
	}
	public String getProviderName() {
		return ProviderName;
	}
	public void setProviderName(String providerName) {
		ProviderName = providerName;
	}
	public String getProviderTel() {
		return ProviderTel;
	}
	public void setProviderTel(String providerTel) {
		ProviderTel = providerTel;
	}
	public String getProviderPhone() {
		return ProviderPhone;
	}
	public void setProviderPhone(String providerPhone) {
		ProviderPhone = providerPhone;
	}
	public String getProivderEmial() {
		return ProivderEmial;
	}
	public void setProivderEmial(String proivderEmial) {
		ProivderEmial = proivderEmial;
	}
	public String getProviderZipCode() {
		return ProviderZipCode;
	}
	public void setProviderZipCode(String providerZipCode) {
		ProviderZipCode = providerZipCode;
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

}