package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Customer;

import java.util.List;
import java.util.Set;

public interface CustomerBiz {
    Customer findById(int id);
    Customer findByCustomerId(String customerId);
    Set<Customer> findByName(String name);
    List<Customer> findAll();

    boolean insert(Customer customer);
    boolean update(Customer customer);
    boolean deleteById(int id);
}
