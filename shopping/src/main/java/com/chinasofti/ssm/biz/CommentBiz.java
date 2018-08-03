package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;

import java.sql.Timestamp;
import java.util.List;

public interface CommentBiz {
    List<Comment> findAll();
    Comment findById(Integer id);
    List<Comment> findByCreateTime(Timestamp createTime);
    List<Comment> findByGoodId(String goodId);
    List<Comment> findByCustomerId(String customerId);

    boolean insert(Comment comment);
    boolean update(Comment comment);
    boolean deleteById(int id);
}
