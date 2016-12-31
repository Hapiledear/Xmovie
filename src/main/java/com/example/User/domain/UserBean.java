package com.example.User.domain;

import com.example.User.domain.pojo.User;

/**
 * Created by yang_huang on 2016/12/29.
 */
public class UserBean extends User {
    private String roleName;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleNames(String roleName) {
        this.roleName = roleName;
    }


    @Override
    public String toString() {
        return "UserBean{" +
                "roleName='" + roleName + '\'' +super.toString()+
                '}';
    }
}
