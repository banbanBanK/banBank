package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Admin;

public interface AdminDao extends GenericDao<Admin, Integer> {
    /*findById 和 findAll都已在GenericDao中声明*/
    boolean update(Admin admin);   //进行密码修改之类的更新
    boolean delete(String AdminId); //可能存在的删除管理员行为(在该系统应该不存在)
    void add(Admin admin);          //可能存在的增加管理员行为
}
