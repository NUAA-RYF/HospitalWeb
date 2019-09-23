package com.ischoolbar.programmer.service.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface FirstAidService {

    /**
     * 按用户名查找急救信息
     * @param username 用户名
     * @return         返回信息
     */
    JSONObject findFirstAidListByUserName(String username);

    /**
     * 添加急救信息
     * @param firstAidJson 急救信息
     * @return             返回信息
     */
    JSONObject insertFirstAid(String firstAidJson);

    /**
     * 按ID删除急救信息
     * @param id ID
     * @return   返回信息
     */
    JSONObject deleteFirstAidById(String id);

    /**
     * 按急救信息处理状态查询
     * @return   返回信息
     */
    JSONObject findFirstAidByState();
}
