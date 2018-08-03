package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.ProductStyleBiz;
import com.chinasofti.ssm.dao.ProductStyleDao;
import com.chinasofti.ssm.domain.ProductStyle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductStyleBizImpl implements ProductStyleBiz {
    @Autowired
    private ProductStyleDao productStyleDao;
    public List<ProductStyle> findByGoodId(String goodId) {
        return productStyleDao.findByGoodId(goodId);
    }

    public List<ProductStyle> findAll() {
        return productStyleDao.findAll();
    }

    public ProductStyle findById(int id) {
        return productStyleDao.findById(id);
    }

    public String findMainByRelationId(String goodId) {
        return productStyleDao.findMainByRelationId(goodId);
    }

    public boolean insert(ProductStyle productStyle) {
        int result = 0;
        result = productStyleDao.insert(productStyle);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(ProductStyle productStyle) {
        int result = 0;
        result = productStyleDao.update(productStyle);
        if(result > 0) return true;
        else return false;
    }

    public boolean deleteById(int id) {
        int result = 0;
        result = productStyleDao.deleteById(id);
        if(result > 0) return true;
        else return false;
    }
}
