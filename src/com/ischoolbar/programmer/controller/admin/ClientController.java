package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.entity.admin.ClientUser;
import com.ischoolbar.programmer.service.admin.ClientUserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/client")
public class ClientController {


    @Autowired
    private ClientUserService clientUserService;

    /**
     * 查询所有用户信息
     * @return 用户信息列表
     * /client/findAll
     */
    @RequestMapping(value = "/findAll")
    @ResponseBody
    public JSONObject findAllClientUser(){
        return clientUserService.findAllUser();
    }
    /**
     * 客户端账号密码登录
     * @param username 用户名
     * @param password 密码
     * @return 成功返回JSON格式字符串
     * /client/clientUserLogin?username=?&password=?
     */
    @RequestMapping(value = "/clientUserLogin",method = RequestMethod.GET)
    @ResponseBody
    public  JSONObject clientUserLoginAction(String username,String password){
        JSONObject ret = new JSONObject();
        ClientUser mClientUser = clientUserService.findByUserName(username);
        if (mClientUser == null){
            ret.put("type","error");
            ret.put("msg","用户不存在!");
            return ret;
        }

        if (!password.equals(mClientUser.getPassword())){
            ret.put("type","error");
            ret.put("msg","密码错误!");
            return ret;
        }
        ret.put("type","success");
        ret.put("id",mClientUser.getId());
        ret.put("username",mClientUser.getUsername());
        ret.put("password",mClientUser.getPassword());
        ret.put("phone",mClientUser.getPhone());
        return ret;
    }

    /**
     * 客户端账号注册
     * @param username 用户名
     * @param password 密码
     * @param phone    手机号
     * @return 返回JSON格式字符串
     * /client/clientUserSignUp?username=?&password=?&phone=?
     */
    @RequestMapping(value = "/clientUserSignUp",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject clientUserSignUpAction(String username, String password, String phone){
        JSONObject ret = new JSONObject();
        System.out.println("username: " + username + "  password: " + password + "  phone: " + phone);
        ClientUser mClientUser = clientUserService.findByUserName(username);
        if (mClientUser != null){
            ret.put("type","error");
            ret.put("msg","用户已存在!");
            return ret;
        }

        mClientUser = clientUserService.findByPhone(phone);
        if (mClientUser != null){
            ret.put("type","error");
            ret.put("msg","手机号已注册!");
            return ret;
        }

        mClientUser = new ClientUser();
        mClientUser.setUsername(username);
        mClientUser.setPassword(password);
        mClientUser.setPhone(phone);
        int result = clientUserService.saveClientUser(mClientUser);
        if (result <= 0){
            ret.put("type","error");
            ret.put("msg","注册失败!");
            return ret;
        }

        mClientUser = clientUserService.findByUserName(username);
        ret.put("type","success");
        ret.put("msg","注册成功!");
        ret.put("id",mClientUser.getId());
        return ret;
    }
}
