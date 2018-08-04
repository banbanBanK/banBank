package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.ProviderBiz;
import com.chinasofti.ssm.dao.ProviderDao;
import com.chinasofti.ssm.domain.Provider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProviderBizImpl implements ProviderBiz {
    @Autowired
    private ProviderDao providerDao;

    public List<Provider> findAll() {
        return providerDao.findAll();
    }

    public Provider findById(Integer id) {
        return providerDao.findById(id);
    }

    public List<Provider> findByName(String providerName) {
        return providerDao.findByName(providerName);
    }

    public List<Provider> findByAddress(String address) {
        return providerDao.findByAddress(address);
    }

    public Provider findByProviderId(String providerId) {
        return providerDao.findByProviderId(providerId);
    }

    public boolean insert(Provider provider) {
        return providerDao.insert(provider)==1;
    }

    public boolean update(Provider provider) {
        return providerDao.update(provider)==1;
    }

    public boolean delete(Integer id) {
        return providerDao.delete(id)==1;
    }
}