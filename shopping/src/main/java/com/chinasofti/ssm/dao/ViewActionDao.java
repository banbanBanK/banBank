package com.chinasofti.ssm.dao;

import com.chinasofti.ssm.domain.ViewAction;

public interface ViewActionDao extends GenericDao<ViewAction, Integer> {
    int insert(ViewAction viewAction);
}
