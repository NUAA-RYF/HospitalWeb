package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.service.admin.FirstAidService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/firstAid")
public class FirstAidController {


    @Autowired
    FirstAidService firstAidService;

    /**
     * 按用户名查找急救信息
     * @param username 用户名
     * @return         返回信息
     */
    @RequestMapping(value = "/findFirstAidList",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findFirstAidList(String username){
        return firstAidService.findFirstAidListByUserName(username);
    }


    /**
     * 添加急救信息
     * @param firstAidJson 急救信息
     * @return             返回信息
     */
    @RequestMapping(value = "/insertFirstAid",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject insertFirstAid(String firstAidJson){
        return firstAidService.insertFirstAid(firstAidJson);
    }

    /**
     * 按ID删除急救信息
     * @param id ID
     * @return   返回信息
     */
    @RequestMapping(value = "/deleteFirstAid",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject deleteFirstAidById(String id){
        return firstAidService.deleteFirstAidById(id);
    }



}
