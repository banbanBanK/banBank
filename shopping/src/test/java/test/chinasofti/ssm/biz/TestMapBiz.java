package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.MapBiz;
import com.chinasofti.ssm.domain.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestMapBiz {

    @Autowired
    private MapBiz mapBiz;

    @Test
    public void  sd(){
        List<Map> maps = mapBiz.findAll();
        int[] reuslt = new int[35];
        for(int i=0; i<34; i++){
            reuslt[i]=0;
        }
        int i=0;
        for(Map map : maps){
            reuslt[i] = map.getNum();
            i++;
        }
        System.out.println(reuslt[1]);
    }

}
