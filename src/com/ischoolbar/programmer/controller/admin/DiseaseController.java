package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.entity.admin.Disease;
import com.ischoolbar.programmer.service.admin.DiseaseService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/disease")
public class DiseaseController {


    @Autowired
    private DiseaseService diseaseService;

    /**
     * 按疾病ID查询疾病信息
     * @param id 疾病ID
     * @return   返回信息
     */
    @RequestMapping(value = "/findInfoById",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findDiseaseInfoById(String id){
        return diseaseService.findDiseaseInfoById(id);
    }

    /**
     * 按疾病ID修改疾病信息
     * @param disease 疾病信息
     * @return        返回信息
     * /disease/updateInfo
     */
    @RequestMapping(value = "/updateInfo",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject updateDiseaseInfoById(String disease){
        return diseaseService.updateDiseaseInfoById(disease);
    }

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
     * /disease/findInfoByUserName
     */
    @RequestMapping(value = "/findInfoByUserName",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findDiseaseInfoByUserName(String username){
        return diseaseService.findDiseaseInfoByUserName(username);
    }

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return 返回信息
     * /disease/deleteInfo?id=?
     */
    @RequestMapping(value = "/deleteInfo",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject deleteDiseaseInfoById(String id){
        return diseaseService.deleteDiseaseInfoById(Integer.parseInt(id));
    }

    /**
     * 添加疾病信息
     * @param disease 疾病信息
     * @return        返回信息
     * /disease/addInfo
     */
    @RequestMapping(value = "/addInfo",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject saveDiseaseInfo(String disease){
        return diseaseService.saveDiseaseInfo(disease);
    }

    /**
     * 按ID编辑疾病信息
     * @param disease 疾病信息
     * @return 返回信息
     */
    @RequestMapping(value = "/editDiseaseByID",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editDiseaseByID(Disease disease){
        return diseaseService.editDiseaseByID(disease);
    }

}
