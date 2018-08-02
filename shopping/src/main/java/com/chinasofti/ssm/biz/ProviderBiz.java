package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Provider;

        import java.util.List;

public interface ProviderBiz {
    List<Provider> findAll();
    Provider findById(Integer Id);
    List<Provider> findByName(String ProviderName);
    List<Provider> findByAddress(String Address);
    Provider findByProviderId(String providerId);

    boolean insert(Provider provider);
    boolean update(Provider provider);
    boolean delete(Integer id);
}