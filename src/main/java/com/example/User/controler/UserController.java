package com.example.User.controler;

import com.example.Common.BaseClasses.BaseController;
import com.example.User.domain.UserBean;
import com.example.User.service.UserService;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by yang_huang on 2016/12/29.
 */
@Controller
public class UserController extends BaseController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public ModelAndView login(){
        return getAutoView().addObject("message","John");
    }

    @RequestMapping("/admin")
    @ResponseBody
    @PreAuthorize("hasAnyRole('admin')")
    public String helloAdmin(){
        return "admin";
    }

    @RequestMapping("/user")
    @ResponseBody
    @PreAuthorize("hasAnyRole('admin','user')")
    public String helloUser(){
        return "user";
    }

   /* @RequestMapping("/user")
    public ModelAndView user(){
        LOGGER.info("进入controller");
        PageHelper.startPage(pageNuber,pageSize);
         List<UserBean> userList = userService.getAll();

        return getAutoView().addObject("users",userList);
    }*/
}
