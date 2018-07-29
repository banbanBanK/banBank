package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.Card;

public interface CardDao extends GenericDao<Card, Integer> {
<<<<<<< HEAD
=======
    public Card findByCardId(String cardId);
    public List<Card> findByCustomerId(String customerId);
>>>>>>> f7e20f859d59c2dbd405aa986dcb31c1de7f8a7b

}
