package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.entity.admin.Disease;
import com.ischoolbar.programmer.service.admin.DiseaseService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/disease")
public class DiseaseController {


    @Autowired
    private DiseaseService diseaseService;



    /**
     * 查询全部疾病信息
     * @return 返回疾病信息
     * /disease/findAll
     */
    @RequestMapping("/findAll")
    @ResponseBody
    public JSONObject findAllDiseaseInfo(){
        return diseaseService.findAllDiseaseInfo();
    }
    /**
     * 按用户名查找疾病信息
     * @param username 用户名
     * @return 返回疾病信息列表
     * /disease/findInfoByUserName?username=?
     */
    @RequestMapping(value = "/findInfoByUserName",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject findDiseaseInfoByUserName(String username){
        return diseaseService.findDiseaseInfoByUserName(username);
    }

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return 返回信息
     * /disease/deleteById?id=?
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject deleteDiseaseInfoById(String id){
        return diseaseService.deleteDiseaseInfoById(Integer.parseInt(id));
    }


    /**
     * 添加疾病信息
     * @param username 用户名
     * @param name 患者姓名
     * @param phone 手机号
     * @param gender 性别
     * @param address 地址
     * @param diseaseName 疾病名称
     * @param diseaseInfo 疾病信息
     * @return 返回提示信息
     * /disease/addInfo?username=?&name=?&phone=?&gender=?&address=?&diseaseName=?&diseaseInfo=?
     */
    @RequestMapping(value = "/addInfo",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject saveDiseaseInfo(String username,String name,
                                      String phone, String gender,
                                      String address,String diseaseName,String diseaseInfo){
        Disease disease = new Disease();
        disease.setUsername(username);
        disease.setName(name);
        disease.setPhone(phone);
        disease.setGender(gender);
        disease.setAddress(address);
        disease.setDiseaseName(diseaseName);
        disease.setDiseaseInfo(diseaseInfo);
        return diseaseService.saveDiseaseInfo(disease);
    }


}
