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
<%--    <%@ include file="../common/taglib.jsp"%>
    <script type="text/javascript" src="<%=request.getContextPath() %>/framework/jquery-3.1.1.js"></script>

    <script src="<%=request.getContextPath() %>/framework/ace/assets/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/framework/ace/assets/css/bootstrap.css" />--%>

    <script type="text/javascript" src="<%=request.getContextPath() %>/framework/jquery.scrollLoading.js"></script>
    <style type="text/css">
        .margin {
            margin-top: 20px;
            margin-bottom: 10px;
        }
        .carousel-caption{
            bottom: 5px;
        }
        .navbar .navbar-nav > li{
            border-width: 0;
        }
        .navbar .navbar-nav > li:first-child{
               border-width: 0;
           }

        .navbar .navbar-nav > li > a{
            color: grey;
        }
        .navbar .navbar-nav > li > a:hover{
            background-color: white!important;
            color: #428bca !important;
        }
        .col-height{
            height: 300px;
        }
    </style>
</head>
<body  class="no-skin" >
<nav class="navbar navbar-default col-sm-5 col-md-push-1" role="navigation" style="background: white;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#myCarousel" style="color: grey">全部</a>
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
                <div class="col-md-12">
                    <div id="myCarousel" class="carousel slide col-md-10  col-md-push-1" >
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators" style="bottom: 1px">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="${ctx}/images/slider1.jpg" alt="First slide" >
                                <div class="carousel-caption">标题 1</div>
                            </div>
                            <div class="item">
                                <img src="${ctx}/images/slider2.jpg" alt="Second slide">
                                <div class="carousel-caption">标题 2</div>
                            </div>
                            <div class="item">
                                <img src="${ctx}/images/slider3.jpg" alt="Third slide">
                                <div class="carousel-caption">标题 3</div>
                            </div>
                        </div>
                        <!-- 轮播（Carousel）导航 -->
                        <a class="carousel-control left" href="#myCarousel"
                           data-slide="prev" style="padding-top: 100px;padding-right: 50px">上一张</a>
                        <a class="carousel-control right" href="#myCarousel"
                           data-slide="next" style="padding-top: 100px;padding-left: 50px">下一张</a>
                    </div>
                </div>
                <div class="col-md-12 col-height">
                    <div id="about_movie" class="scrollLoading col-md-12   margin" data-url="${ctx}/divTemplete?type=about_movie">
                                    loading...
                    </div>
                </div>
                <div class="col-md-12 col-height">
                    <div id="short_movie" class=" scrollLoading col-md-12 margin " data-url="${ctx}/divTemplete?type=short_movie">
                                    loading...
                    </div>
                </div>
                <div class="col-md-12 col-height">
                    <div id="en_movie" class=" scrollLoading col-md-12 margin " data-url="${ctx}/divTemplete?type=en_movie">
                        loading...
                    </div>
                </div>
                <div class="col-md-12 col-height">
                    <div id="jp_movie" class=" scrollLoading col-md-12 margin " data-url="${ctx}/divTemplete?type=jp_movie">
                        loading...
                    </div>
                </div>
                <div class="col-md-12 col-height">
                    <div id="cn_movie" class=" scrollLoading col-md-12 margin " data-url="${ctx}/divTemplete?type=cn_movie">
                        loading...
                    </div>
                </div>
                <div class="col-md-12 col-height">
                    <div id="oc_movie" class=" scrollLoading col-md-12 margin " data-url="${ctx}/divTemplete?type=oc_movie">
                        loading...
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $(".scrollLoading").scrollLoading();
        $('.carousel').carousel()
    })
</script>
</html>
