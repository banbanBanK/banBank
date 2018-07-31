package com.chinasofti.ssm.biz;

import java.util.List;

import com.chinasofti.ssm.domain.Good;

public interface GoodBiz {
	List<Good> findByName(String GoodName);
	List<Good> findByPrice(double lowPrice,double highPrice);
	List<Good> findByType(Integer TypeId);
	List<Good> findByProvider(Integer ProviderId);
	Good findByGoodId(String GoodId);
	
	Good findById(Integer Id);
	List<Good> findAll();
}
