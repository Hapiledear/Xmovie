<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/1
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>主页</title>
    <%@ include file="common/taglib.jsp"%>
    <%@ include file="common/ace.jsp"%>
    <style type="text/css">
        #flipTriger{
            width:36px;
            height:36px;
            background: url(/images/switch.png) no-repeat left top;
            border:solid 1px #ddd;
            border-radius:10px;
            position: fixed;
            right:5px;
            top:300px;
            overflow:hidden;
            z-index:10000;
        }
    </style>
    <script src="<%=request.getContextPath() %>/framework/jquery.flip.js"></script>
</head>
<body class="no-skin">
<div id="navbar" class="navbar navbar-default" style="height: 45px">
    <div class="navbar-container" id="navbar-container">

        <!-- /section:basics/sidebar.mobile.toggle 网站logo-->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="#" class="navbar-brand" onclick="flip(); return true;" style="width: 120px">
                电影区
            </a>

            <!-- /section:basics/navbar.layout.brand -->

            <!-- #section:basics/navbar.toggle -->

            <!-- /section:basics/navbar.toggle -->
        </div>

        <!-- #section:basics/content.searchbox  搜索框-->
        <div class="navbar-header navbar-search " id="nav-search" style="margin-left: 350px; margin-top: 5px">
            <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
            </form>
        </div><!-- /.nav-search -->

        <!-- #section:basics/navbar.dropdown  -->
        <div class="navbar-header navbar-buttons pull-right" role="navigation">
            <ul class="nav ace-nav">

                <c:choose>
                    <c:when test="${null == userName}">
                        <!-- 登陆链接-->
                        <li class="light-blue">
                            <a  href="/login" >
                         <span class="user-login">
									请先登陆
								</span>

                                <i class="ace-icon fa icon-user"></i>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="grey">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="ace-icon fa fa-tasks"></i>
                                <span class="badge badge-grey">4</span>
                            </a>

                            <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                                <li class="dropdown-header">
                                    <i class="ace-icon fa fa-check"></i>
                                    4 Tasks to complete
                                </li>

                                <li class="dropdown-content">
                                    <ul class="dropdown-menu dropdown-navbar">
                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
                                                    <span class="pull-left">Software Update</span>
                                                    <span class="pull-right">65%</span>
                                                </div>

                                                <div class="progress progress-mini">
                                                    <div style="width:65%" class="progress-bar"></div>
                                                </div>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
                                                    <span class="pull-left">Hardware Upgrade</span>
                                                    <span class="pull-right">35%</span>
                                                </div>

                                                <div class="progress progress-mini">
                                                    <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                                                </div>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
                                                    <span class="pull-left">Unit Testing</span>
                                                    <span class="pull-right">15%</span>
                                                </div>

                                                <div class="progress progress-mini">
                                                    <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                                                </div>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
                                                    <span class="pull-left">Bug Fixes</span>
                                                    <span class="pull-right">90%</span>
                                                </div>

                                                <div class="progress progress-mini progress-striped active">
                                                    <div style="width:90%" class="progress-bar progress-bar-success"></div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="dropdown-footer">
                                    <a href="#">
                                        See tasks with details
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="purple">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                                <span class="badge badge-important">8</span>
                            </a>

                            <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                                <li class="dropdown-header">
                                    <i class="ace-icon fa fa-exclamation-triangle"></i>
                                    8 Notifications
                                </li>

                                <li class="dropdown-content">
                                    <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
                                                    <span class="pull-right badge badge-info">+12</span>
                                                </div>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <i class="btn btn-xs btn-primary fa fa-user"></i>
                                                Bob just signed up as an editor ...
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
                                                    <span class="pull-right badge badge-success">+8</span>
                                                </div>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
                                                    <span class="pull-right badge badge-info">+11</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="dropdown-footer">
                                    <a href="#">
                                        See all notifications
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="green">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                                <span class="badge badge-success">5</span>
                            </a>

                            <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                                <li class="dropdown-header">
                                    <i class="ace-icon fa fa-envelope-o"></i>
                                    5 Messages
                                </li>

                                <li class="dropdown-content">
                                    <ul class="dropdown-menu dropdown-navbar">
                                        <li>
                                            <a href="#" class="clearfix">
                                                <img src="../assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
                                                <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="clearfix">
                                                <img src="../assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
                                                <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="clearfix">
                                                <img src="../assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
                                                <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="clearfix">
                                                <img src="../assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
                                                <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#" class="clearfix">
                                                <img src="../assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
                                                <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="dropdown-footer">
                                    <a href="inbox.html">
                                        See all messages
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- #section:basics/navbar.user_menu  用户详细信息入口-->
                        <li class="light-blue">
                            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                                <img class="nav-user-photo" src="<%=request.getContextPath() %>/framework/ace/assets/avatars/user.jpg" alt="Jason's Photo" />
                                <span class="user-info">
									<small>欢迎！</small>
									${userName}
								</span>

                                <i class="ace-icon fa fa-caret-down"></i>
                            </a>

                            <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                                <li>
                                    <a href="#">
                                        <i class="ace-icon fa fa-cog"></i>
                                        用户信息
                                    </a>
                                </li>

                                <li>
                                    <a href="profile.html">
                                        <i class="ace-icon fa fa-user"></i>
                                        主页
                                    </a>
                                </li>

                                <li class="divider"></li>

                                <li>
                                    <a href="/login">
                                        <i class="ace-icon fa fa-power-off"></i>
                                        切换登陆
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </c:otherwise>
                </c:choose>

                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>

        <!-- /section:basics/navbar.dropdown 用户信息-->
    </div><!-- /.navbar-container -->
