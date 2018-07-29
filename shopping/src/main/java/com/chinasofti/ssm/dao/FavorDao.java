package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface FavorDao extends GenericDao<Favor, Integer> {
    public List<Favor> findByCustomerId(String customerId);
    public List<Favor> findByTypeId(String typeId);
    public List<Favor> findByLevel(Integer level);

    public int insert(Favor favor);
    public int update(Favor favor);
    public int deleteById(int id);
//    public boolean deleteForCustomer(Customer customer);
//    public boolean deleteForType(Type type);
}
