package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 用户实体类
 *
 * @author RuYifan
 * @studentID 161610124
 * @date 2019/8/10 9:38
 */

@Component
public class User {

    private long id;            //用户ID自增
    private String username;    //用户名
    private String password;    //密码
    private String nickname;    //昵称
    private String email;       //电子邮箱
    private int sex;            //性别,0未填写,1
    private Integer age;        //年龄
    private String address;     //地址
    private String photo;       //头像地址

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
