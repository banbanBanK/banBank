package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.*;
import com.chinasofti.ssm.domain.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestAnalysis {
    @Autowired
    private CustomerAnalysisBiz customerAnalysisBiz;
    @Autowired
    private FavorBiz favorBiz;
    @Autowired
    private TypeBiz typeBiz;
    @Autowired
    private CustomerBiz customerBiz;
    @Autowired
    private GoodBiz goodBiz;
    @Autowired
    private ProductDetailsBiz productDetailsBiz;

    @Test
    public void Test1(){
        int typeNum = typeBiz.findAll().size();
        for(int i = 1;i <= typeNum;i++){
            Favor favor = favorBiz.findByCustomerAndType("1",String.valueOf(i));
            favor.setFavorLevel(0);
            favorBiz.update(favor);
        }
        List<CustomerAnalysis> customerAnalyses = customerAnalysisBiz.findByCustomerId("1");
        for(CustomerAnalysis customerAnalysis : customerAnalyses){
            String typeId = customerAnalysis.getGood().getType().getTypeId();
            Favor favor = favorBiz.findByCustomerAndType("1",typeId);
            int level = favor.getFavorLevel();
            int browseNum = customerAnalysis.getBrowseNum();
            int buyNum = customerAnalysis.getBuyNum();
            int buySum = customerAnalysis.getBuySum();
            favor.setFavorLevel(level+browseNum+5*buySum+2*buyNum);
            favorBiz.update(favor);
        }
    }
    @Test
    public void Test2(){
        int typeNum = typeBiz.findAll().size();
        for(int i=1;i <= typeNum;i++){
            Favor favor = new Favor();
            Type type = typeBiz.findByTypeId(String.valueOf(i));
            Customer customer = new Customer();
            customer.setCustomerId("10");
            favor.setDeleteStatus(1);
            favor.setType(type);
            favor.setCustomer(customer);
            favor.setFavorLevel(0);
            favorBiz.insert(favor);
        }
    }
    @Test
    public void Test3(){
        List<Favor> favors = favorBiz.findByCustomerId("5");
//        Comparator<Favor> comparator = (h1, h2) ->h1.getFavorLevel().compareTo(h2.getFavorLevel());
//        favors.sort(comparator.reversed());
//        for(int i = 0;i <= 2;i++){
//            Favor favor = favors.get(i);
//            String typeId = favor.getType().getTypeId();
//            if(favor.getFavorLevel() != 0){
//                List<Good> goods = goodBiz.findByChildrenTypeId(typeId);
//                for(Good good : goods){
//                    System.out.println(good.getType().getTypeId());
//                }
//
//            }
//            else break;
//        }
        Comparator<Favor> comparator = (h1, h2) ->h1.getFavorLevel().compareTo(h2.getFavorLevel());
        favors.sort(comparator.reversed());
        for(int i = 0;i <= 2;i++){
            Favor favor = favors.get(i);
            String typeId = favor.getType().getTypeId();
            if(favor.getFavorLevel() != 0){
                List<GoodSummary> goodSummaries = goodBiz.findByChildrenTypeOrdered(typeId);
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
                    System.out.println(good.getGoodName());
                }
            }
            else break;
        }
    }
    @Test
    public void Test4(){
        List<Good> goods = goodBiz.findSerchGoods("1");
        for(Good good : goods){
            System.out.println(good.getGoodName());
        }
    }
    @Test
    public void Test5(){
        List<Good> specialGoods = new ArrayList<Good>();
        List<Type> parents = typeBiz.findAllChildren();
        int maxTypeId=0,minTypeId=100;
        for(int i = 0; i < parents.size();i++){
            int typeId = Integer.parseInt(parents.get(i).getTypeId());
            if(maxTypeId < typeId){
                maxTypeId = typeId;
            }
            if(minTypeId > typeId){
                minTypeId = typeId;
            }
        }
        int typeId1 = (int) (1+Math.random()*(maxTypeId-minTypeId+1)) + minTypeId - 1;
        List<GoodSummary> goodSummaries1 = goodBiz.findByChildrenTypeOrdered(String.valueOf(typeId1));
        for(int i=0;i<goodSummaries1.size()&&i<2;i++){
            Good good = goodBiz.findByGoodId(goodSummaries1.get(i).getGoodId());
            specialGoods.add(good);
        }
        int typeId2 = (typeId1 + 1) % maxTypeId;
        List<GoodSummary> goodSummaries2 = goodBiz.findByChildrenTypeOrdered(String.valueOf(typeId2));
        for(int i=0;i<goodSummaries2.size()&&i<2;i++){
            Good good = goodBiz.findByGoodId(goodSummaries2.get(i).getGoodId());
            specialGoods.add(good);
        }
        int typeId3 = (typeId2 + 1) % maxTypeId;
        List<GoodSummary> goodSummaries3 = goodBiz.findByChildrenTypeOrdered(String.valueOf(typeId3));
        for(int i=0;i<goodSummaries3.size()&&i<2;i++){
            Good good = goodBiz.findByGoodId(goodSummaries3.get(i).getGoodId());
            specialGoods.add(good);
        }
        for(Good good : specialGoods){
            System.out.println(good.getGoodName());
        }
    }
    @Test
    public void Test6(){
        List<CustomerAnalysis> customerAnalyses = customerAnalysisBiz.findByCustomerId("1");
        for(CustomerAnalysis customerAnalysis : customerAnalyses){
            String typeId = customerAnalysis.getGood().getType().getTypeId();
            Favor favor = favorBiz.findByCustomerAndType("1",typeId);
            int level = favor.getFavorLevel();
            int browseNum = customerAnalysis.getBrowseNum();
            int buyNum = customerAnalysis.getBuyNum();
            int buySum = customerAnalysis.getBuySum();
            favor.setFavorLevel(level+browseNum+5*buySum+2*buyNum);
            favorBiz.update(favor);
        }
    }
}
