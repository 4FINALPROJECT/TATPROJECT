<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>TAT 계정 정보 || 마이페이지</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
	<style>
		#changeEmail{
			display:none;
		}
		#changePassword{
			display:none;
		}
		#changeProfile{
			
		}
	</style>
</head>
<body>
	<c:import url="../common/JS.jsp"></c:import>
	<c:import url="common/myPage_Header.jsp"></c:import>
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Information</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/my/Main.tat">My Page</a>/</li>
								<li>Information</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content left_sidebar">
			<div class="container">
				<div class="row">
					<!--Sidebar Widget-->
					<div class="col-lg-3 col-md-3 col-sm-3">
						<div class="sidebar">
							<div class="widget widget_categories">
								<div class="widget_title">
									<h4><span>Categories</span></h4>
								</div>
								<ul class="arrows_list list_style">
									<li><a href="#"><i class="fas fa-user"></i> 프로필 변경</a></li>
									<li><a href="#"><i class="fas fa-envelope"></i> E-mail 변경</a></li>
									<li><a href="#"><i class="fas fa-unlock"></i> 비밀번호 변경</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9" id="changeProfile">
						<div class="row sub_content">
				            <!-- 프로필 변경 -->
				            <div class="col-lg-12 col-md-12 col-sm-12">
			                    <div class="dividerHeading">
			                        <h4><span>프로필 정보 변경</span></h4>
			                    </div>
			                    <p>회원의 이름, 성별, 생년월일 변경할 수 있습니다. </p>
			                    <form id="contactForm" action="" novalidate="novalidate">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-6 ">
			                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="${m.m_name}" placeholder="Your Name" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-6">
			                                    <input type="date" id="birth" name="birth" class="form-control" maxlength="100" data-msg-required="Please enter the subject." value="${m.m_birth}">
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-6">
			                                    <select name="" id="gender" class="form-control">
			                                    	<option value="성별" disabled="disabled">성별</option>
					                                <option value="M">남자</option>
					                                <option value="F">여자</option> 
			                                    </select> 
			                                </div>
			                            </div>     
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-3">
			                                    <input type="button" class="form-control" value="비밀번호변경완료" />
			                                </div>
			                            </div>     
			                        </div>
			                    </form> 
			                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			                </div>
			                <!-- 이메일 변경 -->
			                <div class="col-lg-12 col-md-12 col-sm-12" id="changeEmail">
			                    <div class="dividerHeading">
			                        <h4><span>상세정보</span></h4>
			                    </div>
			                    <p></p>
			                    <form id="contactForm" action="" novalidate="novalidate">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-6 ">
			                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Your Name" >
			                                </div>
			                                <div class="col-lg-6 ">
			                                    <input type="email" id="email" name="email" class="form-control" maxlength="100" data-msg-email="Please enter a valid email address." data-msg-required="Please enter your email address." value="" placeholder="Your E-mail" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-12">
			                                    <input type="text" id="subject" name="subject" class="form-control" maxlength="100" data-msg-required="Please enter the subject." value="" placeholder="Subject">
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-12">
			                                    <textarea id="message" class="form-control" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" placeholder="Message"></textarea>
			
			                                </div>
			                            </div>
			                        </div>
			                    </form>
			                </div>
			                <!-- 비밀번호 변경 -->
			                <div class="col-lg-12 col-md-12 col-sm-12" id="changePassword">
			                    <div class="dividerHeading">
			                        <h4><span>비밀번호 변경 </span></h4>
			                    </div>
			                    <p></p>
			                    <form id="contactForm" action="" novalidate="novalidate">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-6 ">
			                                    <input type="password" id="password1" name="password1" class="form-control" maxlength="100" value="" placeholder="현재 비밀번호" >
			                                </div>
			                                <div class="col-lg-6 ">
			                                    <input type="email" id="password2" name="password2" class="form-control" maxlength="100" value="" placeholder="변경할 비밀번호" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-12">
			                                    <input type="text" id="password3" name="password3" class="form-control" maxlength="100" value="" placeholder="변경할 비밀번호 확인">
			                                </div>
			                            </div>
			                        </div>
			                    </form>
			                </div>
				        </div>
	                </div>
				</div>
			</div>
		
	
	<script> 
		$(function() {
      		console.log("${m}");
      		if("${m.m_gender}" == 'M')
      			$("#gender").val("M").prop("selected", true);
      		else if("${m.m_gender}" == 'F')
      			$("#gender").val("F").prop("selected", true);			                			
		});
	</script>
	<c:import url="common/myPage_Footer.jsp"></c:import>
</body>
</html>