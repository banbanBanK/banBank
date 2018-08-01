package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.OrderBiz;
import com.chinasofti.ssm.dao.OrderDao;
import com.chinasofti.ssm.domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class OrderBizImpl implements OrderBiz {
    @Autowired
    private OrderDao orderDao;

    public List<Order> findAll() {
        return orderDao.findAll();
    }

    public Order findById(Integer Id) {
        return orderDao.findById(Id);
    }

    public boolean delete(Integer Id) {
        return orderDao.delete(Id) == 1;
    }

    public boolean insert(Order order) {
        return orderDao.insert(order) == 1;
    }

    public boolean update(Order order) {
        return orderDao.update(order)==1;
    }

    public boolean delete(Order order) {
        return orderDao.delete(order)==1;
    }

    public List<Order> findByCreateTime(Date CreateTime) {
        return orderDao.findByCreateTime(CreateTime);
    }

    public List<Order> findByCustomerId(String CustomerId) {
        return orderDao.findByCustomerId(CustomerId);
    }

    public List<Order> findByIsDone(Integer IsDone) {
        return orderDao.findByIsDone(IsDone);
    }
}
