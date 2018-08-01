<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="1096092778673-9t0a2253pa2605k7q1hjaqt81tp07hmp.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script language="javascript" src="http://connect.facebook.net/ko_KR/all.js"></script>

<div class="modal fade" id="signin" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title">TAT 로그인</h1>
				<button type="button" class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="memberLogin" method="post" name="loginform" 
				action="${pageContext.request.contextPath}/main/Main.tat" method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="email" class="form-control" placeholder="E_mail" name="m_email">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="password" class="form-control" placeholder="Password" name="m_pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 로그인 시 해당 <a href="#" data-toggle="modal" data-target="#">이용약관</a>, TAT 이메일 및 업데이트 수신에 동의하고 <a href="#" data-toggle="modal" data-target="#">개인정보 취급정책</a>을 숙지하였음을 인정합니다.
                            </label>
                        </div>
                    </div>
                    <div class="form-group text-center" >
                        <button id="loginForm" type="submit" class="btn btn-default btn-lg button">로그인</button>
                        <button id="upForm" type="button" class="btn btn-default btn-lg button"  data-dismiss="modal" data-toggle="modal" data-target="#signup">회원가입</button>
                        <button type="button" class="btn btn-default btn-lg button" data-toggle="modal" data-target="#searchTime">비밀번호 찾기</button>
                    </div>
                </form>
                
                <div class="modal fade" id="searchTime" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">비밀번호 찾기</h5>
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form action="${pageContext.request.contextPath}/main/searchPw.tat" method="post">
										<div class="form-group">
											<label for="recipient-name" class="col-form-label">이메일</label>
											<input type="email" class="form-control" name="email">
										</div>
										<button type="submit" class="btn btn-primary">찾기</button>
									</form>
								</div>
								<div class="modal-footer">
									
								</div>
							</div>
						</div>
					</div>
                
                <hr />
                <div class="row sub_content">
	                <div class="col-lg-12 col-md-12 col-sm-12">
		                <div class="dividerHeading text-center">
		                    <h4><span>다른 계정으로 로그인</span></h4>
		                </div>
		            </div>
		            <div class="col-sm-6 mrgb-30 text-center">
		                <a class="btn btn-sm btn-social-googleplus" onclick="GoogleLogin()">
		                    <!-- <i class="fa fa-google-plus"></i><br /> -->
		                    <div class="g-signin2" onclick="GoogleLogin()" data-onsuccess="onSignIn" data-theme="dark" data-height="30"></div>
		                    
		                </a>
		            </div>
		            <div class="col-sm-6 mrgb-30 text-center">
		                <a class="btn btn-sm btn-social-facebook">
		                    <!-- <i class="fa fa-facebook" ></i> -->

		                    <fb:login-button scope="public_profile,email" onlogin="checkLoginState()">Facebook</fb:login-button>
		                    
		                </a>
		            </div>
		        </div>
			</div>
		</div>
	</div>
</div>