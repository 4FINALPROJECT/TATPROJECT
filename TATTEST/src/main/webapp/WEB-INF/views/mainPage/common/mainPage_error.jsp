<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>에러페이지</title>
	<c:import url="../../common/ICON_CSS_FONT.jsp"/>
</head>

<body>
	<c:import url="mainPage_Header.jsp"/>
	<c:import url="mainPage_Signin.jsp"/>
	<c:import url="mainPage_Signup.jsp"/>

  <main id="main">

    <section class="content not_found">
         <div class="container">
            <div class="row">
               <div class="col-sm-12 col-lg-12 col-md-12">
                  <div class="page_404">
                     <h1>Error</h1>
                     <p>Sorry, Page you're looking for is not found</p>
                     <a href="${pageContext.request.contextPath}/main.jsp" class="btn btn-default btn-lg">
                        <i class="fa fa-arrow-circle-o-left"></i>
                        Go to Main
                     </a>
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
                            <h3>Electrify is awesome responsive template, with refreshingly clean design.</h3>
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
   
  </main>
  
	<c:import url="mainPage_Footer.jsp"/>
	<c:import url="mainPage_Privacy.jsp"/>
	<c:import url="mainPage_TermsOfUse.jsp"/>
	<c:import url="../../common/JS.jsp"/>
</body>
</html>
