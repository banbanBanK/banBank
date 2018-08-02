package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.domain.Comment;
import com.chinasofti.ssm.domain.Type;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chinasofti.ssm.biz.GoodBiz;
import com.chinasofti.ssm.domain.Good;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestGoodBiz{
	@Autowired
	private GoodBiz goodBiz;
	@Test
	public void testFindById() {
		Integer a= 1 ;
		Good good = goodBiz.findById(10);
		System.out.println("Hello"+ good.getGoodName());
	}

	@Test
	public void testFindByName(){
		List<Good> goods = goodBiz.findByName("联想");

		for (Good good : goods) {
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByPrice(){
		List<Good> goods = goodBiz.findByPrice(10);
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByChildrenType(){
		List<Good> goods = goodBiz.findByChildrenTypeId("5");
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByRootType(){
		List<Good> goods = goodBiz.findByRootTypeId("1");
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByProvider(){
		List<Good> goods = goodBiz.findByProvider("2");
		for (Good good : goods){
			System.out.println("name = " + good.getGoodName());
		}
	}

	@Test
	public void testFindByGoodId(){
		Good good = goodBiz.findByGoodId("1");
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
		boolean a = goodBiz.insert(good);
		System.out.println(a);
	}

	@Test
	public void testDelete(){
		boolean a = goodBiz.delete(1);
		System.out.println(a);
	}

	@Test
	public void testUpdate(){

	}
}
