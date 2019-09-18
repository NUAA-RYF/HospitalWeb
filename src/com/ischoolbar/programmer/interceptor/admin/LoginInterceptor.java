package com.ischoolbar.programmer.interceptor.admin;

import net.sf.json.JSONObject;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * 后台登录拦截器
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/17 9:33
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        String requestURI = request.getRequestURI();
        Object admin = request.getSession().getAttribute("admin");
        if (admin == null){
            //未登录或者登录失效
            String header = request.getHeader("X-Request-With");
            //是否为Ajax请求
            Map<String,String> ret = new HashMap<>();
            if (header.equals("XMLHttpRequest")){
                ret.put("type","error");
                ret.put("msg","请重新登陆!");
                response.getWriter().write(JSONObject.fromObject(ret).toString());
                return false;
            }
            ret.put("type","error");
            ret.put("msg","请重新登陆!");
            response.sendRedirect(request.getServletContext().getContextPath()+"/system/login");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
