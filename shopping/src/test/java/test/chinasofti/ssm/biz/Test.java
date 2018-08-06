package test.chinasofti.ssm.biz;

import com.chinasofti.ssm.biz.*;
import com.chinasofti.ssm.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class Test {
    @Autowired
    private CustomerAnalysisBiz customerAnalysisBiz;
    @Autowired
    private FavorBiz favorBiz;
    @Autowired
    private TypeBiz typeBiz;
    @Autowired
    private CustomerBiz customerBiz;
    @Autowired
    private GoodBiz goodBiz;
    public String Login(@RequestParam String customerId,HttpServletRequest request){
        int typeNum = typeBiz.findAll().size();
        for(int i = 1;i <= typeNum;i++){
            Favor favor = favorBiz.findByCustomerAndType(customerId,String.valueOf(i));
            favor.setFavorLevel(0);
            favorBiz.update(favor);
        }
        List<CustomerAnalysis> customerAnalyses = customerAnalysisBiz.findByCustomerId(customerId);
        for(CustomerAnalysis customerAnalysis : customerAnalyses){
            String typeId = customerAnalysis.getGood().getType().getTypeId();
            Favor favor = favorBiz.findByCustomerAndType(customerId,typeId);
            int level = favor.getFavorLevel();
            int browseNum = customerAnalysis.getBrowseNum();
            int buyNum = customerAnalysis.getBuyNum();
            int buySum = customerAnalysis.getBuySum();
            favor.setFavorLevel(level+browseNum+5*buySum+2*buyNum);
            favorBiz.update(favor);
        }
        return "";
    }
    public String Signup(@RequestParam String customerId,HttpServletRequest request){
        int typeNum = typeBiz.findAll().size();
        for(int i=1;i <= typeNum;i++){
            Favor favor = new Favor();
            Type type = typeBiz.findByTypeId(String.valueOf(i));
            Customer customer = customerBiz.findByCustomerId(customerId);
            favor.setDeleteStatus(1);
            favor.setType(type);
            favor.setCustomer(customer);
            favor.setFavorLevel(0);
            favorBiz.insert(favor);
        }
        return "";
    }
    public String Recommand(@RequestParam String customerId,HttpServletRequest request){
        List<Favor> favors = favorBiz.findByCustomerId(customerId);
        favors.sort((h1,h2) ->h1.getFavorLevel().compareTo(h2.getFavorLevel()));
        for(int i = 0;i <= 2;i++){
            Favor favor = favors.get(i);
            String typeId = favor.getType().getTypeId();
            if(favor.getFavorLevel() != 0){
                List<Good> goods = goodBiz.findByChildrenTypeId(typeId);
                String str ="goods"+ i;
                request.setAttribute(str,goods);
            }
            else break;
        }
        return "";
    }
}
