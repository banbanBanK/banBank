package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.ProductDetails;

import java.util.List;

public interface ProductDetailsDao extends GenericDao<ProductDetails,Integer> {
    ProductDetails findByGoodId(String goodId);
    List<ProductDetails> findLatest();

    int insert(ProductDetails productDetails);
    int insertComputer(ProductDetails productDetails);
    int insertHeadSet(ProductDetails productDetails);
    int insertCamera(ProductDetails productDetails);
    int insertCellPhone(ProductDetails productDetails);
    int update(ProductDetails productDetails);
}
