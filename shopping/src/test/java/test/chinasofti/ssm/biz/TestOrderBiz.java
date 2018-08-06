package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.biz.OrderBiz;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;
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
    @Autowired
    private CustomerBiz customerBiz;
    @Autowired
    private GoodBiz goodBiz;
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
        List<Order> orders = orderBiz.findByCustomerId("1");
        for (Order order :orders){
            System.out.println("Name = " + order.getCustomer().getCustomerName() + " " + order.getGood().getType());
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

    @Test
    public void testInsert(){
        Order orderNew = new Order();
        Customer cus = customerBiz.findByCustomerId("1");
        Good good = goodBiz.findByGoodId("2");
        orderNew.setCustomer(cus);
        orderNew.setGood(good);
        orderNew.setDeleteStatus(1);
        orderNew.setGoodNum(1);
        orderNew.setIsDone(0);
        System.out.println(orderBiz.insert(orderNew));
    }
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

