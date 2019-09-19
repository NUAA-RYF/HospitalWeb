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
        if (clientUserList.size() <= 0) {
            ret.put("type", "error");
            ret.put("msg", "用户列表为空!");
        }
        JSONArray result = new JSONArray();
        for (ClientUser client : clientUserList) {
            JSONObject user = new JSONObject();
            user.put("id", client.getId());
            user.put("username", client.getUsername());
            user.put("password", client.getPassword());
            user.put("phone", client.getPhone());
            result.add(user);
        }
        ret.put("type", "success");
        ret.put("msg", "查询成功!");
        ret.put("result", result);
        return ret;
    }

    /**
     * 按用户名查找用户
     *
     * @param username 用户名
     * @return 返回用户类
     */
    @Override
    public ClientUser findByUserName(String username) {
        return clientUserDao.findByUserName(username);
    }

    /**
     * 按手机号查找用户
     *
     * @param phone 手机号
     * @return 返回用户类
     */
    @Override
    public ClientUser findByPhone(String phone) {
        return clientUserDao.findByPhone(phone);
    }

    /**
     * 保存用户信息
     *
     * @param clientUser 用户类
     * @return 返回int类型值
     */
    @Override
    public int saveClientUser(ClientUser clientUser) {
        return clientUserDao.saveClientUser(clientUser);
    }

    /**
     * 按用户ID更新用户信息
     *
     * @param clientUser 用户信息
     * @return 返回信息
     */
    @Override
    public JSONObject clientUserEdit(ClientUser clientUser) {
        JSONObject ret = new JSONObject();
        if (clientUser == null) {
            ret.put("type", "error");
            ret.put("msg", "用户信息不得为空!");
            return ret;
        }
        if (clientUser.getUsername().equals("") ||
                clientUser.getUsername().length() > 15 ||
                clientUser.getUsername().length() < 6) {
            ret.put("type", "error");
            ret.put("msg", "用户名不得为空且为6-15位!");
            return ret;
        }
        if (clientUser.getPassword().equals("") ||
                clientUser.getPassword().length() > 18 ||
                clientUser.getPassword().length() < 6) {
            ret.put("type", "error");
            ret.put("msg", "密码不得为空且为6-18位!");
            return ret;
        }
        if (clientUser.getPhone().length() != 11) {
            ret.put("type", "error");
            ret.put("msg", "手机号必须为11位!");
            return ret;
        } else {
            String phone = clientUser.getPhone();
            for (int i = 0; i < phone.length(); i++) {
                char word = phone.charAt(i);
                if (word > '9' || word < '0') {
                    ret.put("type", "error");
                    ret.put("msg", "手机号仅能为数字!");
                    return ret;
                }
            }
            ClientUser currentUser = clientUserDao.findByPhone(phone);
            if (currentUser != null){
                ret.put("type", "error");
                ret.put("msg", "手机号已存在!");
                return ret;
            }
        }

        if (clientUser.getId() == 0) {
            //执行添加操作
            int result = clientUserDao.saveClientUser(clientUser);
            if (result <= 0) {
                ret.put("type", "error");
                ret.put("msg", "添加用户:" + clientUser.getUsername() + "失败!");
                return ret;
            }
            ret.put("type", "success");
            ret.put("msg", "添加用户:" + clientUser.getUsername() + "成功!");
            return ret;
        } else {
            //执行修改操作
            int result = clientUserDao.updateClientUserByID(clientUser);
            if (result <= 0) {
                ret.put("type", "error");
                ret.put("msg", "更新用户:" + clientUser.getUsername() + "失败!");
                return ret;
            }
            ret.put("type", "success");
            ret.put("msg", "修改用户:" + clientUser.getUsername() + "成功!");
            return ret;
        }
    }

    /**
     * 按用户ID删除用户
     * @param id 用户ID
     * @return 返回信息
     */
    @Override
    public JSONObject clientUserDeleteByID(String id) {
        JSONObject ret = new JSONObject();
        if (id.equals("")){
            ret.put("type", "error");
            ret.put("msg", "删除失败,ID为空!");
            return ret;
        }
        int result = clientUserDao.deleteClientUserByID(Integer.parseInt(id));
        if (result < 1){
            ret.put("type", "error");
            ret.put("msg", "删除失败!");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "删除成功!");
        return ret;
    }
}
