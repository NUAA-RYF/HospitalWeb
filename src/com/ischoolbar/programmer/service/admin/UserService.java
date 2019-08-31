package com.ischoolbar.programmer.service.admin;

import com.ischoolbar.programmer.entity.admin.User;
import org.springframework.stereotype.Service;

/**
 * 用户Service
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 12:02
 */

@Service
public interface UserService {
    User findByUserName(String username);
}
