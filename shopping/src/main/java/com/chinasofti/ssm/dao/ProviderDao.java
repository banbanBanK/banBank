package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Provider;

import java.util.List;

public interface ProviderDao extends GenericDao<Provider, Integer> {
    List<Provider> findAll();
    Provider findById(Integer id);
    List<Provider> findByName(String providerName);
    List<Provider> findByAddress(String address);

    int insert(Provider provider);
    int update(Provider provider);
    int delete(Integer id);

}
