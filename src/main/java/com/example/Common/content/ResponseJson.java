package com.example.Common.content;

/**
 * Created by yang_huang on 2016/12/31.
 */
public class ResponseJson {
    private String resCode;
    private String resMsg;
    private Object context;

    public void setRes(String code,String msg){
        this.resCode = code;
        this.resMsg = msg;
    }

    public String getResCode() {
        return resCode;
    }

    public void setResCode(String resCode) {
        this.resCode = resCode;
    }

    public String getResMsg() {
        return resMsg;
    }

    public void setResMsg(String resMsg) {
        this.resMsg = resMsg;
    }

    public Object getContext() {
        return context;
    }

    public void setContext(Object context) {
        this.context = context;
    }
}
