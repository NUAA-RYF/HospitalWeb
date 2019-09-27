package com.ischoolbar.programmer.dao.admin;

import com.ischoolbar.programmer.entity.admin.User;
import org.springframework.stereotype.Repository;

/**
 *
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 12:09
 */

@Repository
public interface UserDao {
    User findByEmail(String email);

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
    int insertUser(User user);

    /**
     * 按ID更新用户信息
     * @param user 用户
     * @return     返回信息
     */
    int updateUser(User user);

    /**
     * 按ID修改用户密码
     * @param user 用户
     * @return     返回信息
     */
    int updateUserPasswordByID(User user);
}
