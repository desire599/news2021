<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta content="" name="description">
        <meta content="" name="keywords">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="HandheldFriendly" content="true">
        <meta content="telephone=no" name="format-detection">
        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="favicon.png" />
        <!--[if (gt IE 9)|!(IE)]><!-->
		<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- custom CSS -->
        <link href="../css/main.css" rel="stylesheet" type="text/css" />
        <!-- END custom CSS -->
        <!--<![endif]-->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>个人中心</title>
    </head>
    <body>
        <!-- Header -->
        <header id="header" class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="wrap-logo">
                                <a href="index.html" class="logo"></a>
                            </div>
                        </div>
                        <div class="col-sm-offset-2 col-md-offset-5 col-sm-6 col-md-4 hidden-xs">
                            <div class="col-xs-4 col-sm-5">
                                <div class="weather">
                                    <div class="weather__temperature">
                                        
                                    </div>
                                    <div class="weather__city">
                                        <div class="weather__city__list">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-7">
                                <div class="exchange">
                                    <p class="exchange__name"></p>
                                    <p class="exchange__course">
                                        
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="wsmenucontent overlapblackbg"></div>
            <div class="wsmenuexpandermain slideRight">
                <a id="navToggle" class="animated-arrow slideLeft">
                    <span></span>
                </a>
            </div>
            <div class="header_down">
                <div class="container">
                    <div class="wrapper clearfix bigmegamenu">
                        <!--Main Menu HTML Code-->
                        <nav class="wsmenu slideLeft clearfix">
                            <ul class="mobile-sub wsmenu-list">
                                <li class="visible-xs">
                                    <form class="navbar-form mob_search" role="search">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="请输入搜索内容">
                                        </div>
                                        <button type="submit" class="btn btn-search">
                                            <i class="icon-search"></i>
                                        </button>
                                    </form>
                                </li>

                                <li class="active">
                                    <span class="wsmenu-click"></span>
                                    <a href="index.html">首页</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="category.html">政治</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="category.html">体育</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="category.html">生活</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="category.html">时尚</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="category.html">娱乐</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="category.html">教育</a>
                                </li>
                                <li>
                                    <span class="wsmenu-click"></span>
                                    <a href="">时尚
                                		<span class="arrow"></span>
                                	</a>
                                    <ul class="wsmenu-submenu">
                                        <li>
                                            <a href="404.html">女性</a>
                                        </li>
                                        <li>
                                            <a href="category.html">育儿</a>
                                        </li>
                                        <li>
                                            <a href="news.html">医药</a>
                                        </li>
                                        <li>
                                            <a href="search-result.html">美容</a>
                                        </li>
                                        <li>
                                            <a href="full-width.html">健康</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="navbar-right hidden-xs">
                                    <form class="navbar-form " role="search">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="请输入搜索内容">
                                        </div>
                                        <button type="submit" class="btn btn-search">
                                            <i class="icon-search"></i>
                                            <br>搜索
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <div class="visible-xs col-sm-offset-5 col-sm-4">
                                        <div class="col-sm-5">
                                            <div class="weather">
                                                <div class="weather__temperature">
                                                    
                                                </div>
                                                <div class="weather__city">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="exchange">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                        <!--Menu HTML Code-->
                    </div>
                </div>
            </div>
        </header>
        <!-- END header -->
        <!-- header slider -->
        <div class="wrapper">
            <article class="container articles">
                <div class="row">
                    <div class="col-sm-4 col-md-3 right_sidebar hidden-xs hidden-sm" data-spy="affix" data-offset-top="112" data-offset-bottom="80">
                        <div class="news-tabs">
                        <%
                        	User user = (User)session.getAttribute("userInfo");
                        %>
                            <p class="news-tabs__title h2">
								<img src="/pic/${userInfo.image }" />
								<%-- <span><%=user.getUsername() %></span> --%>
								<span>${userInfo.username }</span>
							</p>
							
                            <a href="center.html" class="list-group-item">
								个人信息
							</a>
							<a href="#" class="list-group-item">修改密码</a>
							<a href="collects.html" class="list-group-item">
								<span class="badge">121</span>
								我的收藏
							</a>
							<a href="comments.html" class="list-group-item">
								<span class="badge">56</span>
								我的评论
							</a>
							<a href="#" class="list-group-item">
								<span class="badge">5645</span>
								我的订阅
							</a>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-9 p0 wrap-headline">
						
                    </div>
                    <div class="col-sm-12 col-md-9 article_text">
						<h1>个人信息</h1>
						<form role="form" action="UserUpdate" method="post">
							<div class="form-group">
								<label class="col-sm-2 control-label" for="name">用户名</label>
								<%-- <input type="text" class="form-control" name="username" value="<%=user.getUsername() %>"> --%>
								<input type="text" class="form-control" name="username" value="${userInfo.username }">
								<%-- <input type="hidden" class="form-control" name="uid" value="<%=user.getUid() %>"> --%>
								<input type="hidden" class="form-control" name="uid" value="${userInfo.uid }">
							</div>
							
							<div class="form-group">
								<label for="inputfile">头像</label>
								<input type="file" id="inputfile">
								<p class="help-block"></p>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="name">邮箱</label>
								<%-- <input type="text" class="form-control" name="email" value="<%=user.getEmail() %>"> --%>
								<input type="text" class="form-control" name="email" value="${userInfo.email }">
								<p class="help-block">
								<%-- <%
									String msg = (String)request.getAttribute("msg");
									if(msg != null){
										out.print(msg);
									}
								%> --%>
								${msg }
								</p>
							</div>
							
							<button type="submit" class="btn btn-default">修改</button>
						</form>
                    </div>
                    
                </div>
            </article>
        </div>
        <!-- Footer -->
        <footer class="footer slate_gray">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
						<p class="copyright">Copyright &copy; 湖北理工学院计算机学院版权所有.</p>
                    </div>
                    <div class="col-sm-6">
                        <div class="social navbar-right">
                            <p class="social__text"></p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- END Footer -->
        <!-- All JavaScript libraries -->
		<script src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<!-- Custom JavaScript -->
        <script src="../js/main.js"></script>
    </body>
</html>