package com.example.User.controler;

import com.alibaba.fastjson.JSON;
import com.example.Common.BaseClasses.BaseController;
import com.example.Common.content.ResponseJson;
import com.example.Common.utils.StringUtil;
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
import java.util.UUID;

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

    @RequestMapping("/user/hasUser")
    @ResponseBody
    public String hasUser(String name){
        LOGGER.info("查找用户{}是否存在",name);
       List<UserBean> result = userService.findByUsername(name);
        if (result.isEmpty()){
            LOGGER.info("用户不存在");
            return "true";
        }
        LOGGER.info("用户已存在！");
        return "false";
    }

    @RequestMapping("/user/regist")
    @ResponseBody
    public String  userRegist(UserBean userInfo){
        userInfo.setUuid(StringUtil.GentorUUID());
        ResponseJson res = new ResponseJson();
        LOGGER.info("用户注册，注册信息{}",userInfo.toString());
        try {
            userService.insert(userInfo);
            res.setRes("0000","注册成功！");
        } catch (Exception e) {
            e.printStackTrace();
            res.setRes("9999","注册失败！");
        }


        return JSON.toJSONString(res);
    }

}
