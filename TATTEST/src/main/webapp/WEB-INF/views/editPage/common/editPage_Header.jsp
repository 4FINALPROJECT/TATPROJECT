<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header id="header">
	<div id="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 top-info hidden-xs">
					<span><i class="fa fa-envelope"></i>The Awesome Template Edit</span>
				</div>
				<div class="col-sm-4 top-info">
					<ul>
						<li><a href="${pageContext.request.contextPath}" class="my-facebook">메</a></li>
						<li><a href="${pageContext.request.contextPath}" class="my-google">로</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="logo-bar">
		<div class="container">
			<div class="row">
				<div  class="col-lg-3 col-sm-3 ">
					<div id="logo"><h1><a href="${pageContext.request.contextPath}/my/Main.tat">TAT Edit</a></h1></div>
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
								<li><a href="#">정보</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/my/Info.tat">계정정보</a></li>
										<li><a href="${pageContext.request.contextPath}/my/Payment.tat">결제정보</a></li>
									    
									</ul>
								</li>
								<li><a href="#">프로젝트</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/main/Template.tat">프로젝트 생성</a></li>
										<li><a href="${pageContext.request.contextPath}/my/Template.tat">프로젝트 편집</a></li>
									        
									</ul>
								</li>
								<li><a href="#">고객센터</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/my/Question.tat">1:1문의하기</a></li>
										<li><a href="${pageContext.request.contextPath}/main/Faq.tat">자주묻는질문</a></li>
											
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/main/Upgrade.tat">프리미엄</a></li>
								<li><a href="${pageContext.request.contextPath}">로그아웃</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
