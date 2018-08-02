package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Admin;

public interface AdminBiz {

	public boolean login(String adminId, String adminPassword);
	public Admin findByAdminId(String adminId);
	public int insert(Admin admin);
	public int update(Admin admin);
	public int delete(String adminId);
	public int modifypwd(Admin admin);
}
