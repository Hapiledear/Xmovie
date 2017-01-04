<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/4
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/divTemplete.css" />
</head>
<body>
<div class="container">

    <div class="left_div col-md-9">
        <div class="d-head col-md-12" style="position: relative">
            <div class="d-head-l">
                <span class="d-head-t">
                    <a href="#">
                        <h2>${ctype}</h2>
                    </a>
                </span>
            </div>
            <div class="d-link-more" style="margin-top: 20px">
                <a href="#" class="btn btn-sm btn-info " style="text-decoration: none">更多</a>
            </div>
        </div>
        <div class="d-body col-md-12" style="clear: both">
            <ul class="v-list">
                <li>
                    <div class="v">
                        <a class="preview" href="#影片地址" title="电影名称">
                            <img src="${ctx}/images/preview.jpg" alt="电影title" style="opacity: 1">
                            <div class="x" style="background-color: #000">
                                <b class="x2">8:59</b>
                            </div>
                        </a>
                        <a href="#影片地址" title="电影title">
                            <div class="t">用户自己起的电影名称</div>
                            <div class="i">
                                <span><i class="fa fa-">5912</i></span><%--点击量--%>
                                <span style="float: right"><i class="fa fa-">200</i></span><%--评论量--%>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="right_div col-md-3">
        <div class="d-head">
            <div class="left" style="float: left">
                <span class="d-head-t" style="font-size: 18px;height: 24px;line-height: 24px">热门</span>
            </div>

        </div>
        <div class="d-body" style="clear: both">
            <ul class="rlist" style="padding-bottom: 20px;">
                <li style="margin-top: 20px;position: relative; padding-left: 25px">
                    <i class="number n1">1</i>
                    <a class="rl-info" href="#" title="title">
                        <div class="title t">用户定义的title</div>
                    </a>
                </li>
            </ul>
            <div class="more-link">
                <a href="#" class="btn btn-sm col-md-12" >查看更多</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
