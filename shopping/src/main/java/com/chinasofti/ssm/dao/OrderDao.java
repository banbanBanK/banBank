package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Order;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

public interface OrderDao extends GenericDao<Order, Integer> {
    List<Order> findAll();
    Order findById(Integer id);
    List<Order> findByCustomerId(String customerId);
    List<Order> findByIsDone(Integer isDone);
    List<Order> findByCreateTime(Date createTime);

    int insert(Order order);
    int update(Order order);
    int updateGoodNum(@Param("goodNum")Integer goodNum, @Param("customerId")String customerId, @Param("goodId") String goodId);
    int delete(Order order);
    int delete(Integer Id);
    int doneOrder(String customerId);
}
