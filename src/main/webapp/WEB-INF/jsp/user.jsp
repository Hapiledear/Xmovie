<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/29
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/common.jsp"%>
<html>
<head>
    <title>index</title>
</head>
<body>
user! hello!
<c:forEach items="${users}" var="item" >${item.name}<br /></c:forEach>
</body>
</html>
