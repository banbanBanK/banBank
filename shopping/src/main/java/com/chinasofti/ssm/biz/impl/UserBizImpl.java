package com.chinasofti.ssm.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.biz.UserBiz;
import com.chinasofti.ssm.dao.UserDao;
import com.chinasofti.ssm.domain.User;

@Service
public class UserBizImpl implements UserBiz {
	@Autowired
	private UserDao userDao;

	public User findById(Integer Id) {
		// TODO Auto-generated method stub
		return userDao.findById(Id);
	}
	
}
