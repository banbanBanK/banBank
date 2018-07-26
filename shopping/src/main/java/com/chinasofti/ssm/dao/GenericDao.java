package com.chinasofti.ssm.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<Entity extends Serializable, ID extends Object> {
	Entity findById(ID id);
	List<Entity> findAll();
}
