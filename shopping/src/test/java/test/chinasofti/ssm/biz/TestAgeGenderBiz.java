package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.AgeGenderAnalysisBiz;
import com.chinasofti.ssm.domain.AgeGenderAnanlysis;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestAgeGenderBiz {
    @Autowired
    private AgeGenderAnalysisBiz ageGenderAnalysisBiz;

    @Test
    public void testAgeGender(){
        List<AgeGenderAnanlysis> ageGenderAnanlyses = ageGenderAnalysisBiz.findAll();
        for(AgeGenderAnanlysis ageGenderAnanlysis : ageGenderAnanlyses){
            System.out.println(ageGenderAnanlysis.getAge());
        }
    }
}
