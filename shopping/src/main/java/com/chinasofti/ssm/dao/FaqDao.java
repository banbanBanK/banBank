package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Faq;

import java.util.List;

public interface FaqDao extends GenericDao<Faq, Integer>{
   List<Faq> findByGoodId(String goodId);

   int insert(Faq faq);
   int update(Faq faq);
   int delete(int id);
}
