package com.chinasofti.ssm.biz.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.dao.CustomerDao;
import com.chinasofti.ssm.domain.Customer;
@Service
public class CustomerBizImpl implements CustomerBiz {
    @Autowired
    private CustomerDao customerDao;
    
	public Customer findByCustomerId(String customerId) {
		return customerDao.findByCustomerId(customerId);
	}

	public Set<Customer> findByName(String customerName) {
		return customerDao.findByName(customerName);
	}

	public int insert(Customer customer) {
	    return customerDao.insert(customer);

	}

	public int update(Customer customer) {
		return customerDao.update(customer);

	}

	public int delete(String customerId) {
		return customerDao.delete(customerId);

	}

}
