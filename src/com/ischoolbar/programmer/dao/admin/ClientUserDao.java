package com.ischoolbar.programmer.dao.admin;

import com.ischoolbar.programmer.entity.admin.ClientUser;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientUserDao {
    ClientUser findByUserName(String username);
    ClientUser findByPhone(String phone);
    boolean saveClientUser(ClientUser clientUser);
}
