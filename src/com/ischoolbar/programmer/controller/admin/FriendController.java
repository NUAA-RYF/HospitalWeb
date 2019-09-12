package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.service.admin.FriendService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/friend")
public class FriendController {

    @Autowired
    private FriendService friendService;

    /**
     * 按用户名查找好友列表信息
     * @param username 用户名
     * @return 返回列表信息
     * /friend/findFriendList
     */
    @RequestMapping(value = "/findFriendList",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findFriendListByUserName(String username){
        return friendService.findFriendListByUserName(username);
    }

    /**
     * 按ID查找好友信息
     * @param id ID
     * @return   返回好友信息
     * /friend/findFriend?id=?
     */
    @RequestMapping(value = "/findFriend",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findFriendByID(int id){
        return friendService.findFriendByID(id);
    }

    /**
     * 添加好友信息
     * @param friendJson 好友信息
     * @return           返回信息
     * /friend/insertFriend/
     */
    @RequestMapping(value = "/insertFriend",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject insertFriend(String friendJson){
        return friendService.insertFriend(friendJson);
    }

    /**
     * 更新好友信息
     * @param friendJson 好友信息
     * @return           返回信息
     * /friend/updateFriend/
     */
    @RequestMapping(value = "/updateFriend",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject updateFriendByID(String friendJson){
        return friendService.updateFriendByID(friendJson);
    }

    /**
     * 更新好友关联状态
     * @param id    好友ID
     * @param close 关联信息
     * @return      返回信息
     * /friend/updateFriendClose
     */
    @RequestMapping(value = "/updateFriendClose",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject updateFriendClose(int id,boolean close){
        return friendService.updateFriendClose(id,close);
    }

    /**
     * 按ID删除好友信息
     * @param id ID
     * @return   返回信息
     * /friend/deleteFriend
     */
    @RequestMapping(value = "/deleteFriend",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject deleteFriendByID(int id){
        return friendService.deleteFriendByID(id);
    }

}
