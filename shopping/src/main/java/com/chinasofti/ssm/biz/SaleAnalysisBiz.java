package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.SaleAnalysis;

import java.util.List;

public interface SaleAnalysisBiz {
    List<SaleAnalysis> findTop();
    List<SaleAnalysis> findByGoodId(String monthGoodId);
}
