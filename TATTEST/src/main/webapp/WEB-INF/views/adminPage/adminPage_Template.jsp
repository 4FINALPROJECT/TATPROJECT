<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>템플릿 관리 || TAT 관리자</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<c:import url="common/adminPage_Header.jsp"></c:import>
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Template</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
								<li>Template</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content blog">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
						<div class="blog_medium">
							<article class="post">
								<div class="post_date">
									<span class="day">28</span>
									<span class="month">Nov</span>
								</div>
								<figure class="post_img">
									<a href="#">
										<img src="${pageContext.request.contextPath}/resources/images/blog/blog_medium_1.png" alt="blog post">
									</a>
								</figure>
								<div class="post_content">
									<div class="post_meta">
										<h2>
											<a href="#">perferendis dolor asperio</a>
										</h2>
										<div class="metaInfo">
											<span><i class="fa fa-user"></i> By <a href="#">Louis</a> </span>
											<span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt  ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores ut labore.</p>
									<a class="btn btn-small btn-default" href="#">Read More</a>
									
								</div>
							</article>
							
							<article class="post">
								<div class="post_date">
									<span class="day">28</span>
									<span class="month">Nov</span>
								</div>
								<figure class="post_img">
									<a href="#">
										<img src="${pageContext.request.contextPath}/resources/images/blog/blog_medium_2.png" alt="blog post">
									</a>
								</figure>
								<div class="post_content">
									<div class="post_meta">
										<h2>
											<a href="#">perferendis dolor asperio</a>
										</h2>
										<div class="metaInfo">
											<span><i class="fa fa-user"></i> By <a href="#">Louis</a> </span>
											<span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt  ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores ut labore.</p>
									<a class="btn btn-small btn-default" href="#">Read More</a>
									
								</div>
							</article>
							
							<article class="post">
								<div class="post_date">
									<span class="day">28</span>
									<span class="month">Nov</span>
								</div>
								<figure class="post_img">
									<a href="#">
										<img src="${pageContext.request.contextPath}/resources/images/blog/blog_medium_3.png" alt="blog post">
									</a>
								</figure>
								<div class="post_content">
									<div class="post_meta">
										<h2>
											<a href="#">perferendis dolor asperio</a>
										</h2>
										<div class="metaInfo">
											<span><i class="fa fa-user"></i> By <a href="#">Louis</a> </span>
											<span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt  ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores ut labore.</p>
									<a class="btn btn-small btn-default" href="#">Read More</a>
									
								</div>
							</article>
							
							
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12">
							<ul class="pagination pull-left mrgt-0">
								<li><a href="#">&laquo;</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
						
					</div>

					<!--Sidebar Widget-->
					<div class="col-xs-12 col-md-4 col-lg-4 col-sm-4">
						<div class="sidebar">
							<div class="widget widget_search">
								<div class="site-search-area">
									<form method="get" id="site-searchform" action="#">
										<div>
											<input class="input-text" name="s" id="s" placeholder="Enter Search keywords..." type="text" />
											<input id="searchsubmit" value="Search" type="submit" />
										</div>
									</form>
								</div><!-- end site search -->
							</div>
							
							<div class="widget widget_categories">
								<div class="widget_title">
									<h4><span>Categories</span></h4>
									</div>
								<ul class="arrows_list list_style">
									<li><a href="#"> Grapic Design (10)</a></li>
									<li><a href="#"> Web Design & Development (25)</a></li>
									<li><a href="#"> Photography (29)</a></li>
									<li><a href="#"> Custom Illustrations (19)</a></li>
									<li><a href="#"> Wordpress Themes(38)</a></li>
									<li><a href="#"> Videography (33)</a></li>
								</ul>
							</div>
							
                            <div class="widget widget_tab">
                                <div class="velocity-tab sidebar-tab">
                                    <ul  class="nav nav-tabs">
                                        <li class="active"><a href="#Popular" data-toggle="tab">Popular</a></li>
                                        <li class=""><a href="#Recent" data-toggle="tab">Recent</a></li>
                                        <li class="last-tab"><a href="#Comment" data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
                                    </ul>

                                    <div  class="tab-content clearfix">
                                        <div class="tab-pane fade active in" id="Popular">
                                            <ul class="recent_tab_list">
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_1.png" alt="" /></a></span>
                                                    <a href="#">Publishing packag esanse web page editos</a>
                                                    <i>October 09, 2015</i>
                                                </li>
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_2.png" alt="" /></a></span>
                                                    <a href="#">Sublishing packag esanse web page editos</a>
                                                    <i>October 08, 2015</i>
                                                </li>
                                                <li class="last-tab">
                                                    <span><a href="#"><img src="images/content/recent_3.png" alt="" /></a></span>
                                                    <a href="#">Mublishing packag esanse web page editos</a>
                                                    <i>October 07, 2015</i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-pane fade" id="Recent">
                                            <ul class="recent_tab_list">
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_4.png" alt="" /></a></span>
                                                    <a href="#">Various versions has evolved over the years</a>
                                                    <i>October 18, 2015</i>
                                                </li>
                                                <li>
                                                    <span><a href="#"><img src="images/content/recent_5.png" alt="" /></a></span>
                                                    <a href="#">Rarious versions has evolve over the years</a>
                                                    <i>October 17, 2015</i>
                                                </li>
                                                <li class="last-tab">
                                                    <span><a href="#"><img src="images/content/recent_6.png" alt="" /></a></span>
                                                    <a href="#">Marious versions has evolven over the years</a>
                                                    <i>October 16, 2015</i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-pane fade" id="Comment">
                                            <ul class="comments">
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="images/content/recent_3.png" alt="#"></a>
                                                    <p><strong><a href="#">Prambose</a> <i>says: </i> </strong> Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                                </li>
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="images/content/recent_1.png" alt="#"></a>
                                                    <p><strong><a href="#">Makaroni</a> <i>says: </i> </strong> Tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                                </li>
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="images/content/recent_2.png" alt="#"></a>
                                                    <p><strong><a href="#">Prambanan</a> <i>says: </i> </strong> Donec convallis, metus nec tempus aliquet, nunc metus adipiscing leo, a lobortis nisi dui ut odio. Nullam ultrices, eros accumsan vulputate faucibus, turpis tortor.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
							
						</div>
					</div>
				</div><!--/.row-->
			</div> <!--/.container-->
		</section>
		
	</section>

	<c:import url="common/adminPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>