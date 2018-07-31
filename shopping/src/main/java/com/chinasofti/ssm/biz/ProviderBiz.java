package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Provider;

import java.util.List;

public interface ProviderBiz {
    List<Provider> findAll();
    Provider findById(Integer id);
    List<Provider> findByName(String providerName);
    List<Provider> findByAddress(String address);

    boolean insert(Provider provider);
    boolean update(Provider provider);
    boolean delete(Integer id);
}
