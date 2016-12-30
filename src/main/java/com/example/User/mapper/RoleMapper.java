package com.example.User.mapper;

import com.example.User.domain.pojo.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(String uuid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(String uuid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}