<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>TAT 계정 정보 || 마이페이지</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
	<style>
		#changeEmail{
			/* display:none; */
		}
		#changePassword{
			
		}
		#changeProfile{
		  
		}
		a{
			cursor:pointer;
		}
		.second{
			padding:0;
		}
		.information{
			margin-bottom: 200px;
		}
		#emailSpan{
			 height:20px;
			 width:230px;
			 background:;
			 color:red;
			 display:none;
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
				            <div class="col-lg-12 col-md-12 col-sm-12 information" id="changeProfile">
			                    <div class="dividerHeading">
			                        <h4><span>프로필 정보 변경</span></h4>
			                    </div>
			                    <p>회원님의 이름, 성별, 생년월일 변경할 수 있습니다. </p>
			                    <form id="changeProfileForm" action="${pageContext.request.contextPath}/my/updateProfile.tat">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-12 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 성명</label><input type="text" id="name" name="m_name" class="form-control profile" value="${m.m_name}" placeholder="Your Name" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-12">
			                                    <label><i class="fas fa-angle-double-right"></i> 생년 월일</label><input type="date" id="birth" name="m_birth" class="form-control profile" value="${m.m_birth}">
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-12">
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
			                </div>
			                <!-- 이메일 변경 -->
			                <div class="col-lg-12 col-md-12 col-sm-12 information" id="changeEmail">
			                    <div class="dividerHeading">
			                        <h4><span>이메일 정보 변경</span></h4>
			                    </div>
			                    <p>회원님의 이메일을 변경할 수 있습니다. <b><u>인증 가능한</u></b> 이메일로 변경하시기 바랍니다.</p>
			                    <form id="changeEmailForm" action="${pageContext.request.contextPath}/my/updateEmail.tat" method="post">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                                    <label><i class="fas fa-angle-double-right"></i> 현재 이메일</label><input type="text" class="form-control" maxlength="100" value="${m.m_email}" readonly>
			                                </div>
			                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
			                                	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 second">
			                                    	<label><i class="fas fa-angle-double-right"></i> 변경할 이메일</label>
			                                    </div>
			                                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 second" style="padding-right:10px;">
			                                    	<input type="email" id="email" name="email" class="form-control" value="" placeholder="Change Email" >
			                                    	<span id="emailSpan">올바른 이메일 형식이 아닙니다. </span><br>
			                                    </div>
			                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 second" style="padding-left:10px;">
			                                    	<button type="button" class="form-control" onclick="sendNumber();" >인증번호 전송</button>
			                                    </div>
			                                </div>
			                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
			                                    <input type="text" id="verifyNum" name="verifyNum" class="form-control" placeholder="인증번호를 입력 해 주세요">
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
			                </div>
			                <!-- 비밀번호 변경 -->
			                <div class="col-lg-12 col-md-12 col-sm-12 information" id="changePassword">
			                    <div class="dividerHeading">
			                        <h4><span>비밀번호 변경 </span></h4>
			                    </div>
			                    <p>회원님의 비밀번호를 변경 할 수 있습니다.</p>
			                    <form id="changePasswordForm" action="${pageContext.request.contextPath}/my/updatePassword.tat" method="post">
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-12 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 현재 비밀번호</label><input type="password" id="password1" name="password1" class="form-control" placeholder="현재 비밀번호" >      
			                                </div>
			                                <div class="col-lg-12 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 변경할 비밀번호</label><input type="password" id="password2" name="password2" class="form-control" placeholder="변경할 비밀번호" >
			                                </div>
			                                <div class="col-lg-12 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 변경할  비밀번호 확인</label><input type="password" id="password3" name="password3" class="form-control" placeholder="변경할 비밀번호 확인" >
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-3">
			                                    <input type="button" id="changePasswordBtn" class="form-control" onclick ="changePassword();" value="비밀번호 변경 완료">
			                                </div>
			                            </div>
			                        </div>
			                    </form>
			                    
			                </div>
				        </div>
	                </div>
				</div>
			</div>
		</section>
	</section>
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
			
			// name의 유효성검사
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
		// 비밀번호 변경
		function changePassword(){
			
			// password의 유효성검사
			var regExp =/^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,}$/;
			
			// 현재 비밀번호 값 가져오기
			var password1 = $('#password1').val();
			
			var change_pwd = $('#password2').val();
			
			$.ajax({
				url:"${pageContext.request.contextPath}/my/validPwd.tat",
				data: {password1 : password1},
				type: "post",
				success:function(data){
					console.log(data.chk);
					console.log(data);
					console.log(password1);
					if(data){
						
						if(change_pwd.match(regExp) != null){
							
							if($('#password2').val() == $('#password3').val()){
								alert("변경할 비밀번호가 일치합니다.");
								console.log($('#password2').val());
								console.log($('#password3').val());
								$('#changePasswordForm').submit();
							}else{
								alert("변경할 비밀번호가 일치하지 않습니다. 다시 작성해 주세요");
								console.log($('#password2').val());
								console.log($('#password3').val());
							}
							
						}else{
							alert("비밀번호는 영문+숫자(기호)조합으로 8자 이상 입력해야합니다. ");
						}
					}else{
						alert("현재 비밀번호가 일치하지 않습니다.");	
					}
				},
				error:function(){
					
				}
			});
		}
		// 이메일 인증번호 전송
		var keyValue;
		function sendNumber(){
			
			
			// 변경할 이메일 값 
			var chk = $('#email').val();
			
			// 이메일 정규식 표현
			var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			
			$.ajax({
				url:"${pageContext.request.contextPath}/my/validEmail.tat",
				data:{chk : chk},
				type: "post",
				dataType:"json",
				success : function(data){
			         if(data.isUsable == 0){ // 겹치는 것이 0개라면
			        	 
			        	 console.log(data.isUsable);
			         
			         	if(chk.match(regExp) != null){
			         		
			         		$.ajax({
			         			url:"${pageContext.request.contextPath}/my/sendNumber.tat",
			         			data :{email : chk},
			         			type:"post",
			         			success : function(data){
			         					console.log("가져온 인증키 값 : "+data);
			         				alert("됐다??");
			         				keyValue=data;
								
			         				
			         			},error : function(){
			         				
			         			}
			         		});
			         	}else{
			        
			         		$('#emailSpan').fadeIn();
			         		setInterval(function(){ $('#emailSpan').fadeOut(); },1500);
			     
			         	} 
			         }else { // 그밖은 중복된 것이다.
			        	 alert("중복된 아이디 입니다.");
			        	 console.log(data.isUsable);
			         }
			         
			      }, error : function(error, msg){
			         
			      }
			});
			
		}
		function changeEmail(){
				
				if(keyValue == $('#verifyNum').val()){
					
					$('#changeEmailForm').submit();
					
				}else{
					alert("인증키 값이 다릅니다.");
				}
				
			}
		
	</script>
	
</body>
</html>