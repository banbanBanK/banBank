package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.ProductStyle;

import java.util.List;

public interface ProductStyleBiz {
    List<ProductStyle> findByGoodId(String goodId);
    List<ProductStyle> findAll();
    ProductStyle findById(int id);
    String findMainByRelationId(String goodId);

    boolean insert(ProductStyle productStyle);
    boolean update(ProductStyle productStyle);
    boolean deleteById(int id);
}
