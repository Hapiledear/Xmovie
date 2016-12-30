package com.example.User.domain.pojo;

public class Role {
    private String uuid;

    /**
    * 角色名称
    */
    private String roleName;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}