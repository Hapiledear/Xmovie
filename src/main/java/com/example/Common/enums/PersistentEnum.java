package com.example.Common.enums;

/**
 * Created by yang_huang on 2017/1/4.
 */
public interface PersistentEnum<T> {
    T getValue();

    String getDisplayName();
}
