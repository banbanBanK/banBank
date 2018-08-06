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

    @Override
    public List<Type> findAllChildren() {
        return typeDao.findAllChildren();
    }

    public Type findById(Integer id) {
        return typeDao.findById(id);
    }

    public Type findByTypeId(String typeId) {
        return typeDao.findByTypeId(typeId);
    }

    public List<Type> findByName(String typeName) {
        return typeDao.findByName(typeName);
    }

    public List<Type> findChildren(String fatherTypeId) {
        return typeDao.findChildren(fatherTypeId);
    }

    public List<Type> findParents() {
        return typeDao.findParents();
    }

    public List<Type> findSingleRoots() {
        return typeDao.findSingleRoots();
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