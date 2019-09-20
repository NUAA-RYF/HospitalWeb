package com.ischoolbar.programmer.service.admin;

import com.ischoolbar.programmer.entity.admin.Disease;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface DiseaseService {

    /**
     * 按疾病ID查询疾病信息
     * @param id 疾病ID
     * @return   返回信息
     */
    JSONObject findDiseaseInfoById(String id);

    /**
     * 按疾病ID修改疾病信息
     * @param disease 疾病信息
     * @return        返回信息
     */
    JSONObject updateDiseaseInfoById(String disease);

    /**
     * 查询全部疾病信息
     * @return 返回疾病信息
     */
    JSONObject findAllDiseaseInfo();

    /**
     * 按用户名查找疾病信息
     * @param username 用户名
     * @return         返回疾病信息列表
     */
    JSONObject findDiseaseInfoByUserName(String username);

    /**
     * 按疾病ID删除疾病信息
     * @param id 疾病ID
     * @return   返回是否删除成功
     */
    JSONObject deleteDiseaseInfoById(int id);

    /**
     * 添加疾病信息
     * @param disease 疾病信息类
     * @return        返回是否添加成功
     */
    JSONObject saveDiseaseInfo(String disease);

    /**
     * 按ID编辑疾病信息
     * @param disease 疾病信息
     * @return 返回信息
     */
    JSONObject editDiseaseByID(Disease disease);
}
