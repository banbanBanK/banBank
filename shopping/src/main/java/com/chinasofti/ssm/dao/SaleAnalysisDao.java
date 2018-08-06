package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.SaleAnalysis;

import java.util.List;

public interface SaleAnalysisDao extends GenericDao<SaleAnalysis,Integer>{
    List<SaleAnalysis> findTop();
    List<SaleAnalysis> findByGoodId(String monthGoodId);
}
