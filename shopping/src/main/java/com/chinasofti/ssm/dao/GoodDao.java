package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.domain.Good;

public interface GoodDao extends GenericDao<Good, Integer> {
	List<Good> findByName(String GoodName);
	List<Good> findByPrice(double lowPrice,double highPrice);
	List<Good> findByType(Integer TypeId);
	List<Good> findByProvider(Integer ProviderId);
	Good findByGoodId(String GoodId);
}
