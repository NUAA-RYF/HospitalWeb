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

    @Override
    public ClientUser findByUserName(String username) {
        return clientUserDao.findByUserName(username);
    }

    @Override
    public ClientUser findByPhone(String phone) {
        return clientUserDao.findByPhone(phone);
    }

    @Override
    public boolean saveClientUser(ClientUser clientUser) {
        clientUserDao.saveClientUser(clientUser);

        return false;
    }
}
