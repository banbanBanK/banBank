package test.chinasofti.ssm.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chinasofti.ssm.biz.UserBiz;
import com.chinasofti.ssm.dao.UserDao;
import com.chinasofti.ssm.domain.User;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestUserBiz {
	@Autowired
	private UserBiz userBiz;
	@Test
	public void testFindById() {
		Integer a=new Integer(1);
		User user = userBiz.findById(a);
		System.out.println("Hello"+ user.getUserName());
	}
}
