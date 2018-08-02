package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.CommentBiz;
import com.chinasofti.ssm.biz.CustomerBiz;
import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Customer;
import com.chinasofti.ssm.domain.Good;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Timestamp;
import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestCommentBiz {
    @Autowired
    private CommentBiz commentBiz;
    @Autowired
    private GoodBiz goodBiz;
    @Autowired
    private CustomerBiz customerBiz;
    @Test
    public void findAll(){
        List<Comment> comments = commentBiz.findAll();
        for(Comment comment : comments) {
            System.out.println("findAll " + comment.getComment());
        }
    }
    @Test
    public void findByCreateTime(){
        Timestamp timestamp =Timestamp.valueOf("2018-07-27 22:57:21");//3:hellow
        List<Comment> comments = commentBiz.findByCreateTime(timestamp);
        for(Comment comment : comments) {
            System.out.println("findByCreateTime " + comment.getComment());
        }
    }
    @Test
    public void findByCustomerId(){
        List<Comment> comments = commentBiz.findByCustomerId("3");
        for(Comment comment : comments) {
            System.out.println("findByCustomerId " + comment.getComment());
        }
    }
    @Test
    public void findByGoodId(){
        List<Comment> comments = commentBiz.findByGoodId("4");
        for(Comment comment : comments) {
            System.out.println("findByGoodId " + comment.getComment());
        }
    }
    @Test
    public void insert(){
        Good good = goodBiz.findById(1);
        Comment comment = new Comment();
        Customer customer = customerBiz.findByCustomerId("1");
        comment.setCustomer(customer);
        comment.setGood(good);
        comment.setComment("s");
        comment.setEvaluation(2);
        comment.setDeleteStatus(1);

        commentBiz.insert(comment);
    }
    @Test
    public void update(){
        Comment comment = new Comment();
        Customer customer = new Customer();
        customer.setCustomerId("3");
        comment.setCustomer(customer);
        Good good = new Good();
        good.setGoodId("6");
        comment.setEvaluation(2);
        comment.setId(1);
        comment.setGood(good);
        comment.setDeleteStatus(1);

        commentBiz.update(comment);
    }
    @Test
    public void delete(){
        commentBiz.deleteById(1);
    }
}
