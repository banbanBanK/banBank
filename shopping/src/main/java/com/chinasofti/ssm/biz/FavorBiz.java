package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.Type;

import java.util.List;

public interface FavorBiz {
    public List<Favor> findAll();
    public Favor findById(Integer Id);
    public List<Favor> findByCustomerId(String customerId);
    public List<Favor> findByTypeId(String typeId);
    public List<Favor> findByLevel(Integer level);

    public boolean insert(Favor favor);
    public boolean update(Favor favor);
    public boolean deleteById(int id);
}
