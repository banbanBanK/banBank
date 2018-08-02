package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.TypeBiz;
import com.chinasofti.ssm.dao.TypeDao;
import com.chinasofti.ssm.domain.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TypeBizImpl implements TypeBiz {
    @Autowired
    private TypeDao typeDao;

    public List<Type> findAll() {
        return typeDao.findAll();
    }

    public Type findById(Integer Id) {
        return typeDao.findById(Id);
    }

    public Type findByTypeId(String TypeId) {
        return typeDao.findByTypeId(TypeId);
    }

    public Type findByName(String TypeName) {
        return typeDao.findByName(TypeName);
    }

    public boolean insert(Type type) {
        return typeDao.insert(type)==1;
    }

    public boolean update(Type type) {
        return typeDao.update(type)==1;
    }

    public boolean delete(Integer Id) {
        return typeDao.delete(Id)==1;
    }
}