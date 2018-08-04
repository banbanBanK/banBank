package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.TypeBiz;
import com.chinasofti.ssm.domain.Type;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestTypeBiz {
    @Autowired
    private TypeBiz typeBiz;

    @Test
    public void findAll(){
        List<Type> types = typeBiz.findAll();
        for(Type type : types){
            System.out.println("type=" + type.getTypeName());
        }
    }
    @Test
    public void findParents(){
        List<Type> types = typeBiz.findParents();
        for(Type type : types){
            System.out.println("type=" + type.getTypeName());
        }
    }
    @Test
    public void findSingleRoots(){
        List<Type> types = typeBiz.findSingleRoots();
        for(Type type : types){
            System.out.println("type=" + type.getTypeName());
        }
    }
    @Test
    public void testFindById(){
        Type type = typeBiz.findById(1);
        System.out.println("type=" + type.getTypeName());
    }

    @Test
    public void testFindByTypeId(){
        Type type = typeBiz.findByTypeId("1");
        System.out.println(type.getTypeName());
    }

    @Test
    public void testFindByTypeName(){
        List<Type> types = typeBiz.findByName("电");
        for(Type type : types){
            System.out.println("type=" + type.getTypeName());
        }
    }
    @Test
    public void findByFatherTypeId(){
        List<Type> types = typeBiz.findChildren("1");
        for(Type type : types){
            System.out.println("type=" + type.getTypeName());
        }
    }
    @Test
    public void testDelete(){
        boolean a = typeBiz.delete(15);
        System.out.println(a);
    }
    @Test
    public void testInsert(){
        Type type = new Type();
        type.setTypeId("20");
        type.setTypeName("G");
        boolean a = typeBiz.insert(type);
        System.out.println(a);
    }
    @Test
    public void testUpdate(){
        Type type = new Type();
        type.setId(15);
        type.setTypeId("20");
        type.setTypeName("B");
        boolean a = typeBiz.update(type);
        System.out.println(a);
    }
}
