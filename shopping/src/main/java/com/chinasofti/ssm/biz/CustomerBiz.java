package com.chinasofti.ssm.biz;

import java.util.Set;

import com.chinasofti.ssm.domain.Customer;

public interface CustomerBiz {
	 public Customer findByCustomerId(String customerId);
     public Set<Customer> findByName(String customerName);
     public int insert(Customer customer);
     public int update(Customer customer);
     public int delete(String customerId);
}
