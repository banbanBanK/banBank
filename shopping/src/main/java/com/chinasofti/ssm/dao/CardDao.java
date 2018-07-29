package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Card;
import com.chinasofti.ssm.domain.Customer;

import java.util.List;

public interface CardDao extends GenericDao<Card, Integer> {
    public Card findByCardId(String cardId);
    public List<Card> findByCustomerId(String customerId);

    public int insert(Card card);
    public int update(Card card);
    public int deleteById(int id);
//    public int deleteByCardId(String cardId);
//    public boolean deleteForCustomer(Customer customer);
}
