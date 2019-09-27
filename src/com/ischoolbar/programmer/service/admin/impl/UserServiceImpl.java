package com.ischoolbar.programmer.service.admin.impl;

import com.ischoolbar.programmer.dao.admin.UserDao;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 12:12
 */

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    /**
     * 按用户名查询用户
     * @param username 用户名
     * @return         返回信息
     */
    @Override
    public User findByUserName(String username){
        return userDao.findByUserName(username);
    }

    /**
     * 添加用户信息
     * @param user 用户
     * @return     返回信息
     */
    @Override
    public JSONObject insertUser(User user) {
        JSONObject ret = new JSONObject();
        int length = user.getPassword().length();
        if (length <6 || length> 18){
            ret.put("type","error");
            ret.put("msg","密码应为6-18位!");
            return  ret;
        }
        User userByName = userDao.findByUserName(user.getUsername());
        if (userByName != null){
            ret.put("type","error");
            ret.put("msg","用户名已存在!");
            return  ret;
        }
        User userByEmail = userDao.findByEmail(user.getEmail());
        if (userByEmail != null){
            ret.put("type","error");
            ret.put("msg","电子邮箱已存在!");
            return  ret;
        }
        int result = userDao.insertUser(user);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","添加失败!");
            return  ret;
        }
        ret.put("type","success");
        ret.put("msg","添加成功!");
        return  ret;
    }

    /**
     * 按ID更新用户信息
     * @param user 用户
     * @return     返回信息
     */
    @Override
    public JSONObject updateUser(User user, HttpServletRequest request) {
        JSONObject ret = new JSONObject();
        int result = userDao.updateUser(user);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","更新失败!");
            return  ret;
        }
        request.getSession().setAttribute("nickname",user.getNickname());
        request.getSession().setAttribute("email",user.getEmail());
        ret.put("type","success");
        ret.put("msg","更新成功!");
        return  ret;
    }

    /**
     * 按ID修改用户密码
     * @param user 用户
     * @return     返回信息
     */
    @Override
    public JSONObject updateUserPassword(User user) {
        JSONObject ret = new JSONObject();
        int result = userDao.updateUserPasswordByID(user);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","更新失败!");
            return  ret;
        }
        ret.put("type","success");
        ret.put("msg","更新成功!");
        return  ret;
    }
}
