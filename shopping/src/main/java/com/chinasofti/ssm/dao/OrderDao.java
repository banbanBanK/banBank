package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Order;

import java.sql.Date;
import java.util.List;

public interface OrderDao extends GenericDao<Order, Integer> {
    List<Order> findAll();
    Order findById(Integer Id);
    List<Order> findByCustomerId(String CustomerId);
    List<Order> findByIsDone(Integer IsDone);
    List<Order> findByCreateTime(Date CreateTime);

    int insert(Order order);
    int update(Order order);
    int delete(Order order);
    int delete(Integer Id);
    int doneOrder(String customerId);
}
