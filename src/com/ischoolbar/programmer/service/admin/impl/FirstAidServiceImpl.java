package com.ischoolbar.programmer.service.admin.impl;

import com.google.gson.Gson;
import com.ischoolbar.programmer.dao.admin.FirstAidDao;
import com.ischoolbar.programmer.entity.admin.FirstAid;
import com.ischoolbar.programmer.service.admin.FirstAidService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FirstAidServiceImpl implements FirstAidService {

    @Autowired
    FirstAidDao firstAidDao;

    /**
     * 按用户名查找急救信息
     * @param username 用户名
     * @return         返回信息
     */
    @Override
    public JSONObject findFirstAidListByUserName(String username) {
        JSONObject ret = new JSONObject();
        List<FirstAid> mFirstAidList = firstAidDao.findFirstAidListByUserName(username);
        ret.put("type","success");
        ret.put("msg","查询成功!");
        JSONArray result = new JSONArray();
        for (FirstAid firstAid : mFirstAidList) {
            result.add(new Gson().toJson(firstAid));
        }
        ret.put("result",result);
        return ret;
    }

    /**
     * 添加急救信息
     * @param firstAidJson 急救信息
     * @return             返回信息
     */
    @Override
    public JSONObject insertFirstAid(String firstAidJson) {
        JSONObject ret = new JSONObject();
        FirstAid firstAid = new Gson().fromJson(firstAidJson, FirstAid.class);
        int result = firstAidDao.insertFirstAid(firstAid);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","添加失败!");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","添加成功!");
        return ret;
    }

    /**
     * 按ID删除急救信息
     * @param id ID
     * @return   返回信息
     */
    @Override
    public JSONObject deleteFirstAidById(String id) {
        JSONObject ret = new JSONObject();
        int result = firstAidDao.deleteFirstAidById(Integer.parseInt(id));
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","删除失败!");
            return ret;
        }
        ret.put("type","success");
        ret.put("msg","删除成功!");
        return ret;
    }


    /**
     * 按急救信息处理状态查询
     * @return   返回信息
     */
    @Override
    public JSONObject findFirstAidByState() {
        JSONObject ret = new JSONObject();
        JSONArray result = new JSONArray();
        List<FirstAid> firstAidList_waiting = firstAidDao.findFirstAidListByState(0);
        if (firstAidList_waiting.size() > 0){
            result.addAll(firstAidList_waiting);
        }
        List<FirstAid> firstAidList_handling = firstAidDao.findFirstAidListByState(1);
        if (firstAidList_handling.size() > 0){
            result.addAll(firstAidList_handling);
        }
        ret.put("type","success");
        ret.put("msg","查询急救信息成功!");
        ret.put("result",result);
        return ret;
    }
}
