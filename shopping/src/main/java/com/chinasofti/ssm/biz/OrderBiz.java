package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Order;

import java.sql.Date;
import java.util.List;

public interface OrderBiz {
    List<Order> findAll();
    Order findById(Integer Id);
    List<Order> findByCustomerId(String CustomerId);
    List<Order> findByIsDone(Integer IsDone);
    List<Order> findByCreateTime(Date CreateTime);

    boolean insert(Order order);
    boolean update(Order order);
    boolean delete(Order order);
    boolean delete(Integer Id);
    boolean doneOrder(String customerId);
}
