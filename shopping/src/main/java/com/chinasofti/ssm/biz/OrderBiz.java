package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Order;

import java.sql.Date;
import java.util.List;

public interface OrderBiz {
    List<Order> findAll();
    Order findById(Integer id);
    List<Order> findByCustomerId(String customerId);
    List<Order> findByIsDone(Integer isDone);
    List<Order> findByCreateTime(Date createTime);

    boolean insert(Order order);
    boolean update(Order order);
    boolean delete(Order order);
    boolean delete(Integer Id);
    boolean doneOrder(String customerId);
}
