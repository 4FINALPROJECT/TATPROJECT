<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>회사소개</title>
	<c:import url="common/mainPage_ICON_CSS_FONT.jsp"/>
</head>

<body>
	<c:import url="common/mainPage_Header.jsp"/>
	<c:import url="common/mainPage_Signin.jsp"/>
	<c:import url="common/mainPage_Signup.jsp"/>

	<section id="intro">
		<div class="intro-text">
			<h2>꿈이 가는 길에 홈페이지가 있습니다!</h2>
			<p>TAT의 한발 앞선 홈페이지 디자인과 무료 제작 기술은 하루아침에 이뤄지지 않았습니다!</p>
		<a href="#about" class="btn-get-started scrollto">시작하기</a>
		</div>
		<div class="product-screens">
			<div class="product-screen-1 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="0.6s">
				<img src="${pageContext.request.contextPath}/resources/images/mainPage/product-screen-1.png" alt="">
			</div>
			<div class="product-screen-2 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="0.6s">
				<img src="${pageContext.request.contextPath}/resources/images/mainPage/product-screen-2.png" alt="">
			</div>
			<div class="product-screen-3 wow fadeInUp" data-wow-duration="0.6s">
				<img src="${pageContext.request.contextPath}/resources/images/mainPage/product-screen-3.png" alt="">
			</div>
		</div>
	</section>

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about" class="section-bg">
      <div class="container-fluid">
        <div class="section-header">
          <h3 class="section-title">About Us</h3>
          <span class="section-divider"></span>
          <p class="section-description">
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque<br>
            sunt in culpa qui officia deserunt mollit anim id est laborum
          </p>
        </div>

        <div class="row">
          <div class="col-lg-6 about-img wow fadeInLeft">
            <img src="../../../resources/images/mainPage/about-img.jpg" alt="">
          </div>

          <div class="col-lg-6 content wow fadeInRight">
            <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elite storium paralate</h2>
            <h3>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>

            <ul>
              <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
              <li><i class="ion-android-checkmark-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
              <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
            </ul>

            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec
            </p>
          </div>
        </div>

      </div>
    </section><!-- #about -->

  </main>
  
	<c:import url="common/mainPage_Footer.jsp"/>
	<c:import url="common/mainPage_Privacy.jsp"/>
	<c:import url="common/mainPage_TermsOfUse.jsp"/>
	<c:import url="common/mainPage_JS.jsp"/>
</body>
</html>
