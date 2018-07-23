<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>자세히보기 | 템플릿</title>
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
							<h2>Template</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li><a href="${pageContext.request.contextPath}/main/Template.tat">Template</a>/</li>
								<li>Detail</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="porDetCarousel">
							<div class="carousel-content">
								<img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_slider1.png" alt="">
							</div>
						</div>
					</div>
				</div>
				
				<div class="row sub_content">
					<div class="col-lg-8 col-md-8 col-sm-8">
						<div class="project_description">
							<div class="widget_title">
								<h4><span>Project Descriptions</span></h4>
							</div>

							<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut aut reiciendise voluptat maiores alias aut et perferendis doloribus asperiores ut labore. Donec earum rerum hic tenetur ans sapiente delectus, ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores.</p>
							<p> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="project_details">
							<div class="widget_title">
								<h4><span>Project Details</span></h4>
							</div>
							<ul class="details">
								<li><span>Client :</span>Louis</li>
								<li><span>Company :</span> Rain Technologies inc.</li>
								<li><span>Category :</span> Web Design, Photography</li>
								<li><span>Date :</span> 05 September 2015</li>
								<li><span>Project URL :</span> <a href="#">www.bestjquery.com</a></li>
							</ul>
						</div>
					</div>
				</div>
                
                <div class="news_comments">
                            <div class="dividerHeading">
                                <h4><span>Comments (6)</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/blog/avatar_1.png" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">John Smith</a></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">February 22, 2015</a></div>
                                            <div class="comment-body">
                                                <p>Ne omnis saperet docendi nec, eos ea alii molestiae aliquand. Latine fuisset mele, mandamus atrioque eu mea, wi forensib argumentum vim an. Te viderer conceptam sed, mea et delenit fabellas probat.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/blog/avatar_1.png" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">John Smith</a></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">February 07, 2015</a></div>
                                            <div class="comment-body">
                                                <p>Eu mea harum soleat albucius. At duo nihil saperet inimicus. Ne quo dicit offendit eloquenam. Ut intellegam inn theophras tus mea. Vide ceteros mediocritatem est in, utamur gubergren contentiones.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/blog/avatar_3.png" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">Thomas Smith</a></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">February 02, 2015</a></div>
                                            <div class="comment-body">
                                                <p>Quodsi eirmod salutandi usu ei, ei mazim facete mel. Deleniti interesset at sed, sea ei malis expetenda. Ei efficiat integebat mel, vis alii insoles te. Vis ex bonorum contentiones. An cum possit reformidans. Est at eripuit theophrastus. Scripta imper diet ad nec, everti contentiones id eam, an eum causae officiis.</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="dividerHeading">
                                <h4><span>Leave a comment</span></h4>
                                </div>

                            <div class="comment_form">
                               <div class="row">
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="name" type="text" id="name" size="30"  onfocus="if(this.value == 'Name') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Name'; }" value="Name" placeholder="Name" >
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="email" type="text" id="email" size="30" onfocus="if(this.value == 'E-mail') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'E-mail'; }" value="E-mail" placeholder="E-mail">
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="url" type="text" id="url" size="30" onfocus="if(this.value == 'Url') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Url'; }" value="Url" placeholder="Url">
                                   </div>
                               </div>
                            </div>
                            <div class="comment-box row">
                                <div class="col-sm-12">
                                    <p>
                                        <textarea name="comments" class="form-control" rows="6" cols="40" id="comments" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="Message">Message</textarea>
                                    </p>
                                </div>
                            </div>

                            <a class="btn btn-lg btn-default" href="#">Post Comment</a>
                        </div>
				</div>
                
			</div>
		</section>
		
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