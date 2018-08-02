package com.chinasofti.ssm.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Type implements Serializable{
	private Integer Id;
	private String TypeId;
	private String TypeName;
	private Set<Favor> favors = new HashSet<Favor>();
	public Type() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getTypeId() {
		return TypeId;
	}
	public void setTypeId(String typeId) {
		TypeId = typeId;
	}
	public String getTypeName() {
		return TypeName;
	}
	public void setTypeName(String typeName) {
		TypeName = typeName;
	}
	public Set<Favor> getFavors() {
		return favors;
	}
	public void setFavors(Set<Favor> favors) {
		this.favors = favors;
	}

}