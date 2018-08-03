<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>TAT 문의하기 || 마이페이지</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
	<style>
		th,td{
			text-align:center;
			
		}
		#boardTable{
			
		}
		#boardWrite{
			display:none;
		}
		a{
			cursor:pointer;
		}
	  	#shareBoard{
	  		color:green;
	  		
	  	}
	  	#unshareBoard{
	  		color:red;
	  		
	  	}
	</style>
</head>
<body>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
	<c:import url="common/myPage_Header.jsp"></c:import>
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>1:1 Question Detail</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/my/Main.tat">MyPage </a>/</li>
								<li><a href="${pageContext.request.contextPath}/my/Question.tat">Question </a> /</li>
								<li>Detail</li>
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
									<li><a href="${pageContext.request.contextPath}/my/Question.tat"> 내 질문 게시판</a></li>
									<li><a onclick="boardWrite();"> 질문 하기</a></li>
								</ul>
							</div>

                            <div class="widget widget_tab">
                                <div class="velocity-tab sidebar-tab">
                                    <ul  class="nav nav-tabs">
                                        <li class="active"><a href="#Popular" data-toggle="tab">최근 게시물 답변</a></li>
                                    </ul>

                                    <div  class="tab-content clearfix">
                                        <div class="tab-pane fade active in" id="Popular">
                                            <ul class="recent_tab_list">
                                               
                                              
                                               <c:forEach items="${widget}" var="w">
                                               <li class="comments_list clearfix">
                                                    <p><strong><a href="#">${w.qa_num} -글 유형 : </a> <i>답변 : </i></strong>${w.a_content }</p>
                                                </li>
                                                </c:forEach>
                                              
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

						</div>
					</div>
					
					<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
						<div class="row sub_content">
				            <div class="col-lg-12 col-md-12 col-sm-12">
			                    <div class="dividerHeading">
			                        <h4><span>게시글 상세정보</span></h4>
			                    </div>
			                    <p>해당 게시글을 상세 볼 수 있는 공간입니다.</p>
									<div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-12 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 글 유형</label><input class="form-control" type="text" value="${QAB.qc_code}" readonly>
			                                </div>
			                            </div>
			                        </div>
			                  		
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-lg-12 ">
			                                    <label><i class="fas fa-angle-double-right"></i> 제목</label><input type="text" class="form-control" value="${QAB.qa_title}" readonly>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="form-group">
			                                <div class="col-md-12">
			                                    <label><i class="fas fa-angle-double-right"></i> 내용</label><textarea class="form-control" rows="10" cols="50" readonly>${QAB.qa_content}</textarea>
			                                </div>
			                            </div>
			                        </div>
			                        <c:if test="${QAB.admin_code ne null}">
				                        <div class="row">
				                            <div class="form-group">
				                                <div class="col-md-12">
				                                    <label><i class="fas fa-angle-double-right"></i> 관리자 답변</label><textarea class="form-control" rows="10" cols="50" readonly>${QAB.a_content}</textarea>
				                                </div>
				                            </div>
				                        </div>
			                        </c:if>
			                        <c:if test="${QAB.admin_code eq null}">
				                        <div class="row">
				                            <div class="form-group">
				                                <div class="col-md-12">
				                                    <label><i class="fas fa-angle-double-right"></i> 관리자 답변</label><br><span style="font-size:25px;">현재 답변이 준비 중입니다.</span>
				                                </div>
				                            </div>
				                        </div>
			                        </c:if>
			                    
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
		function boardWrite(){
		
			$('#boardWrite').css('display','block');
			$('#boardTable').css('display','none');
			
		}
	</script>
</body>
</html>





















