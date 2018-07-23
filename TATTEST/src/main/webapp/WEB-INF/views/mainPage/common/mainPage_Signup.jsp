<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="modal fade" id="signup" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title">TAT 가입하기</h1>
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="registerform" method="post" name="registerform" action="">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="First name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Last name">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Re-enter password">
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 가입 시 해당 <a href="#" data-toggle="modal" data-target="#">이용약관</a>, TAT 이메일 및 업데이트 수신에 동의하고 <a href="#" data-toggle="modal" data-target="#">개인정보 취급정책</a>을 숙지하였음을 인정합니다.
                            </label>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <input type="submit" class="btn btn-default btn-lg button" value="TAT 가입하기"  data-dismiss="modal" data-toggle="modal" data-target="#signin">
                    </div>
                </form>
			</div>
		</div>
	</div>
</div>