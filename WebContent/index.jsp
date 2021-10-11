<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <!-- custom CSS -->
        <link href="css/main.css" rel="stylesheet" type="text/css" />
        <!-- END custom CSS -->
        <!--<![endif]-->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>新闻网站首页</title>
       	<style>
	      /*  	.btn-submit{
				width: 54px;
				height: 34px;
			} */
       	</style>
    </head>
    <body>
        <!-- Header -->
        <header id="header" class="header navbar-fixed-top">
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
									
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-7">
                                <div class="exchange">
                                	<c:choose>
                                		<c:when test="${userInfo!=null }">
                                			<a href="#">${userInfo.username }</a>
                                		</c:when>
                                		<c:otherwise>
                                			<a href="#" data-toggle="modal" data-target="#myModal">
			                                   	登录
		                                    </a>
		                                    <a href="regist.jsp">注册</a>
                                		</c:otherwise>
                                	</c:choose>
                                    <c:if test="${userInfo!=null }">
                                    	<a href="center.jsp">个人中心</a>
                                    </c:if>                                   
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
                                    <form class="navbar-form" role="search">
                                        <div class="form-group dropdown">
                                            <input type="text" class="form-control search-input" placeholder="请输入搜索内容">
											<ul class="dropdown-menu pull-left search-hint" role="menu" aria-labelledby="dropdownMenu1">
												<li role="presentation" >
													<a role="menuitem" tabindex="-1" href="#">Java</a>
												</li>
												<li role="presentation">
													<a role="menuitem" tabindex="-1" href="#">数据挖掘</a>
												</li>
												<li role="presentation">
													<a role="menuitem" tabindex="-1" href="#">
														数据通信
													</a>
												</li>
											</ul>
                                        </div>
                                        <button type="submit" class="btn btn-search">
                                            <i class="icon-search"></i>
                                            <br/>搜索
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
                                                <a href="#" data-toggle="modal" data-target="#myModal">
                                                	登录
                                                </a>
                                                <a href="regist.html">注册</a>
                                                <a href="center.html">个人中心</a>
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
        <div class="slate_gray">
            <div class="container">
                <div class="row header_news_panel">
                    <!-- Tab panes -->
                </div>
            </div>
        </div>
        <!-- END header slider -->
        <div class="tlinks"></div>
        <!-- top news-->
        <section>
            <!-- top news -->
            <!-- title -->
            <div class="wrap wrap_white">
                <div class="container title">
                    <h1 class="title__h1 underscore">热点新闻</h1>
                </div>
            </div>
            <!-- END title -->
            <div class="wrap wrap_gray pt20">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="thumbnail thumbnail_big">
                                <img src="img/content/news1.jpg" height="350" width="560" alt="News">
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <p class="news__category yellow-line">财经</p>
                                        <a href="#" class="news__head">央企战略性重组加速央地合作 推进产业链优化</a>
                                        <p class="news__desc">央企战略性重组加速央地合作 推进产业链优化</p>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 16:37</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>29
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>2.3k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news2.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <p class="news__category yellow-line">经济</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">新能源车发展规划正在推进 氢燃料电池汽车获肯定</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 12:11</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>11
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>1.1k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news3.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <p class="news__category yellow-line">经济</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">国务院:赋予自贸区更大改革自主权 新增跨境电商试点</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 19:30</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>294
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>2.9k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news4.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <i class="icon-play"></i>
                                        <p class="news__category yellow-line">国际</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">科学家预测2100年人类长相 脸上多了这个 (视频)</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 2:39</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>9
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>1.3k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news5.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <p class="news__category yellow-line">国际</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">德国防长将任欧盟委员会主席?还是个对华“鹰派”</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 14:34</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>58
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>8.8k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news6.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <i class="icon-play"></i>
                                        <p class="news__category yellow-line">军事</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">澳媒：中国军队具备良好条件 阻止96年台海危机重现</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 12:37</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>20
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>1.2k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news7.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <p class="news__category yellow-line">生活</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">这辈子一定要去的40个地方 你还差几个？</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 11:30</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>21
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>1.9k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news8.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <i class="icon-play"></i>
                                        <p class="news__category yellow-line">教育</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">美国新增4所大学宣布将接受高考成绩 (视频)</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 10:36</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>17
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>2.0k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="thumbnail thumbnail_small">
                                <a href="news.html" class="thumbnail__link">
                                    <img src="img/content/news9.jpg" height="153" width="270" alt="News">
                                </a>
                                <div class="caption thumbnail__caption">
                                    <div class="news caption__news">
                                        <p class="news__category yellow-line">旅游</p>
                                        <a href="news.html" class="news__link">
                                            <p class="news__text">在澳门过暑假 今夏玩点不一样的</p>
                                        </a>
                                    </div>
                                    <div class="posted">
                                        <span class="posted__date">今天, 12:30</span>
                                        <ul class="posted__icon">
                                            <li>
                                                <span>
                                                <i class="icon-comment-empty"></i>29
                                            </span>
                                            </li>
                                            <li>
                                                <span>
                                                <i class="icon-eye"></i>2.3k
                                            </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- btn load-->
                <div class="ajax_load">
                    <i class="icon-arrows-cw"></i>加载更多
                    <svg width="128" height="40" viewBox="0 0 128 40" xmlns="http://www.w3.org/2000/svg">
                        <rect x='0' y='0' fill='none' width='128' height='40'></rect>
                    </svg>
                </div>
                <!-- END btn load-->
            </div>
            <!-- /container-->
        </section>
        <!-- /top news -->
        <section class="wrap wrap_gray">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 projects">
                        <div class="projects__title">
                            <h2 class="block-title__h2">专栏</h2>
                        </div>
                        <div class="projects__row">
                            <div class="special special_big">
                                <img src="img/content/spec1.jpg" height="311" width="551" alt="image" class="special__img">
                                <div class="special__box">
                                    <h5 class="special__category yel_line">专栏</h5>
                                    <a href="#" class="special__link">科技演讲砸场那点事</a>
                                    <p class="special__desc">昨天召开的百度AI大会，出现了意想不到的插曲。李彦宏正在舞台上进行主题演讲，谈到自动驾驶技术的时候，一名神秘男子突然走上台，将一瓶液体直接浇在了李彦宏的头上。</p>
                                </div>
                            </div>
                            <div class="special special_small">
                                <img src="img/content/spec2.jpg" height="311" width="285" alt="image" class="special__img">
                                <div class="special__box">
                                    <h5 class="special__category yel_line">专栏</h5>
                                    <a href="#" class="special__link">港媒：中国须警惕年轻人滥用大麻</a>
                                    <p class="special__desc">参考消息网7月4日报道 港媒称，受海外影响，中国年轻人滥用大麻的现象增多。</p>
                                </div>
                            </div>
                        </div>
                        <div class="projects__row">
                            <div class="special special_small">
                                <img src="img/content/spec3.jpg" height="311" width="285" alt="image" class="special__img">
                                <div class="special__box">
                                    <h5 class="special__category yel_line">专栏</h5>
                                    <a href="#" class="special__link">富士康上市一年仍破发</a>
                                    <p class="special__desc">富士康三部曲：上市一年仍破发 工业富联(13.280, -0.13, -0.97%)的“虚与实”</p>
                                </div>
                            </div>
                            <div class="special special_big">
                                <img src="img/content/spec4.jpg" height="311" width="551" alt="image" class="special__img">
                                <div class="special__box">
                                    <h5 class="special__category yel_line">专栏</h5>
                                    <a href="#" class="special__link">知乎问答背后的侵权利益链</a>
                                    <p class="special__desc">曾经被部分人认为无关版权保护的知乎问答，如今已被明确可同享著作权保护。</p>
                                </div>
                            </div>
                        </div>
                        <!-- banner -->
                        <div class="banner">
                            <img src="img/content/banner.jpg" height="221" width="850" alt="image" class="banner__img">
                            <div class="banner__box">
                                <p class="banner__text first-text">广告</p>
                                <p class="banner__text second-text">键鼠套装</p>
                                <a href="#" class="banner__link">马上买</a>
                            </div>
                        </div>
                        <!-- END banner -->
                    </div>
                    <div class="col-sm-3">
                        <div class="block-title">
                            <h2 class="block-title__h2">微博</h2>
                        </div>
                        <div class="twitter">
                            <div class="twitter__header">
                                <p class="twitter__header__name">@barclee</p>
                                <p class="twitter__header__text">大家好</p>
                            </div>
                            <div class="twitter__body">
                                <div class="message">
                                    <p class="message__time">5小时前</p>
                                    <p class="message__text">Facebook在两周多以前宣布该公司计划推出一种名为“天秤币”（Libra）的加密货币，而在周三，该公司负责这个项目的高管重申，Facebook不会控制这种加密货币。</p>
                                    <a href="#" class="message__link">
                                        <i class="icon-reply"></i>回复
                                    </a>
                                </div>
                                <div class="message">
                                    <p class="message__time">5小时前</p>
                                    <p class="message__text">Facebook在两周多以前宣布该公司计划推出一种名为“天秤币”（Libra）的加密货币，而在周三，该公司负责这个项目的高管重申，Facebook不会控制这种加密货币。</p>
                                    <a href="#" class="message__link">
                                        <i class="icon-reply"></i>回复
                                    </a>
                                </div>
								<div class="message">
								    <p class="message__time">5小时前</p>
								    <p class="message__text">Facebook在两周多以前宣布该公司计划推出一种名为“天秤币”（Libra）的加密货币，而在周三，该公司负责这个项目的高管重申，Facebook不会控制这种加密货币。</p>
								    <a href="#" class="message__link">
								        <i class="icon-reply"></i>回复
								    </a>
								</div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="wrap wrap_gray">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="block-title col-sm-12">
                                <h2 class="block-title__h2">体育
                                <a class="block-title__view-all" href="#" data-hover="See all">查看所有</a>
                            </h2>
                            </div>
                            <div class="col-sm-4">
                                <div class="thumbnail thumbnail_small">
                                    <a href="news.html" class="thumbnail__link">
                                        <img src="img/content/news10.jpg" height="153" width="270" alt="News">
                                    </a>
                                    <div class="caption thumbnail__caption">
                                        <div class="news caption__news">
                                            <p class="news__category yellow-line">NBA</p>
                                            <a href="news.html" class="news__link">
                                                <p class="news__text">曝莱昂纳德将与猛龙续签一份短约 消息源是他</p>
                                            </a>
                                        </div>
                                        <div class="posted">
                                            <span class="posted__date">今天, 12:30</span>
                                            <ul class="posted__icon">
                                                <li>
                                                    <span>
                                                    <i class="icon-comment-empty"></i>29
                                                </span>
                                                </li>
                                                <li>
                                                    <span>
                                                    <i class="icon-eye"></i>4.4k
                                                </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="thumbnail thumbnail_small">
                                    <a href="news.html" class="thumbnail__link">
                                        <img src="img/content/news11.jpg" height="153" width="270" alt="News">
                                    </a>
                                    <div class="caption thumbnail__caption">
                                        <div class="news caption__news">
                                            <p class="news__category yellow-line">足球</p>
                                            <a href="news.html" class="news__link">
                                                <p class="news__text">女足世界杯曼联新援建功 荷兰1比0胜瑞典首进决赛</p>
                                            </a>
                                        </div>
                                        <div class="posted">
                                            <span class="posted__date">今天, 11:30</span>
                                            <ul class="posted__icon">
                                                <li>
                                                    <span>
                                                    <i class="icon-comment-empty"></i>22
                                                </span>
                                                </li>
                                                <li>
                                                    <span>
                                                    <i class="icon-eye"></i>5.3k
                                                </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                               <div class="thumbnail thumbnail_small">
                                   <a href="news.html" class="thumbnail__link">
                                       <img src="img/content/news13.jpg" height="153" width="270" alt="News">
                                   </a>
                                   <div class="caption thumbnail__caption">
                                       <div class="news caption__news">
                                           <p class="news__category yellow-line">美容</p>
                                           <a href="news.html" class="news__link">
                                               <p class="news__text">冻龄秘籍大公开 懂得情绪美学逆生长不是梦</p>
                                           </a>
                                       </div>
                                       <div class="posted">
                                           <span class="posted__date">今天, 10:30</span>
                                           <ul class="posted__icon">
                                               <li>
                                                   <span>
                                                   <i class="icon-comment-empty"></i>22
                                               </span>
                                               </li>
                                               <li>
                                                   <span>
                                                   <i class="icon-eye"></i>2.1k
                                               </span>
                                               </li>
                                           </ul>
                                       </div>
                                   </div>
                               </div> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="block-title col-sm-12">
                                <h2 class="block-title__h2">时尚
                                <a class="block-title__view-all" href="#" data-hover="See all">查看所有</a>
                            	</h2>
                            </div>
                            <div class="col-sm-4">
                                <div class="thumbnail thumbnail_small">
                                    <a href="news.html" class="thumbnail__link">
                                        <img src="img/content/news12.jpg" height="153" width="270" alt="News">
                                    </a>
                                    <div class="caption thumbnail__caption">
                                        <div class="news caption__news">
                                            <p class="news__category yellow-line">时装</p>
                                            <a href="news.html" class="news__link">
                                                <p class="news__text">GUCCI珠宝首店开张，开云集团为什么在珠宝领域加码？</p>
                                            </a>
                                        </div>
                                        <div class="posted">
                                            <span class="posted__date">今天, 11:31</span>
                                            <ul class="posted__icon">
                                                <li>
                                                    <span>
                                                    <i class="icon-comment-empty"></i>21
                                                </span>
                                                </li>
                                                <li>
                                                    <span>
                                                    <i class="icon-eye"></i>2.1k
                                                </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="thumbnail thumbnail_small">
                                    <a href="news.html" class="thumbnail__link">
                                        <img src="img/content/news13.jpg" height="153" width="270" alt="News">
                                    </a>
                                    <div class="caption thumbnail__caption">
                                        <div class="news caption__news">
                                            <p class="news__category yellow-line">美容</p>
                                            <a href="news.html" class="news__link">
                                                <p class="news__text">冻龄秘籍大公开 懂得情绪美学逆生长不是梦</p>
                                            </a>
                                        </div>
                                        <div class="posted">
                                            <span class="posted__date">今天, 10:30</span>
                                            <ul class="posted__icon">
                                                <li>
                                                    <span>
                                                    <i class="icon-comment-empty"></i>22
                                                </span>
                                                </li>
                                                <li>
                                                    <span>
                                                    <i class="icon-eye"></i>2.1k
                                                </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="thumbnail thumbnail_small">
                                    <a href="news.html" class="thumbnail__link">
                                        <img src="img/content/news13.jpg" height="153" width="270" alt="News">
                                    </a>
                                    <div class="caption thumbnail__caption">
                                        <div class="news caption__news">
                                            <p class="news__category yellow-line">美容</p>
                                            <a href="news.html" class="news__link">
                                                <p class="news__text">冻龄秘籍大公开 懂得情绪美学逆生长不是梦</p>
                                            </a>
                                        </div>
                                        <div class="posted">
                                            <span class="posted__date">今天, 10:30</span>
                                            <ul class="posted__icon">
                                                <li>
                                                    <span>
                                                    <i class="icon-comment-empty"></i>22
                                                </span>
                                                </li>
                                                <li>
                                                    <span>
                                                    <i class="icon-eye"></i>2.1k
                                                </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="block-title">
                            <h2 class="block-title__h2">推荐新闻</h2>
                        </div>
                        <div class="wrap-redaction wrap-redaction_white">
                            <div class="redaction redaction_line">
                                <p class="redaction__category yel_line">时事</p>
                                <a class="redaction__title">小鸣单车负债逾4000万 仍欠12万用户2500万押金</a>
                                <p class="redaction__text">据统计，小鸣单车设计债权总额超过4500万。其中，12.5万小鸣单车用户的押金及余额共2500余万元未退还。</p>
                                <p class="redaction__time">今天, 16:35</p>
                            </div>
                            <div class="redaction redaction_line">
                                <p class="redaction__category yel_line">科技</p>
                                <a class="redaction__title">二季度黑猫投诉企业红黑榜：购物平台差异明显</a>
                                <p class="redaction__text">黑猫投诉发布二季度企业红黑榜，包括了“红黑榜季度榜单”及“回复效率榜单”，助力广大消费者了解商家信誉详情。</p>
                                <p class="redaction__time">今天, 16:35</p>
                            </div>
                            <div class="redaction redaction_line">
                                <p class="redaction__category yel_line">军事</p>
                                <a class="redaction__title">海军岸导部队东海实战演习 多枚YJ62蓄势待发</a>
                                <p class="redaction__text">近日，东部战区海军某岸导团组织多台战车长途机动至华东某海岸开展实战化演练</p>
                                <p class="redaction__time">今天, 16:35</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
		<!-- 登录模态框 -->
		<form action="UserLogin" method="post">
			<div class="modal fade login" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h1 class="modal-title" id="myModalLabel">
								用户登录
							</h1>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="name">用户名</label>
								<input type="text" class="form-control" name="username" id="name" placeholder="请输入用户名">
							</div>
							<div class="form-group">
								<label for="name">密码</label>
								<input type="text" class="form-control" name="password" placeholder="请输入密码">
							</div>
							<div class="checkbox">
							    <label>
							      <input type="checkbox" value="remember">记住用户名和密码
							    </label>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭
							</button>
							<!-- <button type="button" class="btn btn-primary">
								登录
							</button> -->
							<input type="submit" value="登录" id="test" class="btn btn-primary btn-submit" />
						</div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
		</form>
        <!-- All JavaScript libraries -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<!-- Custom JavaScript -->
        <script src="js/main.js"></script>
    </body>
</html>
