package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.ProductStyle;

import java.util.List;

public interface ProductStyleDao extends GenericDao<ProductStyle,Integer> {
    List<ProductStyle> findByGoodId(String goodId);
    String findMainByRelationId(String goodId);

    int insert(ProductStyle productStyle);
    int update(ProductStyle productStyle);
    int deleteById(int id);
}
