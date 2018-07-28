package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.domain.User;

public interface UserDao extends GenericDao<User, Integer>{
	List<User> findByName(String UserName);
	User findByEmail(String UserEmail);
}
