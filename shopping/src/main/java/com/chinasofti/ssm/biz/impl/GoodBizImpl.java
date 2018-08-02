package com.chinasofti.ssm.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.dao.GoodDao;
import com.chinasofti.ssm.domain.Good;
@Service
public class GoodBizImpl implements GoodBiz {

	@Autowired
	private GoodDao goodDao;

	public List<Good> findByName(String GoodName) {
		// TODO Auto-generated method stub
		return goodDao.findByName(GoodName);
	}

	public List<Good> findByPrice(double GoodPrice) {
		return goodDao.findByPrice(GoodPrice);
	}


	public List<Good> findByType(Integer TypeId) {
		// TODO Auto-generated method stub
		return goodDao.findByType(TypeId);
	}

	public List<Good> findByProviderId(String ProviderId) {
		// TODO Auto-generated method stub
		return goodDao.findByProviderId(ProviderId);
	}

	public Good findByGoodId(String GoodId) {
		// TODO Auto-generated method stub
		return goodDao.findByGoodId(GoodId);
	}

	public String findProviderIdByGoodId(String GoodId) {
		return goodDao.findProviderIdByGoodId(GoodId);
	}

	public Good findById(Integer Id) {
		// TODO Auto-generated method stub
		return goodDao.findById(Id);
	}

	public List<Good> findAll() {
		// TODO Auto-generated method stub
		return goodDao.findAll();
	}

	public boolean insert(Good good) {
		return goodDao.insert(good)==1;
	}

	public boolean delete(Integer Id) {
		return goodDao.delete(Id)==1;
	}

	public boolean delete(Good good) {
		return goodDao.delete(good)==1;
	}

	public boolean update(Good good) {
		return goodDao.update(good)==1;
	}

}