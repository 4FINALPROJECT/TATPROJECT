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
									<li><a onclick="firstCategory()"><i class="fas fa-user"></i> 프로필 변경</a></li>
									<li><a onclick="secondCategory()"><i class="fas fa-envelope"></i> E-mail 변경</a></li>
									<li><a onclick="thirdCategory()"><i class="fas fa-unlock"></i> 비밀번호 변경</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9" >
						<div class="row sub_content">
				            <!-- 프로필 변경 -->
				            <div class="col-lg-12 col-md-12 col-sm-12" id="changeProfile">
			                    <div class="dividerHeading">
			                        <h4><span>프로필 정보 변경</span></h4>
			                    </div>
			                    <p>회원님의 이름, 성별, 생년월일 변경할 수 있습니다. </p>
			                    <form id="changeProfileForm" action="${pageContext.request.contextPath}/my/updateProfile.tat" novalidate="novalidate">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-6 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 성명</label><input type="text" id="name" name="m_name" class="form-control profile" value="${m.m_name}" placeholder="Your Name" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-6">
			                                    <label><i class="fas fa-angle-double-right"></i> 생년 월일</label><input type="date" id="birth" name="m_birth" class="form-control profile" value="${m.m_birth}">
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-6">
			                                    <label><i class="fas fa-angle-double-right"></i> 성별</label><select id="gender" name="m_gender" class="form-control profile">
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
			                                    <input type="button" id="changeProfileBtn" class="form-control" onclick="changeProfile()" value="프로필 변경 완료" disabled/>
			                                </div>
			                            </div>     
			                        </div>
			                    </form> 
			                    <br><br><br><br><br><br><br><br><br><br><br>
			                </div>
			                <!-- 이메일 변경 -->
			                <div class="col-lg-12 col-md-12 col-sm-12" id="changeEmail">
			                    <div class="dividerHeading">
			                        <h4><span>이메일 정보 변경</span></h4>
			                    </div>
			                    <p>회원님의 이메일을 변경할 수 있습니다. <b><u>인증 가능한</u></b> 이메일로 변경하시기 바랍니다.</p>
			                    <form id="changeEmailForm" action="" novalidate="novalidate">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-6 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 현재 이메일</label><input type="text" class="form-control" maxlength="100" value="${m.m_email}" readonly>
			                                </div><br><br><br><br><br>
			                                <div class="col-lg-6 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 변경할 이메일</label><input type="email" id="email" name="email" class="form-control" maxlength="100" value="" placeholder="Change Email" >
			                                </div><br><br><br><br><br>
			                                 <div class="col-lg-6 ">
			                                    <input type="text" id="verifyNum" name="verifyNum" class="form-control" value="" placeholder="인증번호를 입력 해 주세요">
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-3">
			                                    <input type="button" id="changeEmailBtn" class="form-control" onclick="changeEmail()" value="이메일 변경 완료">
			                                </div>
			                            </div>
			                        </div>
			                    </form>
			                    <br><br><br><br><br><br><br><br><br><br><br>
			                </div>
			                <!-- 비밀번호 변경 -->
			                <div class="col-lg-12 col-md-12 col-sm-12" id="changePassword">
			                    <div class="dividerHeading">
			                        <h4><span>비밀번호 변경 </span></h4>
			                    </div>
			                    <p>회원님의 비밀번호를 변경 할 수 있습니다.</p>
			                    <form id="changePasswordForm" action="" novalidate="novalidate">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-6 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 현재 비밀번호</label><input type="password" id="password1" name="password1" class="form-control" maxlength="100" placeholder="현재 비밀번호" >      
			                                </div><br><br><br><br><br>
			                                <div class="col-lg-6 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 변경할 비밀번호</label><input type="password" id="password2" name="password2" class="form-control" maxlength="100" placeholder="변경할 비밀번호" >
			                                </div><br><br><br><br><br>
			                                <div class="col-lg-6 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 변경할  비밀번호 확인</label><input type="password" id="password3" name="password3" class="form-control" maxlength="100" placeholder="변경할 비밀번호 확인" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-3">
			                                    <input type="button" id="changePasswordBtn" class="form-control" onclick ="changePassword()" value="비밀번호 변경 완료">
			                                </div>
			                            </div>
			                        </div>
			                    </form>
			                    <br><br><br><br><br><br><br><br><br><br><br>
			                </div>
				        </div>
	                </div>
				</div>
			</div>
		
	<c:import url="common/myPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
	<script> 
		// 프로필 ON
		function firstCategory(){
			$('#changeEmail').css('display','none');
			$('#changePassword').css('display','none');
			$('#changeProfile').css('display','block');
		}
		// 이메일 ON
		function secondCategory(){
			$('#changeEmail').css('display','block');
			$('#changePassword').css('display','none');
			$('#changeProfile').css('display','none');
		}
		// 비밀번호 ON
		function thirdCategory(){
			$('#changeEmail').css('display','none');
			$('#changePassword').css('display','block');
			$('#changeProfile').css('display','none');
		}
	
		// 성별 Selected
		 $(function() {
      		console.log("${m.m_gender}");
      		if("${m.m_gender}" == 'M')
      			$("#gender").val("M").prop("selected", true);
      		else if("${m.m_gender}" == 'F')
      			$("#gender").val("F").prop("selected", true);			                			
		}); 
		
		// 프로필 변경 버튼 활성 & 비활성
		$(function(){
			
			var originName = $('#name').val(); 
			var originBirth = $('#birth').val();
			var originGender = $('#gender').val();
			$('#name').on("keyup", function(){
				var name = $('#name').val();
				
				if(name == originName){
					$('#changeProfileBtn').attr('disabled',true);
				} else {
					$('#changeProfileBtn').attr('disabled',false);
				}
			});
			$('#birth').on("change", function(){
				var birth = $('#birth').val();
				
				if(birth == originBirth){
					$('#changeProfileBtn').attr('disabled',true);
				} else {
					$('#changeProfileBtn').attr('disabled',false);
				}
			}); 
			$('#gender').on("change", function(){
				var gender = $('#gender').val();
				
				if(gender == originGender){
					$('#changeProfileBtn').attr('disabled',true);
				} else {
					$('#changeProfileBtn').attr('disabled',false);
				}
			}); 
		});
		
		// 프로필 변경 
		function changeProfile(){
			
			var regExp = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|\*]+$/;
			
			if($('#name').val().match(regExp) != null){
				
				var submit = confirm("회원님의 정보를 변경하시겠습니까?");
				
				if(submit == true){
					$('#changeProfileForm').submit();
				}else if(submit == false){
					alert("정보 변경이 취소되었습니다.");
				}
				
			}else{
				alert("이름은 한글과 영문자만 가능합니다.");
			}	
		}
			
	
		
	</script>
	
</body>
</html>