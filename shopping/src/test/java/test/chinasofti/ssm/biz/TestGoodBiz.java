package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.ProviderBiz;
import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Provider;
import com.chinasofti.ssm.domain.Type;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.domain.Good;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestGoodBiz{
	@Autowired
	private GoodBiz GoodBiz;
	ProviderBiz providerBiz ;

	@Test
	public void testFindById() {
		Integer a= 1 ;
		Good good = GoodBiz.findById(a);
		System.out.println("Hello"+ good.getGoodName());
	}

	@Test
	public void testFindByName(){
		List<Good> goods = GoodBiz.findByName("A");

		for (Good good : goods) {
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByPrice(){
		List<Good> goods = GoodBiz.findByPrice(10);
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByType(){
		List<Good> goods = GoodBiz.findByType(5);
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByProvider(){
		List<Good> goods = GoodBiz.findByProviderId("2");
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByGoodId(){
		Good good = GoodBiz.findByGoodId("1");
		System.out.println("name = " + good.getGoodName());
	}

	@Test
	public void testInsert(){
		Set<Comment> comments = new HashSet<Comment>();
		Type type = new Type();
		Good good = new Good();
		type.setTypeId("1");
		good.setGoodId("15");
		good.setGoodName("12345");
		good.setGoodPrice(10);
		good.setDeleteStatus(1);
		good.setComments(comments);
		good.setGoodStock(10);
		good.setGoodSaleSum(0);
		good.setType(type);
		boolean a = GoodBiz.insert(good);
		System.out.println(a);
	}

	@Test
	public void testDelete(){
		boolean a = GoodBiz.delete(1);
		System.out.println(a);
	}

	@Test
	public void testUpdate(){

	}

	@Test
	public void test1(){
		List<Good> goods = GoodBiz.findAll();
		int judge = 1;
		while(judge < 10)
		{
			String GoodId = goods.get(judge).getGoodId();
			String ProviderId= GoodBiz.findProviderIdByGoodId(GoodId);
			//Provider provider = providerBiz.findByProviderId(ProviderId);
			/*String ProviderName = provider.getProviderName();*/
			System.out.println(ProviderId+"         ");
			judge+=1;
		}
	}
}
