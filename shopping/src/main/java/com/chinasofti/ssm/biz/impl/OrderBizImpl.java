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

    public Order findById(Integer id) {
        return orderDao.findById(id);
    }

    public boolean delete(Integer id) {
        return orderDao.delete(id) == 1;
    }

    public boolean doneOrder(String customerId) {
        return orderDao.doneOrder(customerId)==1;
    }

    public boolean insert(Order order) {
        return orderDao.insert(order) == 1;
    }

    public boolean update(Order order) {
        return orderDao.update(order)==1;
    }

    public boolean updateGoodNum(Integer goodNum, String customerId, String goodId ) {
        return orderDao.updateGoodNum(goodNum,customerId,goodId)==1;
    }

    public boolean delete(Order order) {
        return orderDao.delete(order)==1;
    }

    public List<Order> findByCreateTime(Date createTime) {
        return orderDao.findByCreateTime(createTime);
    }

    public List<Order> findByCustomerId(String customerId) {
        return orderDao.findByCustomerId(customerId);
    }

    public List<Order> findByIsDone(Integer isDone) {
        return orderDao.findByIsDone(isDone);
    }
}
