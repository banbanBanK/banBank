package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Card;
import com.chinasofti.ssm.domain.Customer;

import java.util.List;

public interface CardDao extends GenericDao<Card, Integer> {
    Card findByCardId(String cardId);
    List<Card> findByCustomerId(String customerId);

    int insert(Card card);
    int update(Card card);
    int deleteById(int id);
//    int deleteByCardId(String cardId);
//    boolean deleteForCustomer(Customer customer);
}
