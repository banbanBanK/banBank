package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.domain.Good;

public interface GoodDao extends GenericDao<Good, Integer> {
	List<Good> findByName(String goodName);
	List<Good> findByPrice(double goodPrice);
	List<Good> findByTypeId(Integer typeId);
	List<Good> findByProvider(Integer providerId);
	Good findByGoodId(String goodId);

	int insert(Good good);
	int delete(Integer id);
	int delete(Good good);
	int update(Good good);
}
