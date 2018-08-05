package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.MapBiz;
import com.chinasofti.ssm.dao.MapDao;
import com.chinasofti.ssm.domain.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MapBizImpl implements MapBiz {
    @Autowired
    private MapDao mapDao;

    public List<Map> findAll() {
        return mapDao.findAll();
    }
}

