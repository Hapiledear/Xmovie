package com.example.Common.config;

import com.example.User.domain.UserBean;
import com.example.User.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yang_huang on 2016/12/29.
 */
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<UserBean> userList = userService.findByUsername(username);
        if(userList == null || userList.isEmpty()){
            throw new UsernameNotFoundException("not found");
        }
        // TODO: 2016/12/29 从数据库中读取角色信息
        String userName = userList.get(0).getName();
        String passworld = userList.get(0).getPassworld();
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        for (UserBean user:userList) {
            authorities.add(new SimpleGrantedAuthority(user.getRoleName()));
            System.err.println("username is " + username + ", " + user.getRoleName());
        }
        return new org.springframework.security.core.userdetails.User(userName,
                passworld, authorities);
    }
}
