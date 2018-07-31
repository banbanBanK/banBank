package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Card;
import com.chinasofti.ssm.domain.Customer;

import java.util.List;

public interface CardBiz {
    public List<Card> findAll();
    public Card findById(Integer id);
    public Card findByCardId(String cardId);
    public List<Card> findByCustomerId(String customerId);

    public boolean insert(Card card);
    public boolean update(Card card);
    public boolean deleteById(int id);
}
