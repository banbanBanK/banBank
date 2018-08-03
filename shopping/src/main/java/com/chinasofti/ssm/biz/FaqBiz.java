package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Faq;

import java.util.List;

public interface FaqBiz {
    Faq findById(int id);
    List<Faq> findAll();
    List<Faq> findByGoodId(String goodId);

    boolean insert(Faq faq);
    boolean update(Faq faq);
    boolean deleteById(int id);
}
