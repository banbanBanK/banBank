package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.CommentAnalysis;

import java.util.List;

public interface CommentAnalysisDao extends GenericDao<CommentAnalysis, Integer>{
    List<CommentAnalysis> findByGoodId(String goodId);
}
