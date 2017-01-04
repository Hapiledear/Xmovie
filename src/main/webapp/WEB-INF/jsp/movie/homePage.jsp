<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/3
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>电影区</title>
    <%@ include file="../common/taglib.jsp"%>
    <script type="text/javascript" src="<%=request.getContextPath() %>/framework/jquery-3.1.1.js"></script>

    <script src="<%=request.getContextPath() %>/framework/ace/assets/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/framework/ace/assets/css/bootstrap.css" />

    <script type="text/javascript" src="<%=request.getContextPath() %>/framework/jquery.scrollLoading.js"></script>

</head>
<body  class="no-skin" >
<nav class="navbar navbar-default " role="navigation" >
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#slider">全部电影</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="#about_movie">电影相关</a></li>
                <li><a href="#short_movie">短片</a></li>
                <li><a href="#en_movie">欧美电影</a></li>
                <li><a href="#jp_movie">日本电影</a></li>
                <li><a href="#ch_movie">国产电影</a></li>
                <li><a href="#oc_movie">其它国家</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="main-container" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content " >
                <div id="slider" class="slideBox ">
                    <ul class="items">
                        <li><a href="" title="轮播图1"><img src="${ctx}/images/slider1.bmp"></a></li>
                        <li><a href="" title="轮播图2"><img src="${ctx}/images/slider2.jpg"></a></li>
                        <li><a href="" title="轮播图3"><img src="${ctx}/images/slider3.bmp"></a></li>
                    </ul>
                </div>
                <div id="about_movie" class="scrollLoading" data-url="${ctx}/divTemplete?type=about_movie">

                </div>
                <div id="short_movie">

                </div>
                <div id="en_movie">

                </div>
                <div id="jp_movie">

                </div>
                <div id="ch_movie">

                </div>
                <div id="oc_movie">

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $(".scrollLoading").scrollLoading();
        $("#slider").slideBox();
    })
</script>
</html>
