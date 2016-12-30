package com.example.Common.BaseClasses;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by yang_huang on 2016/12/29.
 */
public abstract class BaseController {

    public static int pageNuber = 1;
    public static int pageSize = 10;

    private ModelAndView modelAndView;

    protected ModelAndView getAutoView(){
        if (null == modelAndView){
            modelAndView = new ModelAndView();
        }
        return modelAndView;
    }
}
