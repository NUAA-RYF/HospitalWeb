package com.ischoolbar.programmer.service.admin;

import com.ischoolbar.programmer.entity.admin.ClientUser;
import org.springframework.stereotype.Service;

@Service
public interface ClientUserService {
    ClientUser findByUserName(String username);
    ClientUser findByPhone(String phone);
    int saveClientUser(ClientUser clientUser);
}
