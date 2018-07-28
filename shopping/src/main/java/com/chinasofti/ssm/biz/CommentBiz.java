package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;

import java.sql.Timestamp;
import java.util.List;

public interface CommentBiz {
    public List<Comment> findAll();
    public List<Comment> findByCreateTime(Timestamp createTime);
    public List<Comment> findByGoodId(String goodId);
    public List<Comment> findByCustomerId(String customerId);

    public boolean insert(Comment comment);
    public boolean update(Comment comment);
    public boolean deleteById(int id);
}
