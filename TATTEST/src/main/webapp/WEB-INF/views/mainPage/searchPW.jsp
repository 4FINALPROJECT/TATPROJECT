<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">

</head>
 
<body>
    <div class="contact-clean">
        <form action="${pageContext.request.contextPath}/main/searchPw.tat?name=${m_name}" method="POST">
            <h2 class="text-center">비밀번호 찾기</h2>
            <p class="text-center">
                	아래 이메일주소를 입력하시면,<br> 입력하신 이메일로 새암호를 보내드립니다<br>
                <br>
            
            <div class="form-group has-error has-feedback">
                <input type="email" name="m_email" placeholder="m_email" id="m_email"
                    class="form-control" /><i aria-hidden="true"
                    class="form-control-feedback glyphicon glyphicon-remove"></i>
                	<span id="chkMsg1"></span>
                <input type="hidden" name="m_name">	
            </div>
 
            <div class="form-group">
                <button allign="center" class="btn btn-primary" type="submit">비밀번호찾기</button>
            </div>
        </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
<%--   <!-- Include File for All -->
	<c:import url="../common/JS.jsp"/> --%>
<%-- <!-- JS File for MainPage -->
	<script src="${pageContext.request.contextPath}/resources/js/mainPage/mainPage.js"></script> --%>
</html>