package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Customer;

import java.util.Set;


public interface CustomerDao extends GenericDao<Customer, Integer> {
    Customer findByCustomerId(String customerId);
    Set<Customer> findByName(String name);

    int insert(Customer customer);
    int update(Customer customer);
    int deleteById(int id);
}
