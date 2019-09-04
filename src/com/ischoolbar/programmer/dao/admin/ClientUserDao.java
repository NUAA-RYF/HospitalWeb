package com.ischoolbar.programmer.dao.admin;

import com.ischoolbar.programmer.entity.admin.ClientUser;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientUserDao {
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
