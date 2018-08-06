package com.chinasofti.ssm.biz.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.chinasofti.ssm.dao.FavorDao;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.GoodSummary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.dao.GoodDao;
import com.chinasofti.ssm.domain.Good;
@Service
public class GoodBizImpl implements GoodBiz {

	@Autowired
	private GoodDao goodDao;
	@Autowired
	private FavorDao favorDao;
	
	public List<Good> findByName(String goodName) {
		// TODO Auto-generated method stub
		return goodDao.findByName(goodName);
	}

	public List<Good> findByPrice(double goodPrice) {
		return goodDao.findByPrice(goodPrice);
	}

	public List<Good> findByChildrenTypeId(String typeId) {
		return goodDao.findByChildrenTypeId(typeId);
	}

	public List<Good> findByRootTypeId(String typeId) {
		return goodDao.findByRootTypeId(typeId);
	}

	public List<Good> findByProviderId(String providerId) {
		return goodDao.findByProviderId(providerId);
	}

	@Override
	public List<GoodSummary> findByRootTypeOrdered(String typeId) {
		List<GoodSummary> goodSummaries = goodDao.findByRootTypeOrdered(typeId);
		Comparator<GoodSummary> comparator = (h1,h2) ->h1.getSaleSum().compareTo(h2.getSaleSum());
		goodSummaries.sort(comparator.reversed());
		if(goodSummaries.size()>=3){
			for(int i = 0;i < goodSummaries.size();i+=3){
				for(int k = 0;k < 3;k++){
					for(int j = 0;j < 3 - k;j++){
						if(goodSummaries.get(j).getCommentLevel()<goodSummaries.get(j+1).getCommentLevel()){
							Collections.swap(goodSummaries,j,j+1);
						}
					}
				}
			}
		}
		return goodSummaries;
	}

	@Override
	public List<GoodSummary> findByChildrenTypeOrdered(String typeId) {
		List<GoodSummary> goodSummaries = goodDao.findByChildrenTypeOrdered(typeId);
		Comparator<GoodSummary> comparator = (h1,h2) ->h1.getSaleSum().compareTo(h2.getSaleSum());
		goodSummaries.sort(comparator.reversed());
		if(goodSummaries.size()>=3){
			for(int i = 0;i < goodSummaries.size();i+=3){
				for(int k = 0;k < 3;k++){
					for(int j = 0;j < 3 - k;j++){
						if(goodSummaries.get(j).getCommentLevel()<goodSummaries.get(j+1).getCommentLevel()){
							Collections.swap(goodSummaries,j,j+1);
						}
					}
				}
			}
		}
		return goodSummaries;
	}

	@Override
	public List<Good> findSerchGoods(String customerId) {
		List<Good> searchGoods = new ArrayList<Good>();
		if(customerId != null && !customerId.equals("-1")){
			List<Favor> favors = favorDao.findByCustomerId(customerId);
			Comparator<Favor> comparator = (h1, h2) ->h1.getFavorLevel().compareTo(h2.getFavorLevel());
			favors.sort(comparator.reversed());
			for(int i = 0;i <= 2;i++){
				Favor favor = favors.get(i);
				String typeId = favor.getType().getTypeId();
				if(favor.getFavorLevel() != 0){
					List<GoodSummary> goodSummaries = this.findByChildrenTypeOrdered(typeId);
					for(int k = 0;k < 6 && k < goodSummaries.size();k++){
						GoodSummary goodSummary = goodSummaries.get(k);
						Good good = new Good();
						good.setGoodId(goodSummary.getGoodId());
						good.setGoodName(goodSummary.getGoodName());
						good.setGoodPrice(goodSummary.getGoodPrice());
						good.setGoodImage(goodSummary.getGoodImage());
						good.setGoodStock(goodSummary.getGoodStock());
						good.setGoodSaleSum(goodSummary.getGoodSaleSum());
						good.setDeleteStatus(goodSummary.getDeleteStatus());
						good.setType(goodSummary.getType());
						good.setProvider(goodSummary.getProvider());
						searchGoods.add(good);
					}
				}
				else break;
			}
		}
		else{
			List<GoodSummary> goodSummaries = this.findAllOrdered();
			for(int k = 0;k < 12 && k < goodSummaries.size();k++){
				GoodSummary goodSummary = goodSummaries.get(k);
				Good good = new Good();
				good.setGoodId(goodSummary.getGoodId());
				good.setGoodName(goodSummary.getGoodName());
				good.setGoodPrice(goodSummary.getGoodPrice());
				good.setGoodImage(goodSummary.getGoodImage());
				good.setGoodStock(goodSummary.getGoodStock());
				good.setGoodSaleSum(goodSummary.getGoodSaleSum());
				good.setDeleteStatus(goodSummary.getDeleteStatus());
				good.setType(goodSummary.getType());
				good.setProvider(goodSummary.getProvider());
				searchGoods.add(good);
			}
		}
		return searchGoods;
	}

	@Override
	public List<GoodSummary> findAllOrdered() {
		List<GoodSummary> goodSummaries = goodDao.findAllOrdered();
		Comparator<GoodSummary> comparator = (h1,h2) ->h1.getSaleSum().compareTo(h2.getSaleSum());
		goodSummaries.sort(comparator.reversed());
		if(goodSummaries.size()>=3){
			for(int i = 0;i < goodSummaries.size();i+=3){
				for(int k = 0;k < 3;k++){
					for(int j = 0;j < 3 - k;j++){
						if(goodSummaries.get(j).getCommentLevel()<goodSummaries.get(j+1).getCommentLevel()){
							Collections.swap(goodSummaries,j,j+1);
						}
					}
				}
			}
		}
		return goodSummaries;
	}


	public Good findByGoodId(String goodId) {
		// TODO Auto-generated method stub
		return goodDao.findByGoodId(goodId);
	}

	public String findProviderIdByGoodId(String goodId) {
		return goodDao.findProviderIdByGoodId(goodId);
	}

	public Good findById(Integer Id) {
		// TODO Auto-generated method stub
		return goodDao.findById(Id);
	}

	public List<Good> findAll() {
		// TODO Auto-generated method stub
		return goodDao.findAll();
	}

	public boolean insert(Good good) {
		return goodDao.insert(good)==1;
	}

	public boolean delete(Integer id) {
		return goodDao.delete(id)==1;
	}

	public boolean delete(Good good) {
		return goodDao.delete(good)==1;
	}

	public boolean update(Good good) {
		return goodDao.update(good)==1;
	}

}