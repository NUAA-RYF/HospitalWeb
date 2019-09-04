package com.ischoolbar.programmer.service.admin.impl;

import com.ischoolbar.programmer.dao.admin.ClientUserDao;
import com.ischoolbar.programmer.entity.admin.ClientUser;

import com.ischoolbar.programmer.service.admin.ClientUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientUserServiceImpl implements ClientUserService {

    @Autowired
    private ClientUserDao clientUserDao;


    /**
     * 按用户名查找用户
     * @param username 用户名
     * @return 返回用户类
     */
    @Override
    public ClientUser findByUserName(String username) {
        return clientUserDao.findByUserName(username);
    }

    /**
     * 按手机号查找用户
     * @param phone 手机号
     * @return 返回用户类
     */
    @Override
    public ClientUser findByPhone(String phone) {
        return clientUserDao.findByPhone(phone);
    }

    /**
     * 保存用户信息
     * @param clientUser 用户类
     * @return 返回int类型值
     */
    @Override
    public int saveClientUser(ClientUser clientUser) {
        return clientUserDao.saveClientUser(clientUser);
    }
}
