package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;

import java.sql.Timestamp;
import java.util.List;

public interface CommentDao extends GenericDao<Comment, Integer> {
    List<Comment> findByCreateTime(Timestamp createTime);
    List<Comment> findByGoodId(String goodId);
    List<Comment> findByCustomerId(String customerId);

    int insert(Comment comment);
    int update(Comment comment);
    int deleteById(int id);
//    boolean deleteForCustomer(Customer customer);
//    boolean deleteForGood(Good good);
}
