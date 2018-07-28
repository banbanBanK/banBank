package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;

import java.sql.Timestamp;
import java.util.List;

public interface CommentDao extends GenericDao<Comment, Integer> {
    public List<Comment> findByCreateTime(Timestamp createTime);
    public List<Comment> findByGoodId(String goodId);
    public List<Comment> findByCustomerId(String customerId);

    public int insert(Comment comment);
    public int update(Comment comment);
    public int deleteById(int id);
//    public boolean deleteForCustomer(Customer customer);
//    public boolean deleteForGood(Good good);
}
