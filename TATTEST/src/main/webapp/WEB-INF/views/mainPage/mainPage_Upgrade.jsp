<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>프리미엄</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<c:import url="common/mainPage_Header.jsp"></c:import>
	<c:import url="common/mainPage_Signin.jsp"></c:import>
	<c:import url="common/mainPage_Signup.jsp"></c:import>
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Premium</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>Premium</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4><span>프리미엄 플랜</span></h4>

						</div>
					</div>
					<div class="mrgb-50 clearfix"></div>
					<div class="pricingBlock theme-color-pt">
						<!--  DARK-BLUE PRICE ITEM  -->
						<div class="col-lg-3 col-md-3 col-sm-3">
							<div class="pricingTable"><!-- BODY BOX-->
								<div class="pricingTable-header"><!-- HEADER BOX-->
									<span class="heading">1 Month</span>
									<span class="price-value">$<span>26.44</span><span class="mo">/mo</span></span>
								</div><!--/ BODY BOX-->

								<div class="pricingContent">
									<ul>
										<li><strong>50GB</strong> Disk Space</li>
										<li><strong>50</strong> Email Accounts</li>
										<li><strong>50GB</strong> Monthly Bandwidth</li>
										<li><strong>50</strong> Domains</li>
										<li><strong>Unlimited</strong> Subdomains</li>
									</ul>
								</div>

								<!-- <div class="pricingTable-sign-up">
									<a href="#" class="btn btn-block btn-default">BUY NOW!</a>
								</div> -->
								
								<c:if test="${!empty m and m.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${m.m_code}',30000)">선택</button>
								</c:if>
								<c:if test="${!empty f and f.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${f.m_code}',30000)">선택(Facebook)</button>
								</c:if>
								<c:if test="${!empty g and g.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${g.m_code}',30000)">선택(Google)</button>
								</c:if>
								<c:if test="${empty m and empty f and empty g}">
								<a href="#" class="btn btn-block btn-default" data-toggle="modal" data-target="#signin">불가(로그인 필요)</a>
								</c:if>
								<c:if test="${m.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${m.m_code}')">선택</a>
								</c:if>
								<c:if test="${f.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${f.m_code}')">선택(Facebook)</a>
								</c:if>
								<c:if test="${g.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${g.m_code}')">선택(Google)</a>
								</c:if>
								
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3">
							<div class="pricingTable">
								<div class="pricingTable-header">

									<span class="heading">3 Month</span>
									<span class="price-value">$<span>70.52</span><span class="mo">/mo</span></span>

								</div>

								<div class="pricingContent">
									<ul>
										<li><strong>50GB</strong> Disk Space</li>
										<li><strong>50</strong> Email Accounts</li>
										<li><strong>50GB</strong> Monthly Bandwidth</li>
										<li><strong>50</strong> Domains</li>
										<li><strong>Unlimited</strong> Subdomains</li>
									</ul>
								</div>

								<c:if test="${!empty m and m.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${m.m_code}',80000)">선택</button>
								</c:if>
								<c:if test="${!empty f and f.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${f.m_code}',80000)">선택(Facebook)</button>
								</c:if>
								<c:if test="${!empty g and g.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${g.m_code}',80000)">선택(Google)</button>
								</c:if>
								<c:if test="${empty m and empty f and empty g}">
								<a href="#" class="btn btn-block btn-default" data-toggle="modal" data-target="#signin">불가(로그인 필요)</a>
								</c:if>
								<c:if test="${m.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${m.m_code}')">선택</a>
								</c:if>
								<c:if test="${f.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${f.m_code}')">선택(Facebook)</a>
								</c:if>
								<c:if test="${g.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${g.m_code}')">선택(Google)</a>
								</c:if>

							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3">
							<div class="pricingTable">
								<div class="pricingTable-header">

									<span class="heading">6 Month</span>
									<span class="price-value">$<span>132.22</span><span class="mo">/mo</span></span>

								</div>

								<div class="pricingContent">
									<ul>
										<li><strong>50GB</strong> Disk Space</li>
										<li><strong>50</strong> Email Accounts</li>
										<li><strong>50GB</strong> Monthly Bandwidth</li>
										<li><strong>50</strong> Domains</li>
										<li><strong>Unlimited</strong> Subdomains</li>
									</ul>
								</div>

								<c:if test="${!empty m and m.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${m.m_code}',150000)">선택</button>
								</c:if>
								<c:if test="${!empty f and f.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${f.m_code}',150000)">선택(Facebook)</button>
								</c:if>
								<c:if test="${!empty g and g.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${g.m_code}',150000)">선택(Google)</button>
								</c:if>
								<c:if test="${empty m and empty f and empty g}">
								<a href="#" class="btn btn-block btn-default" data-toggle="modal" data-target="#signin">불가(로그인 필요)</a>
								</c:if>
								<c:if test="${m.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${m.m_code}')">선택</a>
								</c:if>
								<c:if test="${f.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${f.m_code}')">선택(Facebook)</a>
								</c:if>
								<c:if test="${g.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${g.m_code}')">선택(Google)</a>
								</c:if>

							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3">
							<div class="pricingTable">
								<div class="pricingTable-header">

									<span class="heading">12 Month</span>
									<span class="price-value">$<span>255.62</span><span class="mo">/mo</span></span>

								</div>

								<div class="pricingContent">
									<ul>
										<li><strong>50GB</strong> Disk Space</li>
										<li><strong>50</strong> Email Accounts</li>
										<li><strong>50GB</strong> Monthly Bandwidth</li>
										<li><strong>50</strong> Domains</li>
										<li><strong>Unlimited</strong> Subdomains</li>
									</ul>
								</div>
								<c:if test="${!empty m and m.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${m.m_code}',290000)">선택</button>
								</c:if>
								<c:if test="${!empty f and f.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${f.m_code}',290000)">선택(Facebook)</button>
								</c:if>
								<c:if test="${!empty g and g.is_usable eq 'N'}">
								<button class="btn btn-block btn-default" type="button" id="premium2" onclick="premiumService('${g.m_code}',290000)">선택(Google)</button>
								</c:if>
								<c:if test="${empty m and empty f and empty g}">
								<a href="#" class="btn btn-block btn-default" data-toggle="modal" data-target="#signin">불가(로그인 필요)</a>
								</c:if>
								<c:if test="${m.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${m.m_code}')">선택</a>
								</c:if>
								<c:if test="${f.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${f.m_code}')">선택(Facebook)</a>
								</c:if>
								<c:if test="${g.is_usable eq 'Y'}">
								<a href="#" class="btn btn-block btn-default" onclick="useableBtn('${g.m_code}')">선택(Google)</a>
								</c:if>

							</div>
						</div>
					</div>
				</div>

				
			</div>
		</section>
        <section class="promo_box">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 col-md-9 col-lg-9">
                        <div class="promo_content">
                            <h3>Electrify is awesome responsive template, with clean design.</h3>
                            <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. </p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <div class="pb_action">
                            <a class="btn btn-lg btn-default" href="#fakelink">
                                <i class="fa fa-shopping-cart"></i>
                                Download Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	
		
	</section>

	<c:import url="common/mainPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>