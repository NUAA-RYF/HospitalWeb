package com.ischoolbar.programmer.service.admin.impl;

import com.google.gson.Gson;
import com.ischoolbar.programmer.dao.admin.FriendDao;
import com.ischoolbar.programmer.entity.admin.Friend;
import com.ischoolbar.programmer.service.admin.FriendService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FriendServiceImpl implements FriendService {


    @Autowired
    private FriendDao friendDao;

    /**
     * 按用户名查找好友列表信息
     *
     * @param username 用户名
     * @return 返回信息
     */
    @Override
    public JSONObject findFriendListByUserName(String username) {
        JSONObject ret = new JSONObject();
        List<Friend> mFriendList = friendDao.findFriendListByUserName(username);
        if (mFriendList.size() <= 0) {
            ret.put("type", "error");
            ret.put("msg", "查询成功,好友列表为空!");
            return ret;
        }
        JSONArray result = new JSONArray();
        for (Friend friend : mFriendList) {
            result.add(new Gson().toJson(friend));
        }
        ret.put("type", "success");
        ret.put("msg", "查询成功!");
        ret.put("result", result);
        return ret;
    }

    /**
     * 按ID查找好友信息
     *
     * @param id ID
     * @return 返回好友信息
     */
    @Override
    public JSONObject findFriendByID(int id) {
        JSONObject ret = new JSONObject();
        Friend friend = friendDao.findFriendByID(id);
        if (friend == null) {
            ret.put("type", "error");
            ret.put("msg", "此好友信息为空!");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "查询成功!");
        ret.put("result", new Gson().toJson(friend));
        return ret;
    }

    /**
     * 添加好友信息
     *
     * @param friendJson 好友信息
     * @return 返回信息
     */
    @Override
    public JSONObject insertFriend(String friendJson) {
        JSONObject ret = new JSONObject();
        Friend friend = new Gson().fromJson(friendJson, Friend.class);
        int result = friendDao.insertFriend(friend);
        if (result <= 0) {
            ret.put("type", "error");
            ret.put("msg", "插入失败!");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "插入成功!");
        return ret;
    }

    /**
     * 更新好友信息
     *
     * @param friendJson 好友信息
     * @return 返回信息
     */
    @Override
    public JSONObject updateFriendByID(String friendJson) {
        JSONObject ret = new JSONObject();
        Friend friend = new Gson().fromJson(friendJson, Friend.class);
        int result = friendDao.updateFriendByID(friend);
        if (result <= 0) {
            ret.put("type", "error");
            ret.put("msg", "好友信息更新失败!");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "好友信息更新成功!");
        return ret;
    }

    /**
     * 更新好友关联状态
     *
     * @param id    好友ID
     * @param close 关联信息
     * @return 返回信息
     */
    @Override
    public JSONObject updateFriendClose(int id, String username, boolean close) {
        JSONObject ret = new JSONObject();
        Friend friend = new Friend();
        friend.setId(id);
        friend.setClose(close);
        if (close) {
            List<Friend> list = friendDao.findFriendListByUserName(username);
            if (list.size() > 3) {
                ret.put("type", "error");
                ret.put("msg", "关联人数不得超过3人,关联更新失败!");
                return ret;
            }
        }
        int result = friendDao.updateFriendClose(friend);
        if (result <= 0) {
            ret.put("type", "error");
            ret.put("msg", "关联更新失败!");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "关联更新成功!");
        return ret;
    }

    /**
     * 按ID删除好友信息
     *
     * @param id ID
     * @return 返回信息
     */
    @Override
    public JSONObject deleteFriendByID(int id) {
        JSONObject ret = new JSONObject();
        int result = friendDao.deleteFriendByID(id);
        if (result <= 0) {
            ret.put("type", "error");
            ret.put("msg", "删除好友信息失败!");
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "删除好友信息成功!");
        return ret;
    }


}
