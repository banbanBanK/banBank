package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.CardBiz;
import com.chinasofti.ssm.domain.Card;
import com.chinasofti.ssm.domain.Customer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestCardBiz {
    @Autowired
    private CardBiz cardBiz;
    @Test
    public void run(){
//        findAll();
//        findByCardId();
//        findByCustomerId();
        insert();
//        update();
//        delete();
    }
    public void findAll(){
        List<Card> cards = cardBiz.findAll();
        for(Card card : cards){
            System.out.println("findByAll "+ card.getCustomer().getCustomerId());
        }
    }
    public void findByCardId(){
        Card card = cardBiz.findByCardId("3");
        System.out.println("findByCardId "+ card.getId());
    }
    public void findByCustomerId(){
        List<Card> cards = cardBiz.findByCustomerId("3");
        for(Card card : cards){
            System.out.println("findByCustomer "+ card.getId());
        }
    }
    public void insert(){
        Card card = new Card();
        Customer customer = new Customer();
        customer.setCustomerId("3");
        card.setCustomer(customer);
        card.setCardId("333");
        card.setDeleteStatus(1);

        cardBiz.insert(card);
    }
    public void update(){
        Card card = new Card();
        card.setId(1);
        Customer customer = new Customer();
        customer.setCustomerId("3");
        card.setCustomer(customer);
        card.setCardId("03");
        card.setDeleteStatus(1);

        cardBiz.update(card);
    }
    public void delete(){
        cardBiz.deleteById(1);
    }
}
