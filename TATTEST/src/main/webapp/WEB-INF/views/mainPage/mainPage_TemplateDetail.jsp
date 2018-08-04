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
			                    <iframe src="${pageContext.request.contextPath}/main/TemplateIframe.tat?t_category=${temp.t_category}" width="100%" height="700" scrolling="no" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row sub_content">
					<div class="col-lg-8 col-md-8 col-sm-8">
						<div class="project_description">
							<div class="widget_title">
								<h4><span>제목 : ${temp.t_title}</span></h4>
							</div>

							<p>설명 : ${temp.t_comment}.</p>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="project_details">
							<div class="widget_title">
								<h4><span>Project Details</span></h4>
							</div>
							<ul class="details">
								<li><span>Client :</span>${temp.m_code}</li>
								<li><span>Company :</span> 회사이름 부분</li>
								<li><span>Category :</span> ${temp.t_category}</li>
								<li><span>Date :</span> ${temp.t_date}</li>
								<li><span>Project URL :</span> <a href="#">www.bestjquery.com</a></li>
							</ul>
						</div>
					</div>
				</div>
                
                <div class="news_comments">
                            <div class="dividerHeading">
                                <h4><span>Comments</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                	<c:forEach items="${tempReply}" var="tempReply">
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/blog/avatar_1.png" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">${tempReply.m_name} [${tempReply.tr_rate}점]</a></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">${tempReply.tr_date}</a></div>
                                            <div class="comment-body">
                                                <p>${tempReply.tr_reply}</p>
                                                   <%-- ${tempReply.tr_num} --%>
                                                
                                            </div>
                                            <c:if test="${m_code eq tempReply.m_code}">
                                            <a data-target="#${tempReply.tr_num}" data-toggle="collapse">수정</a>                                                                                        
                                            <form id="tempDelete" action="${pageContext.request.contextPath}/main/DeleteReply.tat" method="post">
                                            <input type="hidden" name="tr_num" value="${tempReply.tr_num}"/>
											<input type="hidden" name="t_code" value="${temp.t_code}"/>
                                            <a onclick="tempDelete()">삭제</a>
                                            </form>
                                            <form class="UpdateReply" action="${pageContext.request.contextPath}/main/UpdateReply.tat" method="post">
                                            <div class="collapse" id="${tempReply.tr_num}">											  
											  <input type="text" name="tr_reply" placeholder="${tempReply.tr_reply}" value=""/>	
											  <input type="hidden" name="tr_num" value="${tempReply.tr_num}"/>
											  <input type="hidden" name="t_code" value="${temp.t_code}"/>
											  <button onclick="UpdateReply();">수정 완료</button>											  										    											  											  
											</div>
											</form>
                                            </c:if>
                                        </div>
                                    </li>                                  
                                    </c:forEach>
                                </ul>
                            </div>
                           	<c:if test="${empty m_code}">
                            <button data-toggle="modal" data-target="#signin">댓글 남기기</button>
                            </c:if>
                            <div class="dividerHeading">
                                <h4><span>Leave a comment</span></h4>
                                </div>
							<c:if test="${!empty m_code}">
							<c:url value="/main/insertReply.tat" var="insertReply">
								<%-- <c:param name="t_code" value="${temp.t_code}"/>
								<c:param name="m_code" value=""/> --%>
							</c:url>
                            <form id="insertReplyForm" action="${insertReply}" method="post">
                            <div class="comment_form">
                               <div class="row">
                               <input type="hidden" value="${temp.t_code}" name="t_code"/>
                               <input type="hidden" value="${m_code}" name="m_code"/>
                               
                                   <!-- <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="m_code" type="text" id="m_code" size="30"  onfocus="if(this.value == 'Name') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Name'; }" value="Name" placeholder="Name" >
                                   </div>
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" name="email" type="text" id="email" size="30" onfocus="if(this.value == 'E-mail') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'E-mail'; }" value="E-mail" placeholder="E-mail">
                                   </div> -->
                                   <div class="col-sm-4">
                                       <input class="col-lg-4 col-md-4 form-control" max="5" min="1" name="tr_rate" type="number" id="tr_rate" size="30" onfocus="if(this.value == 'Url') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Url'; }" placeholder="점수입력란(1 ~ 5)">
                                   </div>
                               </div>
                            </div>
                            <div class="comment-box row">
                                <div class="col-sm-12">
                                    <p>
                                        <textarea name="tr_reply" class="form-control" rows="6" cols="40" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="내용 입력란">Message</textarea>
                                    </p>
                                </div>
                            </div>
							<c:if test="${!empty m_code}">
                            <button id="insertReply" type="submit" class="btn btn-lg btn-default">댓글 작성</button>
                            </c:if>
                            <c:if test="${empty m_code}">
                            <button class="btn btn-lg btn-default" data-toggle="modal" data-target="#signin">로그인이 필요합니다.</button>
                            </c:if>
                            </form>
                            </c:if>
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
	    
	function tempDelete() {
		$('#tempDelete').submit();
	}    
	</script>
</body>
</html>