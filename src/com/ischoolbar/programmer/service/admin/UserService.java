package com.ischoolbar.programmer.service.admin;

import com.ischoolbar.programmer.entity.admin.User;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * 用户Service
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 12:02
 */

@Service
public interface UserService {

    /**
     * 按用户名查询用户
     * @param username 用户
     * @return         返回信息
     */
    User findByUserName(String username);

    /**
     * 按ID修改用户信息
     * @param user 用户
     * @return     返回信息
     */
    JSONObject insertUser(User user);

    /**
     * 按ID更新用户信息
     * @param user 用户
     * @return     返回信息
     */
    JSONObject updateUser(User user, HttpServletRequest request);

    /**
     * 按ID修改用户密码
     * @param user 用户
     * @return     返回信息
     */
    JSONObject updateUserPassword(User user);
}
