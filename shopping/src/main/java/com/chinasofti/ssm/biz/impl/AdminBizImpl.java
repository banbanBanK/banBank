package com.chinasofti.ssm.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.dao.AdminDao;
import com.chinasofti.ssm.domain.Admin;
@Service
public class AdminBizImpl implements AdminBiz {

	@Autowired
	private AdminDao adminDao;
	
	public boolean login(String adminId, String adminPassword) {
		Admin admin=null;
		admin=adminDao.findByAdminId(adminId);
		if(admin!=null) {
			String password=admin.getAdminPassword();
			if(password.equals(adminPassword))
				return true;
		}
		return false;
	}

	public Admin findByAdminId(String adminId) {
		return adminDao.findByAdminId(adminId);
	}

	public int insert(Admin admin) {
		return adminDao.insert(admin);
	}

	public int update(Admin admin) {
		return adminDao.update(admin);
	}

	public int delete(String adminId) {
		return adminDao.delete(adminId);
	}

	public int modifypwd(Admin admin) {
		return adminDao.modifypwd(admin);
	}

}
