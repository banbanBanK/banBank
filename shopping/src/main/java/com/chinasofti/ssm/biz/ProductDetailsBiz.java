package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.ProductDetails;

import java.util.List;

public interface ProductDetailsBiz {
    List<ProductDetails> findAll();
    ProductDetails findById(Integer id);
    ProductDetails findByGoodId(String goodId);
    List<ProductDetails> findLatest();

    boolean insert(ProductDetails productDetails);
    boolean update(ProductDetails productDetails);
}
