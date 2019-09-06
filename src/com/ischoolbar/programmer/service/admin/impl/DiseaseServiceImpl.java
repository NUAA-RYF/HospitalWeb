package com.ischoolbar.programmer.service.admin.impl;

import com.ischoolbar.programmer.dao.admin.DiseaseDao;
import com.ischoolbar.programmer.entity.admin.Disease;
import com.ischoolbar.programmer.service.admin.DiseaseService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiseaseServiceImpl implements DiseaseService {

    @Autowired
    private DiseaseDao diseaseDao;

    /**
     * 查询全部疾病信息
     * @return 返回疾病信息
     */
    @Override
    public JSONObject findAllDiseaseInfo() {
        JSONObject ret = new JSONObject();
        List<Disease> diseaseList = diseaseDao.findAllDiseaseInfo();
        if (diseaseList.size() <= 0){
            ret.put("type","error");
            ret.put("msg","无疾病信息!");
            return ret;
        }
        return getDiseaseList(ret, diseaseList);
    }


    /**
     * 按用户名查找疾病信息
     * @param username 用户名
     * @return         返回疾病信息列表
     */
    @Override
    public JSONObject findDiseaseInfoByUserName(String username) {
        JSONObject ret = new JSONObject();
        List<Disease> diseaseList = diseaseDao.findDiseaseInfoByUserName(username);
        if (diseaseList.size() <= 0){
            ret.put("type","error");
            ret.put("msg","用户"+username+"无疾病信息!");
            return ret;
        }
        return getDiseaseList(ret, diseaseList);
    }

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return   返回是否删除成功
     */
    @Override
    public JSONObject deleteDiseaseInfoById(int id) {
        JSONObject ret = new JSONObject();
        int result = diseaseDao.deleteDiseaseInfoById(id);
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
     * @param disease 疾病信息类
     * @return        返回是否添加成功
     */
    @Override
    public JSONObject saveDiseaseInfo(Disease disease) {
        JSONObject ret = new JSONObject();
        int result = diseaseDao.saveDiseaseInfo(disease);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","添加信息失败!");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","添加信息成功!");
        return ret;
    }

    /**
     * 将疾病列表转化为JSON字符串
     * @param ret         返回的疾病列表信息
     * @param diseaseList 疾病列表信息
     * @return            返回信息
     */
    private JSONObject getDiseaseList(JSONObject ret, List<Disease> diseaseList) {
        JSONArray result = new JSONArray();
        for (Disease disease : diseaseList) {
            JSONObject object = new JSONObject();
            object.put("id", disease.getId());
            object.put("username", disease.getUsername());
            object.put("name", disease.getName());
            object.put("phone", disease.getPhone());
            object.put("gender", disease.getGender());
            object.put("address", disease.getAddress());
            object.put("diseaseName", disease.getDiseaseName());
            object.put("diseaseInfo", disease.getDiseaseInfo());
            result.add(object);
        }
        ret.put("type","success");
        ret.put("msg","查询成功!");
        ret.put("result",result);
        return ret;
    }
}
