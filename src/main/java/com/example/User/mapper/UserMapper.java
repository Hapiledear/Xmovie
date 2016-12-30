package com.example.User.mapper;

import com.example.User.domain.UserBean;
import com.example.User.domain.pojo.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String uuid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String uuid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<UserBean> findByUsername(String username);
}