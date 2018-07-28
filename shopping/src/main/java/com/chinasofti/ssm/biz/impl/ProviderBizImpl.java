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

    public Provider findById(Integer Id) {
        return providerDao.findById(Id);
    }

    public List<Provider> findByName(String ProviderName) {
        return providerDao.findByName(ProviderName);
    }

    public List<Provider> findByAddress(String Address) {
        return providerDao.findByAddress(Address);
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