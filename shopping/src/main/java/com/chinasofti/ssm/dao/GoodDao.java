package com.chinasofti.ssm.dao;

import java.util.List;

		import com.chinasofti.ssm.domain.Good;
import com.chinasofti.ssm.domain.GoodSummary;

public interface GoodDao extends GenericDao<Good, Integer> {
	List<Good> findByName(String goodName);
	List<Good> findByPrice(double goodPrice);
	List<Good> findByChildrenTypeId(String typeId);
	List<Good> findByRootTypeId(String typeId);
	List<Good> findByProviderId(String providerId);
	List<GoodSummary> findByRootTypeOrdered(String typeId);
	List<GoodSummary> findByChildrenTypeOrdered(String typeId);

	String findProviderIdByGoodId(String goodId);
	Good findByGoodId(String goodId);

	int insert(Good good);
	int delete(Integer id);
	int delete(Good good);
	int update(Good good);
}