package com.chinasofti.ssm.biz;

import java.util.List;

import com.chinasofti.ssm.domain.Good;

public interface GoodBiz {
	List<Good> findByName(String GoodName);
	List<Good> findByPrice(double GoodPrice);
	List<Good> findByType(Integer TypeId);
	List<Good> findByProvider(Integer ProviderId);
	Good findByGoodId(String GoodId);
	
	Good findById(Integer Id);
	List<Good> findAll();

	boolean insert(Good good);
	boolean delete(Integer Id);
	boolean delete(Good good);
	boolean update(Good good);
}
