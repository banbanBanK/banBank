package com.chinasofti.ssm.dao;

import java.sql.Date;
import java.util.Set;

import com.chinasofti.ssm.domain.Customer;
import org.apache.ibatis.annotations.Param;

import java.util.Set;


public interface CustomerDao extends GenericDao<Customer, Integer> {
    Customer findByCustomerId(String customerId);
    Set<Customer> findByName(String name);

    int insert(Customer customer);
    int update(Customer customer);
    int deleteById(int id);
    int updateCustomerInfo(@Param("customerName")String customerName, @Param("customerGender")String customerGender, @Param("customerEmail") String customerEmail, @Param("customerBirthday") Date customerBirthday,@Param("customerPhone")String customerPhone,@Param("customerZipCode")String customerZipCode,@Param("customerAddress")String customerAddress,@Param("customerIntroduction") String customerIntroduction);
}
