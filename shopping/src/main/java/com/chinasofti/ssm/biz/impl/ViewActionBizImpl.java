package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.ViewActionBiz;
import com.chinasofti.ssm.dao.ViewActionDao;
import com.chinasofti.ssm.domain.ViewAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ViewActionBizImpl implements ViewActionBiz {
    @Autowired
    private ViewActionDao viewActionDao;

    public List<ViewAction> findAll() {
        return viewActionDao.findAll();
    }

    public ViewAction findById(Integer id) {
        return viewActionDao.findById(id);
    }

    public boolean insert(ViewAction viewAction) {
        int result = 0;
        result = viewActionDao.insert(viewAction);
        if(result > 0) return true;
        else return false;
    }
}
