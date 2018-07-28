package com.chinasofti.ssm.biz.impl;

import com.chinasofti.ssm.biz.CardBiz;
import com.chinasofti.ssm.dao.CardDao;
import com.chinasofti.ssm.domain.Card;
import com.chinasofti.ssm.domain.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CardBizImpl implements CardBiz {
    @Autowired
    private CardDao cardDao;
    public List<Card> findAll() {
        return cardDao.findAll();
    }

    public Card findByCardId(String cardId) {
        return cardDao.findByCardId(cardId);
    }

    public List<Card> findByCustomerId(String customerId) {
        return cardDao.findByCustomerId(customerId);
    }

    public boolean insert(Card card) {
        int result = 0;
        result = cardDao.insert(card);
        if(result > 0) return true;
        else return false;
    }

    public boolean update(Card card){
        int result = 0;
        result = cardDao.update(card);
        if(result > 0) return true;
        else return false;
    }

    public boolean deleteById(int id) {
        int result = 0;
        result = cardDao.deleteById(id);
        if(result > 0) return true;
        else return false;
    }
}
