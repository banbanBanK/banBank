package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.CustomerAnalysis;

import java.util.List;

public interface CustomerAnalysisDao extends GenericDao<CustomerAnalysis,Integer>{
    List<CustomerAnalysis> findByCustomerId(String customerId);
}
