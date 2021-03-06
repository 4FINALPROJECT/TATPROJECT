<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>템플릿</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
	<style>
		label{
			position: absolute;
			left:15px;
		}
	</style>
</head>
<body>
	<c:import url="common/mainPage_Header.jsp"></c:import>
	<c:import url="common/mainPage_Signin.jsp"></c:import>
	<c:import url="common/mainPage_Signup.jsp"></c:import>
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
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>Template</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content blog masonry_blog">
	        <div class="container">
	            <div class="mixed-container masonry_wrapper_blog row wow fadeInUp">
	                 <c:forEach items="${te}" var="te">
			                <div class="item">
			                    <div class="blog-item">
			                        <figure class="post_video">
			                            <div class="video">
			                                <iframe src="${pageContext.request.contextPath}/main/TemplateIframe.tat?t_category=${te.t_category}" width="100%" height="320" scrolling="no" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
			                            </div>
			                        </figure>
			                        <div class="metaInfo">
			                            <span><i class="fa fa-calendar"></i> <a href="#">${te.t_date}</a> </span>
			                            <span><i class="fa fa-tag"></i>  <a href="#">${te.t_category}</a> </span>
			                            <span><i class="fa fa-comments"></i> <a href="#">${te.t_use_count}</a></span>
			                        </div>
			                        <div class="blog-title">
			                            <h2><a href="#" title="">${te.t_title}</a></h2>
			                        </div>
			
			                        <div class="blog-desc">
			                            <p>${te.t_comment}</p>
			                        </div>
			                        <div class="blog-button">
			                        	<form action="${pageContext.request.contextPath}/main/TemplateDetail.tat" method="post">
			                        		<input type="hidden" name="t_code" value="${te.t_code}" />
			                            	<button class="btn btn-small btn-default" type="submit">상세 정보</button>
			                            	<button class="btn btn-small btn-default" type="">사용 하기</button>
			                            </form>
			                        </div>
			                    </div>
			                </div>
					</c:forEach>
	                
	
	            </div>
	            <div class="col-sm-12 text-center">
	                <ul class="pagination">
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
	    </section>
		
	</section>
	<section class="promo_box wow bounceIn">
           <div class="container">
               <div class="row">
                   <div class="col-sm-9 col-md-9 col-lg-9">
                       <div class="promo_content">
                           <h3>도움이 필요하세요?</h3>
                           <p>FAQ를 확인하고 문의사항을 해결하세요. </p>
                       </div>
                   </div>
                   <div class="col-sm-3 col-md-3 col-lg-3">
                       <div class="pb_action">
                           <a class="btn btn-lg btn-default" href="${pageContext.request.contextPath}/main/Faq.tat">
                               <i class="fa fa-shopping-cart"></i>
                               TAT FAQ로 이동하기
                           </a>
                       </div>
                   </div>
               </div>
           </div>
       </section>
	<c:import url="common/mainPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
	<script>
	    (function ($) {
	        var $container = $('.masonry_wrapper_blog'),
	                colWidth = function () {
	                    var w = $container.width(),
	                            columnNum = 1,
	                            columnWidth = 0;
	                    if (w > 1200) {
	                        columnNum  = 2;
	                    } else if (w > 900) {
	                        columnNum  = 2;
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