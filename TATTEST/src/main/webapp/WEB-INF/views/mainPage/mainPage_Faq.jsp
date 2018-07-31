<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>FAQ</title>
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
							<h2>FAQ</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>FAQ</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content faq">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
                        
                        <div class="panel-group accordion" id="accordion">
                            <c:forEach items="${faq}" var="faq">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" data-target="#${faq.faq_num}">                                            
                                            ${faq.faq_question}
                                        </a>
                                    </h4>
                                </div>
                                <div id="${faq.faq_num}" class="panel-collapse collapse">
                                    <div class="panel-body">${faq.faq_answer}</div>
                                </div>
                            </div>
							</c:forEach>
                            
                        </div>
					</div>
					
					<!--Sidebar Widget-->
					
				</div>
			</div>
		</section>
		
	</section>

	<c:import url="common/mainPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>