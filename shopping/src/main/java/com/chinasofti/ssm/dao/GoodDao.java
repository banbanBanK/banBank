package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.domain.Good;

public interface GoodDao extends GenericDao<Good, Integer> {
	List<Good> findByName(String GoodName);
	List<Good> findByPrice(double GoodPrice);
	List<Good> findByType(Integer TypeId);
	List<Good> findByProvider(Integer ProviderId);
	Good findByGoodId(String GoodId);

	int insert(Good good);
	int delete(Integer Id);
	int delete(Good good);
	int update(Good good);
}
