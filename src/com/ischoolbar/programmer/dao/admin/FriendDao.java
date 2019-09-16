package com.ischoolbar.programmer.dao.admin;

import com.ischoolbar.programmer.entity.admin.Friend;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FriendDao {

    /**
     * 按用户名查找好友列表信息
     * @param username 用户名
     * @return         返回信息
     */
    List<Friend> findFriendListByUserName(String username);

    /**
     * 按ID查找好友信息
     * @param id ID
     * @return   返回好友信息
     */
    Friend findFriendByID(int id);

    /**
     * 添加好友信息
     * @param friend 好友信息
     * @return           返回信息
     */
    int insertFriend(Friend friend);

    /**
     * 更新好友信息
     * @param friend 好友信息
     * @return       返回信息
     */
    int updateFriendByID(Friend friend);

    /**
     * 更新好友关联状态
     * @param friend 好友信息
     * @return       返回信息
     */
    int updateFriendClose(Friend friend);

    /**
     * 按ID删除好友信息
     * @param id ID
     * @return   返回信息
     */
    int deleteFriendByID(int id);

    /**
     * 按用户名查找关联个数
     * @param friend 好友信息
     * @return       返回信息
     */
    int findFriendCountByUserName(Friend friend);
}
