package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.FaqBiz;
import com.chinasofti.ssm.dao.FaqDao;
import com.chinasofti.ssm.domain.Faq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FaqBizImpl implements FaqBiz {
    @Autowired
    private FaqDao faqDao;
    public Faq findById(int id) {
        return faqDao.findById(id);
    }

    public List<Faq> findAll() {
        return faqDao.findAll();
    }

    public List<Faq> findByGoodId(String goodId) {
        return faqDao.findByGoodId(goodId);
    }

    public boolean insert(Faq faq) {
        int result = 0;
        result = faqDao.insert(faq);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(Faq faq) {
        int result = 0;
        result = faqDao.update(faq);
        if(result > 0) return true;
        else return false;
    }

    public boolean deleteById(int id) {
        int result = 0;
        result = faqDao.delete(id);
        if(result > 0) return true;
        else return false;
    }
}
