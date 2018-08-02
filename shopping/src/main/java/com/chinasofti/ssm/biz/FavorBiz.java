package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface FavorBiz {
    List<Favor> findAll();
    Favor findById(Integer id);
    List<Favor> findByCustomerId(String customerId);
    List<Favor> findByTypeId(String typeId);
    List<Favor> findByLevel(Integer level);

    boolean insert(Favor favor);
    boolean update(Favor favor);
    boolean deleteById(int id);
}
