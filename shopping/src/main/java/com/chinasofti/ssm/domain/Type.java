package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Type implements Serializable{
	private Integer id;
	private String typeId;
	private String typeName;
	private String fatherTypeId;
	private Set<Favor> favors = new HashSet<Favor>();
	public Type() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypeId() {
		return typeId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Set<Favor> getFavors() {
		return favors;
	}
	public void setFavors(Set<Favor> favors) {
		this.favors = favors;
	}
	public String getFatherTypeId() {
		return fatherTypeId;
	}
	public void setFatherTypeId(String fatherId) {
		this.fatherTypeId = fatherId;
	}
}
