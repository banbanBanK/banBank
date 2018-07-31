package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.FavorBiz;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Favor;
import com.chinasofti.ssm.domain.Type;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestFavorBiz {
    @Autowired
    private FavorBiz favorBiz;
    @Test
    public void findAll(){
        List<Favor> favors = favorBiz.findAll();
        for(Favor favor : favors){
            System.out.println("findAll "+ favor.getCustomer().getCustomerName());
        }
    }
    @Test
    public void findByLevel(){
        List<Favor> favors = favorBiz.findByLevel(3);
        for(Favor favor : favors) {
            System.out.println("findByLevel " + favor.getId());
        }
    }
    @Test
    public void findByCustomerId(){
        List<Favor> favors = favorBiz.findByCustomerId("3");
        for(Favor favor : favors) {
            System.out.println("findByCustomerId " + favor.getId());
        }
    }
    @Test
    public void findByTypeId(){
        List<Favor> favors = favorBiz.findByTypeId("3");
        for(Favor favor : favors) {
            System.out.println("findByTypeId " + favor.getId());
        }
    }
    @Test
    public void insert(){
        Favor favor = new Favor();
        Customer customer = new Customer();
        customer.setCustomerId("5");
        Type type = new Type();
        type.setTypeId("4");
        favor.setCustomer(customer);
        favor.setType(type);
        favor.setDeleteStatus(1);

        favorBiz.insert(favor);
    }
    @Test
    public void update(){
        Favor favor = new Favor();
        Customer customer = new Customer();
        customer.setCustomerId("3");
        Type type = new Type();
        type.setTypeId("5");
        favor.setCustomer(customer);
        favor.setType(type);
        favor.setId(1);
        favor.setDeleteStatus(1);

        favorBiz.update(favor);
    }
    @Test
    public void delete(){
        favorBiz.deleteById(1);
    }
}
