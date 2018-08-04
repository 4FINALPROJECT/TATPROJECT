<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>자세히보기 | 1대1 문의</title>
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
								<li><a href="${pageContext.request.contextPath}/main/Question.tat">Question</a>/</li>
								<li>Detail</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content contact">
	        <div class="container">
	        
	        	 <div class="row sub_content">
	                <div class="col-lg-12 col-md-12 col-sm-12">
	                	<h2>1대1 문의 상세 내용</h2><br />
	                	<form id="contactForm" action="" novalidate="novalidate">
	                        <div class="row">
	                            <div class="form-group">
	                                <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
	                                    	질문 번호 : <input type="number" name="qa_num" class="form-control" value="${question.qa_num}" readonly="readonly">
	                                </div>
	                                <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
	                                    	질문 날짜 : <input type="text" name="qa_date" class="form-control" value="${question.qa_date}" readonly="readonly">
	                                </div>	                                                                
	                                <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
	                                    	카테고리 : <input type="text" id="qc_code" name="qc_code" class="form-control" maxlength="100" value="${question.qc_code}" readonly="readonly">
	                                </div>
	                                <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
	                                    	질문자 : <input type="text" id="m_code" name="m_code" class="form-control" maxlength="100" value="${question.m_code}" readonly="readonly">
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <%-- <div class="row">
	                            <div class="form-group">	                                
	                                <div class="col-lg-6 ">
	                                    	질문자 : <input type="text" id="m_code" name="m_code" class="form-control" maxlength="100" value="${question.m_code}" readonly="readonly">
	                                </div>
	                            </div>
	                        </div>
 --%>	                        
	                        <div class="row">
	                            <div class="form-group">
	                                <div class="col-md-12">
	                                    	질문 제목 : <input type="text" id="qa_title" name="qa_title" class="form-control" maxlength="100" value="${question.qa_title}" readonly="readonly">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="form-group">
	                                <div class="col-md-12">
	                                  	  질문 내용 : <textarea id="qa_content" class="form-control" name="qa_content" rows="10" cols="10" readonly="readonly" style="height: 100px;">${question.qa_content}</textarea>	
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="row">
	                            <div class="form-group">
	                            	<div class="col-lg-12 ">
	                                    	답변 날짜 : <input type="text" name="a_date" class="form-control" value="${question.a_date}" readonly="readonly">
	                                </div>
	                                <div class="col-md-12">
	                                    	답변 내용 : <textarea placeholder="아직 답변 내용이 없습니다." id="a_content" class="form-control" name="a_content" rows="10" cols="10" readonly="readonly" style="height: 100px;">${question.a_content}</textarea>	
	                                </div>
	                            </div>
	                        </div>
	                    </form>
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