package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.FavorBiz;
import com.chinasofti.ssm.dao.FavorDao;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FavorBizImpl implements FavorBiz {
    @Autowired
    private FavorDao favorDao;
    public List<Favor> findAll() {
        return favorDao.findAll();
    }

    public Favor findById(Integer Id) {
        return favorDao.findById(Id);
    }

    public List<Favor> findByCustomerId(String customerId) {
        return favorDao.findByCustomerId(customerId);
    }

    public List<Favor> findByTypeId(String typeId) {
        return favorDao.findByTypeId(typeId);
    }

    public List<Favor> findByLevel(Integer level) {
        return favorDao.findByLevel(level);
    }

    public boolean insert(Favor favor) {
        int result = 0;
        result = favorDao.insert(favor);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(Favor favor) {
        int result = 0;
        result = favorDao.update(favor);
        if(result > 0) return true;
        else return false;
    }

    public boolean deleteById(int id) {
        int result = 0;
        result = favorDao.deleteById(id);
        if(result > 0) return true;
        else return false;
    }
}
