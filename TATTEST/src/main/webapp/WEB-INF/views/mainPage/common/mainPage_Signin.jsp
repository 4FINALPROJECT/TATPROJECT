<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<form id="loginform" method="post" name="loginform" action="">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="password" class="form-control" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 로그인 시 해당 <a href="#" data-toggle="modal" data-target="#">이용약관</a>, TAT 이메일 및 업데이트 수신에 동의하고 <a href="#" data-toggle="modal" data-target="#">개인정보 취급정책</a>을 숙지하였음을 인정합니다.
                            </label>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-default btn-lg button">로그인</button>
                        <button type="button" class="btn btn-default btn-lg button"  data-dismiss="modal" data-toggle="modal" data-target="#signup">회원가입</button>
                    </div>
                </form>
                <hr />
                <div class="row sub_content">
	                <div class="col-lg-12 col-md-12 col-sm-12">
		                <div class="dividerHeading text-center">
		                    <h4><span>다른 계정으로 로그인</span></h4>
		                </div>
		            </div>
		            <div class="col-sm-6 mrgb-30 text-center">
		                <a href="#fakelink" class="btn btn-sm btn-social-googleplus">
		                    <i class="fa fa-google-plus"></i>
		                    Connect with Google
		                </a>
		            </div>
		            <div class="col-sm-6 mrgb-30 text-center">
		                <a href="#fakelink" class="btn btn-sm btn-social-facebook">
		                    <i class="fa fa-facebook"></i>
		                    Connect with Facebook
		                </a>
		            </div>
		        </div>
			</div>
		</div>
	</div>
</div>