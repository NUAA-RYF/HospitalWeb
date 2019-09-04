package com.ischoolbar.programmer.controller.admin;

import com.ischoolbar.programmer.entity.admin.ClientUser;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.ClientUserService;
import com.ischoolbar.programmer.service.admin.UserService;
import com.ischoolbar.programmer.util.CpachaUtil;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


/**
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/7/27 16:31
 */
@Controller
@RequestMapping("/system")
public class SystemController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientUserService clientUserService;

    /**
     * 主页面
     * @param model 模型和视图
     * @return 返回视图
     */
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public ModelAndView index(ModelAndView model){
        model.setViewName("system/index");
        return model;
    }

    /**
     * 证书页面
     * @param model 模型和视图
     * @return 返回视图
     */
    @RequestMapping(value = "/license",method = RequestMethod.GET)
    public ModelAndView license(ModelAndView model){
        model.setViewName("system/license");
        return model;
    }

    /**
     * 登录页面
     * @param model 模型和视图
     * @return 返回视图
     */
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView login(ModelAndView model){
        model.setViewName("system/login");
        model.addObject("name","键值对形式");//键值对形式传值
        return model;
    }

    /**
     * 获取验证码
     * @param vcodeLen 验证码长度
     * @param width 图片宽度
     * @param height 图片长度
     * @param cpachaType 验证码类型
     * @param request 请求
     * @param response 响应
     */
    @RequestMapping(value = "/getCpachaUtil",method = RequestMethod.GET)
    public void getCpachaUtil(
            @RequestParam(name = "vl",required = false,defaultValue = "4") Integer vcodeLen,
            @RequestParam(name = "w",required = false,defaultValue = "100") Integer width,
            @RequestParam(name = "h",required = false,defaultValue = "30") Integer height,
            @RequestParam(name = "type", defaultValue = "loginCpacha") String cpachaType,
            HttpServletRequest request, HttpServletResponse response){
        CpachaUtil mCpachaUtil = new CpachaUtil(vcodeLen,width,height);
        String mGeneratorVCode = mCpachaUtil.generatorVCode();
        request.getSession().setAttribute(cpachaType, mGeneratorVCode);
        BufferedImage image = mCpachaUtil.generatorRotateVCodeImage(mGeneratorVCode,true);
        try {
            ImageIO.write(image,"gif",response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 登录表单提交处理
     * @param user 用户
     * @param cpacha 验证码
     * @return 返回映射
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> loginAction(User user,String cpacha,HttpServletRequest request)  {
        Map<String,String> ret = new HashMap<>();
        if (user == null){
            ret.put("type","error");
            ret.put("msg","请填写用户信息!");
            return ret;
        }
        Object loginCpacha = request.getSession().getAttribute("loginCpacha");
        if (loginCpacha == null){
            ret.put("type","error");
            ret.put("msg","超时,请刷新页面!");
            return ret;
        }
        boolean cpachaIsCorrect = !cpacha.toUpperCase().equals(loginCpacha.toString().toUpperCase());
        if (cpachaIsCorrect){
            ret.put("type","error");
            ret.put("msg","验证码错误!");
            return ret;
        }

        User currentUser = userService.findByUserName(user.getUsername());
        if (currentUser == null){
            ret.put("type","error");
            ret.put("msg","用户名不存在!");
            return ret;
        }
        if (!user.getPassword().equals(currentUser.getPassword())){
            ret.put("type","error");
            ret.put("msg","密码错误!");
            return ret;
        }
        request.getSession().setAttribute("admin",currentUser);
        ret.put("type","success");
        ret.put("msg","登录成功!");
        return ret;
    }


    /**
     * 客户端账号密码登录
     * @param username 用户名
     * @param password 密码
     * @return 成功返回JSON格式字符串
     * clientUserLogin?username=?&password=?
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
     * clientUserSignUp?username=?&password=?&phone=?
     */
    @RequestMapping(value = "/clientUserSignUp",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject clientUserSignUpAction(String username,String password,String phone){
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
