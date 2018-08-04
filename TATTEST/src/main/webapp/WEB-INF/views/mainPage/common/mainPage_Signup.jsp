<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<form id="memberInsert" action="${pageContext.request.contextPath}/main/memberInsert.tat" method="post">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="E_mail" id="m_email" name="m_email">
                    	<center><span id="chkMsg1"></span></center>
						<center><span id="chkMsg1-1"></span></center>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" id="m_pwd" name="m_pwd">
                        <center><span id="chkMsg2"></span></center>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호확인" id="m_pwd2" name="m_pwd2">
                        <center><span id="chkMsg3"></span></center>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Name" id="m_name" name="m_name">
                        <center><span id="chkMsg4"></span></center>
                    </div>
                    <div class="form-group">
                        <input type="date" class="form-control" placeholder="Birthday" id="m_birth" name="m_birth">
                        <center><span id="chkMsg5"></span></center>
                    </div>
                    <div class="form-group">
                        <select class="custom-select" id="m_gender" name="m_gender">
						    <option selected>성별을 선택해주세요.</option>
						    <option value="M">남성</option>
						    <option value="F">여성</option>
						  </select>
                    </div>
                    <center><span id="errorMsg">형식에 맞게 입력하지 않으면 가입하실수 없습니다.</span></center><br />
                    <!-- <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input id="tcheck" type="checkbox"> 가입 시 해당 <a href="#" data-toggle="modal" data-target="#">이용약관</a>, TAT 이메일 및 업데이트 수신에 동의하고 <a href="#" data-toggle="modal" data-target="#">개인정보 취급정책</a>을 숙지하였음을 인정합니다.
                            </label>
                        </div>
                    </div> -->
                    <div class="form-group text-center" id="insertBtnForm">

                        <button id="insertBtn" class="login100-form-btn" data-dismiss="modal" data-toggle="modal" data-target="#signin"
                        style="background: white; border-radius: 12px; width: 200px;">가입하기</button>
                    </div>
                </form>
			</div>
		</div>
	</div>
</div>