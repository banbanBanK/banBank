package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.dao.AdminDao;
import com.chinasofti.ssm.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminBizImpl implements AdminBiz {
    @Autowired
    private AdminDao adminDao;

    public Admin findById(Integer Id){
        return adminDao.findById(Id);
    }

    public List<Admin> findAll() {
        List<Admin> findAllList = adminDao.findAll();
        return findAllList;
    }

    public boolean update(Admin admin) {
        return adminDao.update(admin);
    }

    public boolean delete(String AdminId) {
        return adminDao.delete(AdminId);
    }

    public void add(Admin admin) {
        adminDao.add(admin);
    }
}
