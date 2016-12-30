package com.example.User.domain.pojo;

public class User {
    private String uuid;

    /**
    * 用户的登陆账号
    */
    private String name;

    /**
    * 用户的登陆密码（MD5加密
）
    */
    private String passworld;

    private String email;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassworld() {
        return passworld;
    }

    public void setPassworld(String passworld) {
        this.passworld = passworld;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}