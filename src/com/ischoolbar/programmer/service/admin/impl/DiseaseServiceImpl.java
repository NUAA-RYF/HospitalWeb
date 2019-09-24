package com.ischoolbar.programmer.service.admin.impl;

import com.google.gson.Gson;
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
     * 按疾病ID查询疾病信息
     * @param id 疾病ID
     * @return   返回信息
     */
    @Override
    public JSONObject findDiseaseInfoById(String id) {
        JSONObject ret = new JSONObject();
        Disease disease = diseaseDao.findDiseaseInfoById(Integer.parseInt(id));
        if (disease == null){
            ret.put("type","error");
            ret.put("msg","疾病列表为空!");
            return ret;
        }
        JSONObject result = JSONObject.fromObject(new Gson().toJson(disease));
        ret.put("type","success");
        ret.put("msg","查询成功!");
        ret.put("result",result);
        return ret;
    }

    /**
     * 按疾病ID修改疾病信息
     * @param diseaseInfo 疾病信息
     * @return            返回信息
     */
    @Override
    public JSONObject updateDiseaseInfoById(String diseaseInfo) {
        JSONObject ret = new JSONObject();
        Disease disease = new Gson().fromJson(diseaseInfo,Disease.class);
        int result = diseaseDao.updateDiseaseInfoById(disease);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","修改信息失败!");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","修改信息成功!");
        return ret;
    }

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
     * @param diseaseInfo 疾病信息
     * @return            返回信息
     */
    @Override
    public JSONObject saveDiseaseInfo(String diseaseInfo) {
        JSONObject ret = new JSONObject();
        Disease disease = new Gson().fromJson(diseaseInfo,Disease.class);
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
     * 按ID编辑疾病信息
     * @param disease 疾病信息
     * @return 返回信息
     */
    @Override
    public JSONObject editDiseaseByID(Disease disease) {
        JSONObject ret = new JSONObject();
        if (disease == null){
            ret.put("type","error");
            ret.put("msg","输入信息不得为空!");
            return ret;
        }

        //手机号判断
        if (disease.getPhone().length() != 11){
            ret.put("type","error");
            ret.put("msg","手机号为11位!");
            return ret;
        }else {
            String phone = disease.getPhone();
            for (int i = 0; i < 11; i++) {
                char word = phone.charAt(i);
                if (word < '0' || word >'9'){
                    ret.put("type","error");
                    ret.put("msg","手机号仅能为数字!");
                    return ret;
                }
            }
        }

        if (disease.getId() == 0){
            //添加操作
            int result = diseaseDao.saveDiseaseInfo(disease);
            if (result <=0){
                ret.put("type","error");
                ret.put("msg","疾病信息添加失败!");
                return ret;
            }
            ret.put("type","success");
            ret.put("msg","疾病信息添加成功!");
            return ret;
        }else {
            //更新操作
            int result = diseaseDao.updateDiseaseInfoById(disease);
            if (result <= 0){
                ret.put("type","error");
                ret.put("msg","疾病信息更新失败!");
                return ret;
            }
            ret.put("type","success");
            ret.put("msg","疾病信息更新成功!");
            return ret;
        }
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
            JSONObject object = JSONObject.fromObject(new Gson().toJson(disease));
            result.add(object);
        }
        ret.put("type","success");
        ret.put("msg","查询成功!");
        ret.put("result",result);
        return ret;
    }
}
