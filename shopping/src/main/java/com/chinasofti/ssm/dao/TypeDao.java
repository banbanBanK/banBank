package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface TypeDao extends GenericDao<Type, Integer> {
    List<Type> findAll();
    Type findById(Integer Id);
    Type findByTypeId(String TypeId);
    Type findByName(String TypeName);

    int insert (Type type);
    int update(Type type);
    int delete(Integer Id);
}
