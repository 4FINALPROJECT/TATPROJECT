<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>마이페이지</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
	<c:import url="../common/JS.jsp"></c:import>
	<c:import url="common/myPage_Header.jsp"></c:import>
	
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>My Page</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>My Page</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content contact">
	        <div class="container">
	            <div class="row sub_content">
	                <div class="col-lg-8 col-md-8 col-sm-8">
	                    <div class="dividerHeading">
	                        <h4><span>회원 정보</span></h4>
	                    </div>
		                <p>회원님 정보를 나타는 공간입니다.</p>
	                   
	                         <div class="row">
	                            <div class="form-group">
	                                <div class="col-lg-6 ">
	                                    <label><i class="fas fa-angle-double-right"></i> 이메일</label><input type="text" class="form-control" value="${m.m_email}" readonly>
	                                </div>
	                            </div>
			                 </div>
	                         <div class="row">
	                            <div class="form-group">
	                                <div class="col-lg-6 ">
	                                    <label><i class="fas fa-angle-double-right"></i> 성명</label><input type="text" class="form-control profile" value="${m.m_name}" readonly>
	                                </div>
	                            </div>
			                </div>
			                <div class="row">
	                            <div class="form-group">
	                                <div class="col-md-6">
	                                    <label><i class="fas fa-angle-double-right"></i> 생년 월일</label><input type="date" class="form-control profile" value="${m.m_birth}" readonly>
	                                </div>
	                            </div>
			                </div>
			                <div class="row">
	                            <div class="form-group">
	                                <div class="col-md-6">
	                                	<c:if test="${m.m_gender eq 'M'}">
	                                    <label><i class="fas fa-angle-double-right"></i> 성별</label><input type="text" class="form-control profile" value="남자" readonly>
	                                    </c:if>
	                                    <c:if test="${m.m_gender eq 'F'}">
	                                    <label><i class="fas fa-angle-double-right"></i> 성별</label><input type="text" class="form-control profile" value="여자" readonly>
	                                    </c:if>
	                                </div>
	                            </div>     
			                </div>
	                        <div class="row">
	                            <div class="col-md-6">
	                               <label><i class="fas fa-angle-double-right"></i> 가입 일자</label><input type="date" class="form-control profile" value="${m.enroll_date}" readonly>
	                            </div>
	                        </div>
	                   </div>
	
	                <div class="col-lg-4 col-md-4 col-sm-4">
	                    <div class="sidebar">
	                        <div class="widget_info">
	                            <div class="dividerHeading">
	                                <h4><span>Contact Info</span></h4>
	                            </div>
	                            <p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	                            <ul class="widget_info_contact">
	                                <li><i class="fa fa-user"></i> <p><strong>Phone</strong>:(+91) 9000-12345</p></li>
	                                <li><i class="fa fa-envelope"></i> <p><strong>Email</strong>: <a href="#">mail@example.com</a></p></li>
	                            </ul>
	                        </div>
	                        <div class="widget_social">
	                            <div class="dividerHeading">
	                                <h4><span>소셜 네트워크</span></h4>
	                            </div>
	                            <ul class="widget_social">
	                                <li><a class="fb" href="#." data-placement="bottom" data-toggle="tooltip" title="Facbook"><i class="fa fa-facebook"></i></a></li>
	                                <li><a class="twtr" href="#." data-placement="bottom" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
	                                <li><a class="gmail" href="#." data-placement="bottom" data-toggle="tooltip" title="Google"><i class="fa fa-google-plus"></i></a></li>
	                                <li><a class="skype" href="#." data-placement="bottom" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
	                                <li><a class="instagram" href="#." data-placement="bottom" data-toggle="tooltip" title="Instagram"><i class="fa fa-instagram"></i></a></li>
	                                <li><a class="youtube" href="#." data-placement="bottom" data-toggle="tooltip" title="Youtube"><i class="fa fa-youtube"></i></a></li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
    
		
		<section>
			<div class="container">
                <div class="row sub_content">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>내 프로젝트</span></h4>
                        </div>
                        <div id="recent-work-slider" class="owl-carousel">
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>프로젝트 네임</h5>
                                            <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
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
        
	</section>

	<c:import url="common/myPage_Footer.jsp"></c:import>
	
	
</body>
</html>