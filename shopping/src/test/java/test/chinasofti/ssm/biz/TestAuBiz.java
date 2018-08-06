package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.AuBiz;
import com.chinasofti.ssm.domain.Au;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestAuBiz {

    @Autowired
    private AuBiz auBiz;
    @Test
    public void getAu(){
        int [] viewaction = new int [32];
        for(int i=0; i<31; i++)
            viewaction[i] = 0;

        List<Au> aus = auBiz.findAll();
//        for(Au au : aus){
//            int day = au.getDay().getDate();
//            viewaction[day] += au.getNum();
//        }
        System.out.println(aus.get(1).getDay().getDate());
    }
}
