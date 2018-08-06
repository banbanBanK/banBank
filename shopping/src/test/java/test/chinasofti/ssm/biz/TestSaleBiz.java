package test.chinasofti.ssm.biz;


import com.chinasofti.ssm.biz.SaleAnalysisBiz;
import com.chinasofti.ssm.domain.SaleAnalysis;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestSaleBiz {

    @Autowired
    private SaleAnalysisBiz saleAnalysisBiz;

    @Test
    public void sale(){
        List<SaleAnalysis> sales = saleAnalysisBiz.findTop();
        for(SaleAnalysis sale : sales){
            System.out.println(sale.getSaleSum());
        }
    }
}
