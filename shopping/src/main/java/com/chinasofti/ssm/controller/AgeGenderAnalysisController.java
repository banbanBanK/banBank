package com.chinasofti.ssm.controller;

import com.chinasofti.ssm.biz.AgeGenderAnalysisBiz;
import com.chinasofti.ssm.domain.AgeGenderAnanlysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping
public class AgeGenderAnalysisController {

    @Autowired
    private AgeGenderAnalysisBiz ageGenderAnalysisBiz;

    @RequestMapping("/getAgeGenderM")
    @ResponseBody
    public int [] getAgeGenderM(){
        List<AgeGenderAnanlysis> ageGenderAnanlyses = ageGenderAnalysisBiz.findAll();
        int [] ageGenderM = new int [7];
        for(int i=0; i<7; i++){
            ageGenderM[i]=0;
        }
        for(AgeGenderAnanlysis ageGenderAnanlysis : ageGenderAnanlyses) {
            if (ageGenderAnanlysis.getAge() < 19 && ageGenderAnanlysis.getAge() >= 15 && ageGenderAnanlysis.getGender().equals("M"))
                ageGenderM[0] += ageGenderAnanlysis.getNum();
            else {
                if (ageGenderAnanlysis.getAge() < 23 && ageGenderAnanlysis.getAge() >= 19 && ageGenderAnanlysis.getGender().equals("M"))
                    ageGenderM[1] += ageGenderAnanlysis.getNum();
                else {
                    if (ageGenderAnanlysis.getAge() < 30 && ageGenderAnanlysis.getAge() >= 23 && ageGenderAnanlysis.getGender().equals("M"))
                        ageGenderM[2] += ageGenderAnanlysis.getNum();
                    else {
                        if (ageGenderAnanlysis.getAge() < 35 && ageGenderAnanlysis.getAge() >= 30 && ageGenderAnanlysis.getGender().equals("M"))
                            ageGenderM[3] += ageGenderAnanlysis.getNum();
                        else {
                            if (ageGenderAnanlysis.getAge() < 40 && ageGenderAnanlysis.getAge() >= 35 && ageGenderAnanlysis.getGender().equals("M"))
                                ageGenderM[4] += ageGenderAnanlysis.getNum();
                            else {
                                if (ageGenderAnanlysis.getAge() < 50 && ageGenderAnanlysis.getAge() >= 40 && ageGenderAnanlysis.getGender().equals("M"))
                                    ageGenderM[5] += ageGenderAnanlysis.getNum();
                                else
                                    if(ageGenderAnanlysis.getGender().equals("M"))
                                        ageGenderM[6] += ageGenderAnanlysis.getNum();
                            }
                        }
                    }
                }
            }
        }
        return ageGenderM;
    }

    @RequestMapping("/getAgeGenderF")
    @ResponseBody
    public int [] getAgeGenderF(){
        List<AgeGenderAnanlysis> ageGenderAnanlyses = ageGenderAnalysisBiz.findAll();
        int [] ageGenderF = new int [8];
        for(int i=0; i<8; i++){
            ageGenderF[i]=0;
        }
        for(AgeGenderAnanlysis ageGenderAnanlysis : ageGenderAnanlyses) {
            if (ageGenderAnanlysis.getAge() < 19 && ageGenderAnanlysis.getAge() >= 15 && ageGenderAnanlysis.getGender().equals("F"))
                ageGenderF[0] += ageGenderAnanlysis.getNum();
            else {
                if (ageGenderAnanlysis.getAge() < 23 && ageGenderAnanlysis.getAge() >= 19 && ageGenderAnanlysis.getGender().equals("F"))
                    ageGenderF[1] += ageGenderAnanlysis.getNum();
                else {
                    if (ageGenderAnanlysis.getAge() < 30 && ageGenderAnanlysis.getAge() >= 23 && ageGenderAnanlysis.getGender().equals("F"))
                        ageGenderF[2] += ageGenderAnanlysis.getNum();
                    else {
                        if (ageGenderAnanlysis.getAge() < 35 && ageGenderAnanlysis.getAge() >= 30 && ageGenderAnanlysis.getGender().equals("F"))
                            ageGenderF[3] += ageGenderAnanlysis.getNum();
                        else {
                            if (ageGenderAnanlysis.getAge() < 40 && ageGenderAnanlysis.getAge() >= 35 && ageGenderAnanlysis.getGender().equals("F"))
                                ageGenderF[4] += ageGenderAnanlysis.getNum();
                            else {
                                if (ageGenderAnanlysis.getAge() < 50 && ageGenderAnanlysis.getAge() >= 40 && ageGenderAnanlysis.getGender().equals("F"))
                                    ageGenderF[5] += ageGenderAnanlysis.getNum();
                                else
                                if(ageGenderAnanlysis.getGender().equals("F"))
                                    ageGenderF[6] += ageGenderAnanlysis.getNum();
                            }
                        }
                    }
                }
            }
        }
        return ageGenderF;
    }

}
