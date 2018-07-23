<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>마이페이지</title>
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
							<h2>MyPage</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>MyPage</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		
		
	</section>

	<c:import url="common/myPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>