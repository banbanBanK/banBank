package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.CommentAnalysisBiz;
import com.chinasofti.ssm.dao.CommentAnalysisDao;
import com.chinasofti.ssm.domain.CommentAnalysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentAnalysisBizImpl implements CommentAnalysisBiz {
    @Autowired
    private CommentAnalysisDao commentAnalysisDao;

    public List<CommentAnalysis> findByGoodId(String goodId) {
        return commentAnalysisDao.findByGoodId(goodId);
    }
}
