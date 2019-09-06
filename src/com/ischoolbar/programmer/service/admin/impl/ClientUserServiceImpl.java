package com.ischoolbar.programmer.service.admin.impl;

import com.ischoolbar.programmer.dao.admin.ClientUserDao;
import com.ischoolbar.programmer.entity.admin.ClientUser;

import com.ischoolbar.programmer.service.admin.ClientUserService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientUserServiceImpl implements ClientUserService {

    @Autowired
    private ClientUserDao clientUserDao;


    /**
     * 查询所有用户信息
     * @return 返回用户信息
     */
    @Override
    public JSONObject findAllUser() {
        JSONObject ret = new JSONObject();
        List<ClientUser> clientUserList = clientUserDao.findAllUser();
        if (clientUserList.size() <= 0){
            ret.put("type","error");
            ret.put("msg","用户列表为空!");
        }
        JSONArray result = new JSONArray();
        for (ClientUser client : clientUserList) {
            JSONObject user = new JSONObject();
            user.put("id",client.getId());
            user.put("username",client.getUsername());
            user.put("password",client.getPassword());
            user.put("phone",client.getPhone());
            result.add(user);
        }
        ret.put("type","success");
        ret.put("msg","查询成功!");
        ret.put("result",result);
        return ret;
    }

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