</div>
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content " style="padding: 1px">
                <div class="flipper" id="card" _nowPage="电影">
                    <div class="front">
                         <div id="shadom_mv">
                             <%--电影内容--%>
                             <iframe src="${ctx}/movie/homePage" id="mv" onload=" iFrameHeight('mv');"
                                     width="100%" frameborder="0" scrolling="no"></iframe>
                         </div>
                    </div>
                    <div class="back">
                        <div id="shadom_tv" style="display: none">
                          <%--  电视剧内容--%>
                            <iframe src="${ctx}/tv/homePage" id="tv" onload="iFrameHeight('tv')"
                                   width="100%" frameborder="0" scrolling="no"></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <button id="flipTriger" onclick="flip();" data-toggle="tooltip"
                    data-placement="left" title="切换为电视剧">
            </button>
        </div>
    </div>
</div>

</body>

<%--页面初始化内容--%>
<script type="text/javascript">
    jQuery(function($) {
        try{
            ace.settings.check('navbar' , 'fixed');
            ace.settings.check('main-container' , 'fixed');
        }catch(e){}

        $('#card').flip({
            trigger: 'manual'
        });

        $("[data-toggle='tooltip']").tooltip();
    });
</script>
<%--卡片切换效果--%>
<script type="text/javascript">
    function flip() {
        $("#flipTriger").blur();
        $('#card').flip('toggle');
        var oldPage = $("#card").attr("_nowPage");
        console.log(oldPage);
        if (oldPage == "电影"){
            $("#card").attr({"_nowPage":"电视剧"});
            $(".navbar-brand").text("电视剧区");
            $("#flipTriger").attr("data-original-title","切换为电影");

            $("#shadom_tv").css("display","block");
            $("#shadom_mv").css("display","none");
        }else {
            $("#card").attr({"_nowPage":"电影"});
            $(".navbar-brand").text("电影区");
            $("#flipTriger").attr("data-original-title","切换为电视剧");

            $("#shadom_tv").css("display","none");
            $("#shadom_mv").css("display","block");

        }
    }
</script>
<%--iframe自适应高度--%>
<script type="text/javascript">
    function iFrameHeight(ifmId) {
        var ifm= document.getElementById(ifmId);
        var subWeb = document.frames ? document.frames[ifmId].document : ifm.contentDocument;
        if(ifm != null && subWeb != null) {
            console.log("ifm="+ifm.height+"subWeb="+subWeb.body.scrollHeight);
            ifm.height = subWeb.body.scrollHeight;
        }
    }
</script>

</html>
