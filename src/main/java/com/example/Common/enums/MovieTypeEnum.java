package com.example.Common.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by yang_huang on 2017/1/4.
 */
public enum  MovieTypeEnum implements PersistentEnum<String> {

    ABOUT_MOVIE("about_movie","电影相关"),
    short_movie("short_movie","短片"),
    en_movie("en_movie","欧美电影"),
    jp_movie("jp_movie","日本电影"),
    cn_movie("cn_movie","国语电影"),
    oc_movie("oc_movie","其它国家");

    private String value;
    private String displayName;


    private MovieTypeEnum(String value, String displayName) {
        this.value = value;
        this.displayName = displayName;
    }

    @Override
    public String getValue() {
        return value;
    }

    @Override
    public String getDisplayName() {
        return displayName;
    }

    @SuppressWarnings("serial")
    public static final Map<String, String> PingToChinese = new HashMap<String, String>() {
        {
            MovieTypeEnum[] values = MovieTypeEnum.values();
            for (int i = 0; i < values.length; i++) {
                put(values[i].getValue(), values[i].getDisplayName());
            }
        }
    };
}
