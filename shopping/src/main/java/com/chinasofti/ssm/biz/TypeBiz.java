package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface TypeBiz {
    List<Type> findAll();
    Type findById(Integer id);
    Type findByTypeId(String typeId);
    List<Type> findByName(String typeName);
    List<Type> findChildren(String fatherTypeId);
    List<Type> findParents();
    List<Type> findSingleRoots();

    boolean insert (Type type);
    boolean update(Type type);
    boolean delete(Integer id);
}
