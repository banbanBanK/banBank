package com.chinasofti.ssm.biz;

import java.util.List;
import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.GoodSummary;

public interface GoodBiz {
	List<Good> findByName(String goodName);
	List<Good> findByPrice(double goodPrice);
	List<Good> findByChildrenTypeId(String typeId);
	List<Good> findByRootTypeId(String typeId);
	List<Good> findByProviderId(String providerId);
	List<GoodSummary> findByRootTypeOrdered(String typeId);
	List<GoodSummary> findByChildrenTypeOrdered(String typeId);

	Good findByGoodId(String goodId);
	String findProviderIdByGoodId(String GoodId);
	Good findById(Integer id);
	List<Good> findAll();

	boolean insert(Good good);
	boolean delete(Integer id);
	boolean delete(Good good);
	boolean update(Good good);
}