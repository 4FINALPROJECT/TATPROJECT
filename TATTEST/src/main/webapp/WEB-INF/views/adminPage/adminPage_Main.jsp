<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>메인 | 관리자</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<c:import url="common/adminPage_Header.jsp"></c:import>
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Admin</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>Admin</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content service">
			<div class="container">
				<div class="row sub_content">
                        <div class="col-md-12 col-lg-12">
                            <div class="dividerHeading">
                                <h4><span>Services Style 4</span></h4>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="serviceBox_4">
                                <div class="service-icon">
                                    <i class="fa fa-signal"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Strategy</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit, bibendum et condimen dolore ipsum.</p>
                                </div>
                                <div class="read">
                                    <a href="" class="btn btn-default">Read info<i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="serviceBox_4">
                                <div class="service-icon">
                                    <i class="fa fa-cogs"></i>
                                </div>
                                <div class="service-content">
                                    <h3>OUR Solutions</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit, bibendum et condimen dolore ipsum.</p>
                                </div>
                                <div class="read">
                                    <a href="" class="btn btn-default">Read info<i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="serviceBox_4">
                                <div class="service-icon">
                                    <i class="fa fa-users"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Customer care</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit, bibendum et condimen dolore ipsum.</p>
                                </div>
                                <div class="read">
                                    <a href="" class="btn btn-default">Read info<i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
			</div>
		</section>
		
	</section>

	<c:import url="common/adminPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>