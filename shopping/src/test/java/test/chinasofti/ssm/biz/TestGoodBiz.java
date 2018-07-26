package test.chinasofti.ssm.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.domain.Good;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestGoodBiz{
	@Autowired
	private GoodBiz GoodBiz;
	@Test
	public void testFindById() {
		Integer a= 1 ;
		Good good = GoodBiz.findById(a);
		System.out.println("Hello"+ good.getGoodName());
	}
}
