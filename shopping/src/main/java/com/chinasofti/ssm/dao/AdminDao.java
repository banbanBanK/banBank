package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Admin;
import com.chinasofti.ssm.domain.Customer;

public interface AdminDao extends GenericDao<Admin, Integer>{

	public Admin findByAdminId(String AdminId);
	public int insert(Admin admin);
	public int update(Admin admin);
	public int delete(String AdminId);
	public int modifypwd(Admin admin);
}
