package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Comment;

public interface CommentDao extends GenericDao<Comment, Integer> {
<<<<<<< HEAD
=======
    public List<Comment> findByCreateTime(Timestamp createTime);
    public List<Comment> findByGoodId(String goodId);
    public List<Comment> findByCustomerId(String customerId);
>>>>>>> f7e20f859d59c2dbd405aa986dcb31c1de7f8a7b

}
