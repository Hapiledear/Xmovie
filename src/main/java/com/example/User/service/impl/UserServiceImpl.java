package com.example.User.service.impl;

import com.example.User.domain.UserBean;
import com.example.User.mapper.UserMapper;
import com.example.User.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yang_huang on 2016/12/29.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public List<UserBean> getAll() {
        return null;
    }

    @Override
    public List<UserBean> findByUsername(String username) {

        return userMapper.findByUsername(username);
    }
}
