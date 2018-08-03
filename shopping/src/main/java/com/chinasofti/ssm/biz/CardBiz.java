package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Card;
import com.chinasofti.ssm.domain.Customer;

import java.util.List;

public interface CardBiz {
    List<Card> findAll();
    Card findById(Integer id);
    Card findByCardId(String cardId);
    List<Card> findByCustomerId(String customerId);

    boolean insert(Card card);
    boolean update(Card card);
    boolean deleteById(int id);
}
