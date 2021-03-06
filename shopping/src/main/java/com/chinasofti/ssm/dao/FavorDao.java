package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.Type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FavorDao extends GenericDao<Favor, Integer> {
    Favor findByCustomerAndType(@Param("customerId") String customerId,@Param("typeId") String typeId);
    List<Favor> findByCustomerId(String customerId);
    List<Favor> findByTypeId(String typeId);
    List<Favor> findByLevel(Integer level);

    int insert(Favor favor);
    int update(Favor favor);
    int deleteById(int id);
//    boolean deleteForCustomer(Customer customer);
//    boolean deleteForType(Type type);
}
