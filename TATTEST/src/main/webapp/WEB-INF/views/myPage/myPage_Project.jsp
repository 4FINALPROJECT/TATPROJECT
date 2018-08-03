<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>프로젝트 || 마이페이지</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<c:import url="common/myPage_Header.jsp"></c:import>
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Project</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/my/Main.tat">MyPage </a>/</li>
								<li>Project</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content blog masonry_blog">
	        <div class="container">
	            <div class="mixed-container masonry_wrapper_blog row wow fadeInUp">
					
					<c:forEach items="${list}" var="p" >
	                <div class="item">
	                    <div class="blog-item">
	                        <div class="ImageWrapper">
	                            <img src="images/blog/blog_1.png" alt="" class="img-responsive">
	                        </div>
	                        <div class="metaInfo">
	                            <span><i class="fa fa-calendar"></i> <a href="#">${p.save_date}</a></span>
	                            <span><i class="fa fa-comments"></i> <a href="#">${p.comment_count}</a></span>
	                        </div><!-- end meta -->
	
	                        <div class="blog-title">
	                            <h2><a href="blog-post.html" title="">${p.proj_name}</a></h2>
	                        </div><!-- end title -->
	
	                        <div class="blog-desc">
	                            <p>${p.proj_comment}</p>
	
	                        </div><!-- end desc -->
	
	                        <div class="blog-button">
	                            <a class="btn btn-small btn-default" href="${pageContext.request.contextPath}/my/ProjectDetail.tat?e_code=${p.e_code}">상세 보기</a>
	                            <a class="btn btn-small btn-default" href="${pageContext.request.contextPath}/edit/newPage.tat?e_code=${p.e_code}">편집 하기</a>
	                        </div>
	                    </div>
	                </div>
					</c:forEach>
	                
	            </div>
	            
	        </div> <!--/.container-->
	    </section>
		
	</section>
	<c:import url="common/myPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
	<script>
	    (function ($) {
	        var $container = $('.masonry_wrapper_blog'),
	                colWidth = function () {
	                    var w = $container.width(),
	                            columnNum = 1,
	                            columnWidth = 0;
	                    if (w > 1200) {
	                        columnNum  = 3;
	                    } else if (w > 900) {
	                        columnNum  = 3;
	                    } else if (w > 600) {
	                        columnNum  = 2;
	                    } else if (w > 300) {
	                        columnNum  = 1;
	                    }
	                    columnWidth = Math.floor(w/columnNum);
	                    $container.find('.item').each(function() {
	                        var $item = $(this),
	                                multiplier_w = $item.attr('class').match(/item-w(\d)/),
	                                multiplier_h = $item.attr('class').match(/item-h(\d)/),
	                                width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
	                                height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
	                        $item.css({
	                            width: width,
	                            height: height
	                        });
	                    });
	                    return columnWidth;
	                }
	
	        function refreshWaypoints() {
	            setTimeout(function() {
	            }, 1000);
	        }
	
	        $('nav.portfolio-filter ul a').on('click', function() {
	            var selector = $(this).attr('data-filter');
	            $container.isotope({ filter: selector }, refreshWaypoints());
	            $('nav.portfolio-filter ul a').removeClass('active');
	            $(this).addClass('active');
	            return false;
	        });
	
	        function setPortfolio() {
	            setColumns();
	            $container.isotope('reLayout');
	        }
	
	        isotope = function () {
	            $container.isotope({
	                resizable: true,
	                itemSelector: '.item',
	                masonry: {
	                    columnWidth: colWidth(),
	                    gutterWidth: 0
	                }
	            });
	        };
	        isotope();
	        $(window).smartresize(isotope);
	    }(jQuery));
	    
	    
	    
	    
	</script>
</body>
</html>