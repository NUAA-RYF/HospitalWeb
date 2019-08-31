package com.ischoolbar.programmer.service.admin.impl;

import com.ischoolbar.programmer.dao.admin.UserDao;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 12:12
 */

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Override
    public User findByUserName(String username){
        return userDao.findByUserName(username);
    }
}
