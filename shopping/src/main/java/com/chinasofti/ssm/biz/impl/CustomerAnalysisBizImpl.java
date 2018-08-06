package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.CustomerAnalysisBiz;
import com.chinasofti.ssm.dao.CustomerAnalysisDao;
import com.chinasofti.ssm.domain.CustomerAnalysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerAnalysisBizImpl implements CustomerAnalysisBiz {
    @Autowired
    private CustomerAnalysisDao customerAnalysisDao;


    public List<CustomerAnalysis> findByCustomerId(String customerId) {
        return customerAnalysisDao.findByCustomerId(customerId);
    }

    public List<CustomerAnalysis> findAll() {
        return customerAnalysisDao.findAll();
    }

    public CustomerAnalysis findById(int id) {
        return customerAnalysisDao.findById(id);
    }
}
