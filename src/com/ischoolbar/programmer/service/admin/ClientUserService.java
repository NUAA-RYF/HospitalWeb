package com.ischoolbar.programmer.service.admin;

import com.ischoolbar.programmer.entity.admin.ClientUser;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface ClientUserService {
    /**
     * 查询所有用户信息
     * @return 返回用户信息
     */
    JSONObject findAllUser();
    /**
     * 按用户名查找用户
     * @param username 用户名
     * @return 返回用户类
     */
    ClientUser findByUserName(String username);

    /**
     * 按手机号查找用户
     * @param phone 手机号
     * @return 返回用户类
     */
    ClientUser findByPhone(String phone);

    /**
     * 保存用户信息
     * @param clientUser 用户类
     * @return 返回int类型值
     */
    int saveClientUser(ClientUser clientUser);
}
