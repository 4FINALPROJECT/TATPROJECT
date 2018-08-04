<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>둘러보기</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
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
							<h2>Explore</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>Explore</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content portfolio medium-images">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 isotope">
						<ul id="filter">
							<li data-filter="*" class="selected"><a href="#">전체</a></li>
							<li id="RecentBtn" data-filter=".responsive"><a id="Recent" href="${pageContext.request.contextPath}/main/DateRecent.tat">최신</a></li>
							<li id="RateCount" data-filter=".mobile"><a id="Rate" href="${pageContext.request.contextPath}/main/RateCount.tat">별점</a></li>
							<li id="ReplyCount" data-filter=".branding"><a id="reply" href="${pageContext.request.contextPath}/main/ReplyCount.tat">댓글</a></li>
						</ul>
						<div class="mixed-container masonry_wrapper">
							<c:forEach items="${edit}" var="edit">
							<div class="item responsive">
								<div class="recent-item box">
									<figure class="touching ">
										<img src="${pageContext.request.contextPath}/resources/images/apple-devices-2.png" alt="" class="img-responsive"/>
										<div class="option inner">
											<div>
												<h5>${edit.proj_name}</h5>
												<span>${edit.proj_comment}</span>
												<a href="#" class="fa fa-search mfp-image"></a>
												<form id="EditDetail" action="${pageContext.request.contextPath}/main/ExploreDetail.tat" method="post">
												<input type="hidden" name="e_code" value="${edit.e_code}" />
												<input type="hidden" name="m_code" value="${edit.m_code}" />
												<a class="fa fa-link" onclick="EditDetail()"></a>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
							</c:forEach>
							
						</div>
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
			</div>
		</section>
	</section>
	<section class="promo_box wow bounceIn">
           <div class="container">
               <div class="row">
                   <div class="col-sm-9 col-md-9 col-lg-9">
                       <div class="promo_content">
                           <h3>Electrify is awesome responsive template, with clean design.</h3>
                           <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. </p>
                       </div>
                   </div>
                   <div class="col-sm-3 col-md-3 col-lg-3">
                       <div class="pb_action">
                           <a class="btn btn-lg btn-default" href="#fakelink">
                               <i class="fa fa-shopping-cart"></i>
                               Download Now
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
	        var $container = $('.masonry_wrapper'),
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
	    
	$('#RecentBtn').on('click', function() {
		$('#Recent').click();
	});   
	
	$('#ReplyCount').on('click', function() {
		$('#reply').click();
	});
	
	$('#RateCount').on('click', function() {
		$('#Rate').click();
	});
	
	function EditDetail() {
		$('#EditDetail').submit();
	}
	</script>
</body>
</html>