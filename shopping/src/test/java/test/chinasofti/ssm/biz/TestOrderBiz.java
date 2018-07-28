package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.OrderBiz;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestOrderBiz {
    @Autowired
    private OrderBiz orderBiz;
    @Test
    public void testFindById(){
        Order order = orderBiz.findById(1);
        System.out.println("order="+order.getCustomer().getCustomerName()+order.getGood().getGoodName());
    }

    @Test
    public void testFindAll(){
        List<Order> orders = orderBiz.findAll();
        for(Order order : orders){
            System.out.println("Name = " + order.getCustomer().getCustomerName() + " " + order.getGood().getGoodName());
        }
    }

    @Test
    public void testFindByCustomerId(){
        List<Order> orders = orderBiz.findByCustomerId("123");
        for (Order order :orders){
            System.out.println("Name = " + order.getCustomer().getCustomerName() + " " + order.getGood().getGoodName());
        }
    }

    @Test
    public void testFindByIsDone() {
        List<Order> orders = orderBiz.findByIsDone(0);
        for (Order order :orders){
            System.out.println("Name = " + order.getCustomer().getCustomerName() + " " + order.getGood().getGoodName());
        }
    }

/*    @Test
    public void testFindByCreateTime(){
        List<Order> orders = orderBiz.findByCreateTime();
        for (Order order :orders){
            System.out.println("Name = " + order.getCustomer().getCustomerName() + " " + order.getGood().getGoodName());
        }
    }*/

/*    @Test
    public void testInsert(){
        Order order = new Order();
        order.setCustomer();
    }*/
    @Test
    public void testDelete(){
        boolean a = orderBiz.delete(1);
        System.out.println(a);
    }

    @Test
    public void testUpdate(){
        Order order = new Order();
        boolean a = orderBiz.update(order);
        System.out.println(a);
    }
}

