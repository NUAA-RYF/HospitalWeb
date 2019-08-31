package com.ischoolbar.programmer.dao.admin;

import com.ischoolbar.programmer.entity.admin.User;
import org.springframework.stereotype.Repository;

/**
 *
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 12:09
 */

@Repository
public interface UserDao {
    User findByUserName(String username);
}
