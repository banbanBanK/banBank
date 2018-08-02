package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface TypeBiz {
    List<Type> findAll();
    Type findById(Integer Id);
    Type findByTypeId(String TypeId);
    Type findByName(String TypeName);

    boolean insert (Type type);
    boolean update(Type type);
    boolean delete(Integer Id);
}