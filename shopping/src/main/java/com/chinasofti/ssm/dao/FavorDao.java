package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Favor;

public interface FavorDao extends GenericDao<Favor, Integer> {
<<<<<<< HEAD
=======
    public List<Favor> findByCustomerId(String customerId);
    public List<Favor> findByTypeId(String typeId);
    public List<Favor> findByLevel(Integer level);
>>>>>>> f7e20f859d59c2dbd405aa986dcb31c1de7f8a7b

}
