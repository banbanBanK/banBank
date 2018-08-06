package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.CustomerAnalysis;

import java.util.List;

public interface CustomerAnalysisBiz {
    List<CustomerAnalysis> findByCustomerId(String customerId);
    List<CustomerAnalysis> findAll();
    CustomerAnalysis findById(int id);
}
