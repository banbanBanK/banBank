package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.CommentBiz;
import com.chinasofti.ssm.dao.CommentDao;
import com.chinasofti.ssm.domain.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;
@Service
public class CommentBizImpl implements CommentBiz {
    @Autowired
    private CommentDao commentDao;
    public List<Comment> findAll() {
        return commentDao.findAll();
    }

    public Comment findById(Integer Id) {
        return commentDao.findById(Id);
    }

    public List<Comment> findByCreateTime(Timestamp createTime) {
        return commentDao.findByCreateTime(createTime);
    }

    public List<Comment> findByGoodId(String goodId) {
        return commentDao.findByGoodId(goodId);
    }

    public List<Comment> findByCustomerId(String customerId) {
        return commentDao.findByCustomerId(customerId);
    }

    public boolean insert(Comment comment) {
        int result = 0;
        result = commentDao.insert(comment);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(Comment comment) {
        int result = 0;
        result = commentDao.update(comment);
        if(result > 0) return true;
        else return false;
    }

    public boolean deleteById(int id) {
        int result = 0;
        result = commentDao.deleteById(id);
        if(result > 0) return true;
        else return false;
    }
}
