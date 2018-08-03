package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface TypeDao extends GenericDao<Type, Integer> {
    Type findById(Integer id);
    Type findByTypeId(String typeId);
    List<Type> findByName(String typeName);
    List<Type> findChildren(String fatherTypeId);
    List<Type> findParents();
    List<Type> findSingleRoots();

    int insert (Type type);
    int update(Type type);
    int delete(Integer id);
}
