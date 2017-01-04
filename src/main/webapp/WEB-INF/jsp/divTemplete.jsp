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
    <%@ include file="common/taglib.jsp"%>
</head>
<body>
页面模板
现在展示的是${type}页面
<div class="container">

    <div class="left_div col-md-8">
        <div class="d-header">
            左部标题
        </div>
        <div class="d-body">
            左部列表
        </div>
    </div>
    <div class="right_div col-md-4">
        <div class="d-header">
            右部标题
        </div>
        <div class="d-body">
            右部列表
        </div>
    </div>
</div>
</body>
</html>
