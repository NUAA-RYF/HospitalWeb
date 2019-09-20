package com.ischoolbar.programmer.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/17 9:58
 */
@RequestMapping("/system")
@Controller
public class MenuController {

    /**
     * 客户端用户信息列表
     * @param model 视图
     * @return 返回视图
     */
    @RequestMapping(value = "/clientUserList",method = RequestMethod.GET)
    public ModelAndView clientList(ModelAndView model){
        model.setViewName("system/clientUserList");
        return model;
    }

    /**
     * 客户端疾病信息列表
     * @param model 视图
     * @return 返回视图
     */
    @RequestMapping(value = "/diseaseList",method = RequestMethod.GET)
    public ModelAndView diseaseList(ModelAndView model){
        model.setViewName("system/diseaseList");
        return model;
    }

    @RequestMapping(value = "/FirstAidList",method = RequestMethod.GET)
    public ModelAndView FirstAidList(ModelAndView model){
        model.setViewName("system/diseaseList");
        return model;
    }
}
