package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.ProviderBiz;
import com.chinasofti.ssm.domain.Provider;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestProviderBiz {
    @Autowired
    private ProviderBiz providerBiz;

    @Test
    public void textFindById(){
        Provider provider = providerBiz.findById(1);
        System.out.println("provider="+provider.getProviderName());
    }

    @Test
    public void testFindByName(){
        List<Provider> providers = providerBiz.findByName("A");
       for(Provider provider : providers)
        System.out.println("provider="+ provider.getProviderName());
    }

    @Test
    public void testFindAddress(){
        List<Provider> providers = providerBiz.findByAddress("1234");
        for (Provider provider : providers){
            System.out.println("Providername = " + provider.getProviderName());
        }
    }

    @Test
    public void testDelete(){
        boolean a = providerBiz.delete(1);
        System.out.println(a);
    }

    @Test
    public void testUpdate(){

    }
    @Test
    public void testInsert(){

    }

}
