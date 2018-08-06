package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.AuBiz;
import com.chinasofti.ssm.dao.AuDao;
import com.chinasofti.ssm.domain.Au;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AuBizImpl implements AuBiz {
    @Autowired
    private AuDao auDao;

    public List<Au> findAll() {
        return auDao.findAll();
    }
}
