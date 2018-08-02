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
	
	public List<Good> findByName(String goodName) {
		// TODO Auto-generated method stub
		return goodDao.findByName(goodName);
	}

	public List<Good> findByPrice(double goodPrice) {
		return goodDao.findByPrice(goodPrice);
	}

	public List<Good> findByChildrenTypeId(String typeId) {
		return goodDao.findByChildrenTypeId(typeId);
	}

	public List<Good> findByRootTypeId(String typeId) {
		return goodDao.findByRootTypeId(typeId);
	}


	public List<Good> findByProvider(String providerId) {
		// TODO Auto-generated method stub
		return goodDao.findByProvider(providerId);
	}

	public Good findByGoodId(String goodId) {
		// TODO Auto-generated method stub
		return goodDao.findByGoodId(goodId);
	}

	public Good findById(Integer id) {
		// TODO Auto-generated method stub
		return goodDao.findById(id);
	}

	public List<Good> findAll() {
		// TODO Auto-generated method stub
		return goodDao.findAll();
	}

	public boolean insert(Good good) {
		return goodDao.insert(good)==1;
	}

	public boolean delete(Integer id) {
		return goodDao.delete(id)==1;
	}

	public boolean delete(Good good) {
		return goodDao.delete(good)==1;
	}

	public boolean update(Good good) {
		return goodDao.update(good)==1;
	}

}
