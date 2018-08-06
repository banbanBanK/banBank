package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.CommentAnalysis;

import java.util.List;

public interface CommentAnalysisBiz {
    List<CommentAnalysis> findByGoodId(String goodId);
}
