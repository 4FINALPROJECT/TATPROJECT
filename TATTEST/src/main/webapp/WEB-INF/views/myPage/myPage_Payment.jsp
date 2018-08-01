<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>TAT 결제정보 || 마이페이지</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
	<style>
		th,td{
			text-align:center;
		}
		a{
			cursor: pointer;
		}
		#paymentHistory{
			display:none;
		}
		#e_date{
			color:red;
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
							<h2>Payment</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/my/Main.tat">MyPage </a>/</li>
								<li>Payment</li>
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
									<li><a onclick="currentBuying();"> 현재 구매 중 상품</a></li>
									<li><a onclick="paymentHistory();"> 결제 히스토리</a></li>
							</div>
						</div>
					</div>
					
					
					<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							 <!-- 현재 내가 구매한 상품 -->
							<div id="currentBuying" class="row sub_content">
					            <div class="col-lg-12 col-md-12 col-sm-12">
					                <div class="dividerHeading">
					                    <h4><span>현재 구매 중 상품</span></h4>
					                </div>
					            </div>
					            
			          	    <div  class="col-lg-12 col-md-12 col-sm-12">
			                	<div class="table-responsive">
				                    <table class="table table-striped ">
				                        <thead>
				                        <tr>
				                            <th>번호</th>
				                            <th>상품명</th>
				                            <th>구매 일자</th>
				                            <th>만료 일자</th>
				                            <th>남은 기간</th>
				                        </tr>
				                        </thead>
				                        <tbody>
				                        <c:if test="${p.e_date gt 0}">
				                        <tr>
				                            <td>1</td>
				                            <td>${p.p_name}</td>
				                            <td>${p.p_date}</td>
				                            <td>${p.v_date}</td>
				                            <td><p id="e_date"><b>${p.e_date}일</b></p></td>
				                        </tr>
				                         </c:if>
				                          <c:if test="${p.e_date le 0}">
				                        <tr>
				                            <td colspan="5">현재 이용 중인 상품이 없습니다.</td>
				                        </tr>
				                         </c:if>
				                        </tbody>
				                    </table>
				                </div>
				            </div>
					      </div>   
					          
					        <!-- 결제 히스토리 -->
					        <div id="paymentHistory" class="row sub_content">
					            <div class="col-lg-12 col-md-12 col-sm-12">
					                <div class="dividerHeading">
					                    <h4><span>결제 히스토리</span></h4>
					                </div>
					            </div>
				            
				            <div  class="col-lg-12 col-md-12 col-sm-12">
				                <div class="table-responsive">
				                    <table class="table table-striped ">
				                        <thead>
					                     	<tr>
					                            <th>번호</th>
					                            <th>상품명</th>
					                            <th>구매 일자</th>
					                            <th>만료 일자</th>
					                            <th>남은 기간</th>
					                        </tr>
				                        </thead>
				                        <tbody>
					                      	<c:forEach items="${pl}" var="pl" varStatus="status">
						                        <c:if test="${pl.e_date <= 0}">
							                        <tr>
							                            <th>${status.index}</th>
							                            <th>${pl.p_name}</th>
							                            <th>${pl.p_date}</th>
							                            <th>${pl.v_date}</th>
							                            <th>만료</th>
							                        </tr>
						                        </c:if>
					                        </c:forEach>
					                    </tbody>
				                    </table>
				                </div>
				                        
				               <!--  <div class="col-sm-12 text-center">
									<ul class="pagination">
										<li><a href="#">&laquo;</a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">&raquo;</a></li>
									</ul>
								</div> -->
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
		
		function currentBuying(){
			$('#paymentHistory').css('display','none');
			$('#currentBuying').css('display','block');
		}
		
		function paymentHistory(){
			$('#paymentHistory').css('display','block');
			$('#currentBuying').css('display','none');
			
		}
		
	</script>
</body>
</html>