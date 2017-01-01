package com.example.Common.utils;

import java.util.UUID;

/**
 * Created by yang_huang on 2016/12/31.
 */
public class StringUtil {
    public static String GentorUUID(){
       return String.valueOf(UUID.randomUUID());
    }
}
