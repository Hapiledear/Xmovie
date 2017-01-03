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
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
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
        return getAutoView();
    }

    //主页面
    @RequestMapping("/home")
    public ModelAndView home(){
        String userName = null;
        try {
            UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                    .getAuthentication()
                    .getPrincipal();
            userName = userDetails.getUsername();
        } catch (Exception e) {
          //  e.printStackTrace();
        }
        return getAutoView().addObject("userName",userName);
    }

    //登陆成功页面
    @RequestMapping("/login/success")
    @ResponseBody
    public String loginSuccess(){
        LOGGER.info("登陆验证成功！");
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        LOGGER.info("用户信息{}",userDetails.getAuthorities().toString());
        ResponseJson res = new ResponseJson();
        res.setRes("0000","登陆成功！");

        return  JSON.toJSONString(res);
    }



    //登陆失败页面
    @RequestMapping("/login/fail")
    @ResponseBody
    public String loginFail(){
        LOGGER.info("登陆验证失败！");
        ResponseJson res = new ResponseJson();
        res.setRes("9999","登陆失败！");

        return  JSON.toJSONString(res);
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
