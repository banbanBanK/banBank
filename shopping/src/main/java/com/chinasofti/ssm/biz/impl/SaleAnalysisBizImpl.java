package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.SaleAnalysisBiz;
import com.chinasofti.ssm.dao.SaleAnalysisDao;
import com.chinasofti.ssm.domain.SaleAnalysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleAnalysisBizImpl implements SaleAnalysisBiz {
    @Autowired
    private SaleAnalysisDao saleAnalysisDao;

    public List<SaleAnalysis> findTop() { return saleAnalysisDao.findTop(); }

    public List<SaleAnalysis> findByGoodId(String monthGoodId) { return saleAnalysisDao.findByGoodId(monthGoodId); }

}
