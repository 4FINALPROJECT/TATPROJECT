<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header">


	<div id="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 top-info hidden-xs">
					<span><i class="fa fa-envelope"></i>The Awesome Template Admin</span>
				</div>
				<div class="col-sm-4 top-info">
					<ul>
						<c:if test="${m_code ne 'A001' and !empty m_code}">
						<li><a href="${pageContext.request.contextPath}/my/Main.tat" class="my-skype">마</a></li>
						</c:if>
						<c:if test="${m_code eq 'A001'}">
						<li><a href="${pageContext.request.contextPath}/admin/Main.tat" class="my-pint">관</a></li>
						</c:if>
						<c:if test="${empty m_code}">
						<li><a href="#" class="my-rss" data-toggle="modal" data-target="#signup">회</a></li>						
						<li><a href="#" class="my-tweet" data-toggle="modal" data-target="#signin">로</a></li>
						</c:if>
						<c:if test="${!empty m_code}">
						<li><a onclick="mainReturn();" href="${pageContext.request.contextPath}/main/memberLogout.tat">로!</a></li>
						</c:if>	
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="logo-bar">
		<div class="container">
			<div class="row">
				<div  class="col-lg-3 col-sm-3 ">
					<div id="logo"><h1><a href="${pageContext.request.contextPath}/admin/Main.tat">TAT Admin</a></h1></div>
				</div>
				<div class="col-lg-9 col-sm-9">
					<div class="navbar navbar-default navbar-static-top" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li><a href="#">회원관리</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/admin/Member.tat">회원조회</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/Payment.tat">결제조회</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/Project.tat">프로젝트조회</a></li>
									    
									</ul>
								</li>
								<li><a href="#">게시판관리</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/admin/Question.tat">1:1문의관리</a></li>
										<li><a href="${pageContext.request.contextPath}/admin/Faq.tat">FAQ관리</a></li>
									        
									</ul>
								</li>
								<li><a href="#">템플릿</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/admin/Template.tat">템플릿관리</a></li>
											
									</ul>
								</li>
								<%-- <li><a href="#">제휴신청</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/admin/Affiliate.tat">제휴신청조회</a></li>
									</ul>
								</li> --%>
								<li><a href="${pageContext.request.contextPath}/main/memberLogout.tat">로그아웃</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
