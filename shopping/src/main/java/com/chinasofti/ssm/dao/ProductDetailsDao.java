package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.ProductDetails;

public interface ProductDetailsDao extends GenericDao<ProductDetails,Integer> {
    ProductDetails findByGoodId(String goodId);

    int insert(ProductDetails productDetails);
    int insertComputer(ProductDetails productDetails);
    int insertHeadSet(ProductDetails productDetails);
    int insertCamera(ProductDetails productDetails);
    int insertCellPhone(ProductDetails productDetails);
    int update(ProductDetails productDetails);
}
