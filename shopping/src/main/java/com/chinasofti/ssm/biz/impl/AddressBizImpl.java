package com.chinasofti.ssm.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.biz.AddressBiz;
import com.chinasofti.ssm.dao.AddressDao;
import com.chinasofti.ssm.domain.Address;
@Service
public class AddressBizImpl implements AddressBiz {

	@Autowired
	private AddressDao addressDao;
	
	public List<Address> findAll() {
		return addressDao.findAll(); 
	}

}
