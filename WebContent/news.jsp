<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
        <title>新闻详情</title>
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
                            <p class="news-tabs__title h2">相关新闻</p>
                            <ul class="news-tabs__nav nav nav-tabs shadow_text" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#home" role="tab" data-toggle="tab">
                                        <span class="time">today, 12:30</span>
                                        俄核动力深潜器发生火灾 普京对遇难者家属表示慰问
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#profile" role="tab" data-toggle="tab">
                                        <span class="time">today, 11:30</span>
                                        俄防长要求最短时间内修复失火深潜器 让其尽早归役
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#messages" role="tab" data-toggle="tab">
                                        <span class="time">today, 10:30</span>
                                        俄14名深潜人员遇难 澳媒：相当于失去多名宇航员
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#settings" role="tab" data-toggle="tab">
                                        <span class="time">today, 09:30</span>
                                        俄深潜器火灾发生后 令人惊恐的传言在华盛顿传播
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-9 p0 wrap-headline">
                        <img src="img/content/article.jpg" alt="img" class="wrap-headline__img">
                        <div class="headline clearfix">
                            <div class="headline__data">
                                <a href="category.html" class="headline__category headline__category_orange">${news.kindName }</a>
                                <p class="headline__category">${news.time }</p>
                            </div>
                            <div class="share">
                                <ul class="share__list">
                                    <li class="share__row">
                                        <a class="share__link share__link_bg-facebook" href="#">
                                            <i class="bg bg_facebook">&ensp;</i>
                                        </a>
                                        <span class="share__number">13</span>
                                    </li>
                                    <li class="share__row">
                                        <a class="share__link share__link_bg-twitter" href="#">
                                            <i class="bg bg_twitter">&ensp;</i>
                                        </a>
                                        <span class="share__number">26</span>
                                    </li>
                                    <li class="share__row">
                                        <a class="share__link share__link_bg-google" href="#">
                                            <i class="bg bg_google">&ensp;</i>
                                        </a>
                                        <span class="share__number">17</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-9 article_text">
                        <div class="current">
                            <h1 class="text-center yel_line current__title">
								${news.title }
								<span class="glyphicon glyphicon-heart-empty small">收藏</span>
							</h1>
							<h4>
								<span>作者：${news.username }</span> 
								<span>责任编辑：${news.editor }</span> 
								<span>${news.time }</span> 
								<span>来源：${news.from }</span>
							</h4>
                            <img src="img/content/article2.jpg" alt="img" class="current__img">
                            <blockquote class="quote current__quote"></blockquote>
                            <p class="current__text">${news.content }</p>
                            <c:if test="${news.video!=null }">
	                            <!-- 视频 -->
								<p class="video-content">
									<video src="/pic/${news.video }" width="100%" controls="controls"></video>
								</p>
                            </c:if>
							
							<!-- 图片轮播 -->
							<div id="myCarousel" class="carousel slide">
								<!-- 轮播（Carousel）指标 -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
								</ol>   
								<!-- 轮播（Carousel）项目 -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/content/slide1.jpg" alt="First slide">
									</div>
									<div class="item">
										<img src="img/content/slide2.jpg" alt="Second slide">
									</div>
									<div class="item">
										<img src="img/content/slide1.jpg" alt="Third slide">
									</div>
								</div>
								<!-- 轮播（Carousel）导航 -->
								<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
                        </div>
                    </div>
					
					<div class="clearfix"></div>
                    <div class="col-sm-12 col-md-9 tags">
                        <p>标签:</p>
                        <ul>
                            <li>
                                <a href="#" title="World" class="font">国际</a>
                            </li>
                            <li>
                                <a class="yellow font" href="#" title="Sport">政治</a>
                            </li>
                            <li>
                                <a href="#" title="Cats" class="font">军事</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-9 col-md-8 col-lg-6 comments">
                        <p class="comments__title">评论</p>
                        <div class="comments__media">
                            <div class="media-middle">
								<img class="media-object img-circle" src="img/content/comment.png" />
                                <div class="comm_info">
                                    <h4 class="media-heading">Maria</h4>
                                    <span class="time">今天, 12:30</span>
                                </div>
                            </div>
                            <p class="media-body"> 估计是造成核泄漏了，就是不知在那片海域，因何事发生？</p>
							<p class="media-body">
								<span class="glyphicon glyphicon-thumbs-up active">赞<span>159</span></span>
								<span class="glyphicon glyphicon-thumbs-down">踩<span>1</span></span>
								<span class="glyphicon glyphicon-share-alt">回复</span>
							</p>
							
                        </div>
                        <div class="comments__media">
                            <div class="media-middle">
                                <img class="media-object img-circle" src="img/content/comment.png" />
                                <div class="comm_info">
                                    <h4 class="media-heading">Maria</h4>
                                    <span class="time">today, 12:30</span>
                                </div>
                            </div>
							<p class="media-body">20倍音速击穿舰艇</p>
							<p class="media-body">
								<span class="glyphicon glyphicon-thumbs-up">赞<span>24</span></span>
								<span class="glyphicon glyphicon-thumbs-down">踩<span>3</span></span>
								<span class="glyphicon glyphicon-share-alt">回复</span>
							</p>
							<p class="media-body reply-comment">
								<textarea name="text" class="form-control" rows="3" required="required"></textarea>
								<button type="submit" class="btn btn-comment">回复评论</button>
							</p>
                        </div>
                        <div class="comments__media">
                            <div class="media-middle">
                                <img class="media-object img-circle" src="img/content/qq2.png" />
                                <div class="comm_info">
                                    <h4 class="media-heading">Kate</h4>
                                    <span class="time">today, 12:30</span>
                                </div>
                            </div>
							<p class="media-body">俄罗斯怎么经常发生，这种乌厘头的事故？说明是在管理上出了问题。</p>
							<p class="media-body">
								<span class="glyphicon glyphicon-thumbs-up">赞<span>5</span></span>
								<span class="glyphicon glyphicon-thumbs-down">踩<span>1</span></span>
								<span class="glyphicon glyphicon-share-alt">回复</span>
							</p>
							<p class="media-body reply-comment">
								<textarea name="text" class="form-control" rows="3" required="required"></textarea>
								<button type="submit" class="btn btn-comment">回复评论</button>
							</p>
                        </div>
                        <div class="comments__form">
							<div class="panel panel-default">
								<div class="panel-body">
									<form action="#" method="POST">
										<div class="form-group">
											<div class="media-left">
												<img class="user-img img-circle" src="img/content/qq1.png" />
											    <div class="comm_info">
											        <h4 class="media-heading">Rachel</h4>
											    </div>
											</div>
										</div>
										<div class="form-group">
											<textarea name="text" id="input" class="form-control" rows="7" required="required"></textarea>
										</div>
										<button type="submit" class="btn btn-comment">发表评论</button>
									</form>
								</div>
							</div>
                        </div>
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
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<!-- Custom JavaScript -->
        <script src="js/main.js"></script>
    </body>
</html>

