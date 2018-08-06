<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header">
	<div id="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 top-info hidden-xs">
					<span><i class="fa fa-envelope"></i>The Awesome Template MyPage</span>
				</div>
				<div class="col-sm-4 top-info">
					<ul>
						<li><a href="${pageContext.request.contextPath}" class="my-facebook">메</a></li>
						<c:if test="${ m_code != null }">
						<form style="display:none; visibility: hidden;" action="${pageContext.request.contextPath}/main/memberLogout.tat" method="POST">
							<input style="display:none; visibility: hidden;" type="submit" id="MainReturn"/>
						</form>
						<li><a onclick="mainReturn();" href="#">로!</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="logo-bar">
		<div class="container">
			<div class="row">
				<div  class="col-lg-3 col-sm-3 ">
					<div id="logo"><h1><a href="${pageContext.request.contextPath}/my/Main.tat">My TAT</a></h1></div>
				</div>
				<div class="col-lg-9 col-sm-9">
					<div class="navbar navbar-default navbar-static-top" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li><a href="#">정보</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/my/Info.tat">계정정보</a></li>
										<li><a href="${pageContext.request.contextPath}/my/Payment.tat">결제정보</a></li>
									    
									</ul>
								</li>
								<li><a href="#">프로젝트</a>
									<ul class="dropdown-menu">
										<li><a <%-- href="${pageContext.request.contextPath}/edit/newPage.tat" --%> data-toggle="modal" data-target="#exampleModal">프로젝트 생성</a></li>
										<li><a href="${pageContext.request.contextPath}/my/Project.tat">프로젝트 편집</a></li>
									        
									</ul>
								</li>
								<li><a href="#">고객센터</a>
									<ul class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/my/Question.tat">1:1문의하기</a></li>
										<li><a href="${pageContext.request.contextPath}/main/Faq.tat">자주묻는질문</a></li>
											
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/main/Upgrade.tat">프리미엄</a></li>
								<li><a href="${pageContext.request.contextPath}/main/memberLogout.tat">로그아웃</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">새로운 프로젝트 생성</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form id="createProject" action="${pageContext.request.contextPath}/my/createProject.tat">
	          <div class="form-group">
	            <label for="recipient-name" class="col-form-label">프로젝트 명</label>
	            <input type="text" class="form-control" id="proj_name" name="proj_name">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="col-form-label">프로젝트 설명</label>
	            <textarea class="form-control" id="proj_comment"  name="proj_comment"></textarea>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btn-primary" onclick="createProject()">프로젝트 생성</button>
	      </div>
	    </div>
	  </div>
	</div>
</header>

<script>
	function createProject(){
		
		var name = $('#proj_name').val();
		var comment = $('#proj_comment').val();
			
		if(name != null && comment !=null){
			
			$('#createProject').submit();
		}else{
			
			alert("프로젝트 명과 프로젝트 내용을 확인해주세요");
		}
		
	}
</script>
