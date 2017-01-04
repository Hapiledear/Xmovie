package com.example.User.controler;

import com.example.Common.BaseClasses.BaseController;
import com.example.Common.enums.MovieTypeEnum;
import com.sun.javafx.collections.MappingChange;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by yang_huang on 2017/1/4.
 */
@Controller
public class CommonController extends BaseController {

    private static final Logger LOGGER = LoggerFactory.getLogger(CommonController.class);

    @RequestMapping("divTemplete")
    public ModelAndView divTemplete(String type){
        String Ctype = MovieTypeEnum.PingToChinese.get(type);
        LOGGER.info("获取{}的相关信息，并返回页面",Ctype);
        // TODO: 2017/1/4  逻辑
        return getAutoView().addObject("type",type).addObject("ctype",Ctype);
    }

}
