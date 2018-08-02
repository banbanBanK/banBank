package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.AdminBiz;
import com.chinasofti.ssm.domain.Admin;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestAdminBiz {
    @Autowired
    private AdminBiz adminBiz;

    @Test
    public void findByAdminId(){
        Admin admin = adminBiz.findByAdminId("1");
        System.out.println("findByAdminId "+admin.getAdminPhone());
    }
}
