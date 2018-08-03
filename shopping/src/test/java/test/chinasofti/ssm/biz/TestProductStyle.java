package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.ProductStyleBiz;
import com.chinasofti.ssm.domain.ProductStyle;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestProductStyle {
    @Autowired
    private ProductStyleBiz productStyleBiz;

    @Test
    public void findByGoodId(){
        List<ProductStyle> productStyles = productStyleBiz.findByGoodId("1");
        for(ProductStyle productStyle : productStyles){
            System.out.println("findByAll "+ productStyle.getId());
        }
    }
    @Test
    public void findById(){
        ProductStyle productStyle = productStyleBiz.findById(1);
        System.out.println("findById "+ productStyle.getGood().getType());
    }
    @Test
    public void findMainByRelationId(){
        String mainGoodId = productStyleBiz.findMainByRelationId("1");
        if(mainGoodId != null) {
            List<ProductStyle> productStyles = productStyleBiz.findByGoodId(mainGoodId);
            for (int i = 1; i <= productStyles.size(); i++) {
                for (int k = 0; k < productStyles.size(); k++) {
                    if (productStyles.get(k).getRelationPlace() == i) {
                        System.out.println("findByAll "+ productStyles.get(k).getRelation().getId()+" "+productStyles.get(k).getRelation().getType().getFatherTypeId());
                    }
                }
            }
        }
    }
}
