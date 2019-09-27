package com.ischoolbar.programmer.controller.admin;

import com.google.gson.Gson;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    /**
     * 按ID修改用户信息
     * @param user 用户
     * @return     返回信息
     */
    @RequestMapping(value = "/findUser",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findUser(User user){
        JSONObject ret = new JSONObject();
        User currentUser = userService.findByUserName(user.getUsername());
        if (currentUser == null){
            ret.put("type","error");
            ret.put("msg","用户不存在!");
            return  ret;
        }
        ret.put("type","success");
        ret.put("msg","查询成功!");
        ret.put("result",new Gson().toJson(currentUser));
        return  ret;
    }

    /**
     * 按ID修改用户信息
     * @param user 用户
     * @return     返回信息
     */
    @RequestMapping(value = "/insertUser",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject insertUser(User user){
        return userService.insertUser(user);
    }

    /**
     * 按ID更新用户信息
     * @param user 用户
     * @return     返回信息
     */
    @RequestMapping(value = "/updateUser",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject updateUser(User user, HttpServletRequest request){
        return userService.updateUser(user,request);
    }

    /**
     * 按ID修改用户密码
     * @param user 用户
     * @return     返回信息
     */
    @RequestMapping(value = "/updateUserPassword",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject updateUserPassword(User user){
        return userService.updateUserPassword(user);
    }
}
