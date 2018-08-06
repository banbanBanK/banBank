package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.AgeGenderAnalysisBiz;
import com.chinasofti.ssm.dao.AgeGenderAnalysisDao;
import com.chinasofti.ssm.domain.AgeGenderAnanlysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AgeGenderAnalysisBizImpl implements AgeGenderAnalysisBiz {

    @Autowired
    private AgeGenderAnalysisDao ageGenderAnalysisDao;

    public List<AgeGenderAnanlysis> findAll() {
        return ageGenderAnalysisDao.findAll();
    }
}
