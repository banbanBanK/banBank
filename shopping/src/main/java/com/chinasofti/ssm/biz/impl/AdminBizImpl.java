package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.dao.AdminDao;
import com.chinasofti.ssm.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminBizImpl implements AdminBiz {
    @Autowired
    private AdminDao adminDao;

    public Admin findById(Integer Id){
        return adminDao.findById(Id);
    }
}
