package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.ProductDetailsBiz;
import com.chinasofti.ssm.dao.ProductDetailsDao;
import com.chinasofti.ssm.domain.ProductDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductDetailsBizImpl implements ProductDetailsBiz {
    @Autowired
    private ProductDetailsDao productDetailsDao;

    public List<ProductDetails> findAll() {
        return productDetailsDao.findAll();
    }

    public ProductDetails findById(Integer id) {
        return productDetailsDao.findById(id);
    }

    public ProductDetails findByGoodId(String goodId) {
        return productDetailsDao.findByGoodId(goodId);
    }

    @Override
    public List<ProductDetails> findLatest() {
        return productDetailsDao.findLatest();
    }

    public boolean insert(ProductDetails productDetails) {
        int result = 0;
        result = productDetailsDao.insert(productDetails);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(ProductDetails productDetails) {
        int result = 0;
        result = productDetailsDao.update(productDetails);
        if(result > 0) return true;
        else return false;
    }
}
