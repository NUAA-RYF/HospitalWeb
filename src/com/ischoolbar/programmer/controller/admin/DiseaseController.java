package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.entity.admin.Disease;
import com.ischoolbar.programmer.service.admin.DiseaseService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/disease")
public class DiseaseController {


    @Autowired
    private DiseaseService diseaseService;

    /**
     * 按用户名查找疾病信息
     * @param username 用户名
     * @return 返回疾病信息列表
     * /disease/findInfoByUserName?username=?
     */
    @RequestMapping(value = "/findInfoByUserName",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject findInfoByUserName(String username){
        JSONObject ret = new JSONObject();
        System.out.println("1");
        List<Disease> diseaseList = diseaseService.findByUserName(username);
        System.out.println("2");
        if (diseaseList.size() <= 0) {
            ret.put("type","error");
            ret.put("msg","暂无病情信息!");
            return ret;
        }
        System.out.println("3");
        JSONArray result = new JSONArray();
        for (Disease disease : diseaseList) {
            JSONObject object = new JSONObject();
            object.put("username", disease.getUsername());
            object.put("name", disease.getName());
            object.put("phone", disease.getPhone());
            object.put("gender", disease.getGender());
            object.put("address", disease.getAddress());
            object.put("diseaseName", disease.getDiseaseName());
            object.put("diseaseInfo", disease.getDiseaseInfo());
            result.add(object);
        }
        System.out.println("4");
        ret.put("type","success");
        ret.put("result",result);
        return ret;
    }

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return 返回信息
     * /disease/deleteById?id=?
     */
    @RequestMapping(value = "/deleteById",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject deleteById(String id){
        JSONObject ret = new JSONObject();
        System.out.println("1");
        int result = diseaseService.deleteById(Integer.parseInt(id));
        System.out.println("2");
        if (result <=0){
            ret.put("type","error");
            ret.put("msg","删除信息失败!");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","删除信息成功!");
        return ret;
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
    public JSONObject addInfo(String username,String name,String phone,
                              String gender,String address,String diseaseName,String diseaseInfo){
        JSONObject ret = new JSONObject();
        Disease newDisease = new Disease();
        newDisease.setUsername(username);
        newDisease.setName(name);
        newDisease.setPhone(phone);
        newDisease.setGender(gender);
        newDisease.setAddress(address);
        newDisease.setDiseaseName(diseaseName);
        newDisease.setDiseaseInfo(diseaseInfo);
        System.out.println("1");
        int result = diseaseService.addInfo(newDisease);
        System.out.println("2");
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","添加信息失败!");
            return ret;
        }

        ret.put("type","error");
        ret.put("msg","添加信息成功!");
        return ret;
    }
}
