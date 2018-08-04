package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.ProductDetailsBiz;
import com.chinasofti.ssm.domain.ProductDetails;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestProductDetails {
    @Autowired
    private ProductDetailsBiz productDetailsBiz;
    @Test
    public void findAll(){
        List<ProductDetails> productDetailsList = productDetailsBiz.findAll();
        for(ProductDetails productDetails : productDetailsList){
            System.out.println("findAll "+ productDetails.getGood().getGoodName());
        }
    }
}
