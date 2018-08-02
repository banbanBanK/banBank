package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.domain.Customer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestCustomerBiz {
    @Autowired
    private CustomerBiz customerBiz;
    @Test
    public void findByCustomerId(){
        Customer customer = customerBiz.findByCustomerId("happy");
        System.out.println(customer.getCustomerName());
    }
}