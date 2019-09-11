package com.ischoolbar.programmer.service.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface FriendService {

    /**
     * 按用户名查找好友列表信息
     * @param username 用户名
     * @return         返回信息
     */
    JSONObject findFriendListByUserName(String username);

    /**
     * 按ID查找好友信息
     * @param id ID
     * @return   返回好友信息
     */
    JSONObject findFriendByID(int id);

    /**
     * 添加好友信息
     * @param friendJson 好友信息
     * @return           返回信息
     */
    JSONObject insertFriend(String friendJson);

    /**
     * 更新好友信息
     * @param friendJson 好友信息
     * @return           返回信息
     */
    JSONObject updateFriendByID(String friendJson);

    /**
     * 更新好友关联状态
     * @param id    好友ID
     * @param close 关联信息
     * @return      返回信息
     */
    JSONObject updateFriendClose(int id,boolean close);

    /**
     * 按ID删除好友信息
     * @param id ID
     * @return   返回信息
     */
    JSONObject deleteFriendByID(int id);
}
