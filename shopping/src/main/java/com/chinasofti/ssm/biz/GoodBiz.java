package com.chinasofti.ssm.biz;

import java.util.List;

import com.chinasofti.ssm.domain.Good;

public interface GoodBiz {
	List<Good> findByName(String goodName);
	List<Good> findByPrice(double goodPrice);
	List<Good> findByTypeId(Integer typeId);
	List<Good> findByProvider(Integer providerId);
	Good findByGoodId(String goodId);
	
	Good findById(Integer id);
	List<Good> findAll();

	boolean insert(Good good);
	boolean delete(Integer id);
	boolean delete(Good good);
	boolean update(Good good);
}
