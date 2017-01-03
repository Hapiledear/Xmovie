package com.example.User.controler;

import com.example.Common.BaseClasses.BaseController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by yang_huang on 2017/1/3.
 */
@Controller
@RequestMapping("/tv")
public class TelevisionController extends BaseController {

    private static final Logger LOGGER = LoggerFactory.getLogger(TelevisionController.class);

    @RequestMapping("/homePage")
    public ModelAndView TVHome(){
        LOGGER.info("获取电视剧有关信息");
        return getAutoView();
    }
}
