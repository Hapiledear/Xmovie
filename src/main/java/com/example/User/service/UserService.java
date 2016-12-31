package com.example.User.service;

import com.example.User.domain.UserBean;

import java.util.List;

/**
 * Created by yang_huang on 2016/12/29.
 */
public interface UserService {
    List<UserBean> getAll();

    List<UserBean> findByUsername(String username);

    void insert(UserBean user);
}
