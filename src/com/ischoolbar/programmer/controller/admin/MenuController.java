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

    @RequestMapping(value = "/clientUserList",method = RequestMethod.GET)
    public ModelAndView list(ModelAndView model){
        model.setViewName("system/clientUserList");
        return model;
    }
}
