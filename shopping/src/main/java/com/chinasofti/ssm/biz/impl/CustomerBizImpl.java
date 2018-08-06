package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.dao.CustomerDao;
import com.chinasofti.ssm.domain.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;
import java.util.Set;

@Service
public class CustomerBizImpl implements CustomerBiz {
    @Autowired
    private CustomerDao customerDao;
    public Customer findById(int id) {
        return customerDao.findById(id);
    }

    public Customer findByCustomerId(String customerId) {
        return customerDao.findByCustomerId(customerId);
    }

    public Set<Customer> findByName(String name) {
        return customerDao.findByName(name);
    }

    public List<Customer> findAll() {
        return customerDao.findAll();
    }

    public boolean insert(Customer customer) {
        int result = 0;
        result = customerDao.insert(customer);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(Customer customer) {
        int result = 0;
        result = customerDao.update(customer);
        if(result > 0) return true;
        else return false;
    }

    public boolean deleteById(int id) {
        int result = 0;
        result = customerDao.deleteById(id);
        if(result > 0) return true;
        else return false;
    }

    public boolean updateCustomerInfo(String customerId,String customerName, String customerGender, String customerEmail, Date customerBirthday, String customerPhone, String customerZipCode, String customerIntroduction) {
        return customerDao.updateCustomerInfo(customerId,customerName,customerGender,customerEmail,customerBirthday,customerPhone,customerZipCode,customerIntroduction)==1;
    }
}
