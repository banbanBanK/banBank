package com.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.ViewAction;

import java.util.List;

public interface ViewActionBiz {
    List<ViewAction> findAll();
    ViewAction findById(Integer id);

    boolean insert(ViewAction viewAction);
}
