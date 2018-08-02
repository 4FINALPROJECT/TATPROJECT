<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
 
<head>

<title></title>

</head>
 
<body>
	<br /><br />
    <div class="contact-clean" style="text-align: center;">
        <form action="${pageContext.request.contextPath}/main/newPw.tat?email=${email}" method="POST">
            <h2 class="text-center">비밀번호 재설정 </h2>
            <p class="text-center">          
            <br>
            <div class="form-group has-success has-feedback">
                <input type="password" name="m_pwd" id="m_pwd" class="form-control" placeholder="비밀번호 입력창"/>
            </div><span id="chkMsg2"></span>
            <div class="form-group has-error has-feedback">
                <input type="password" name="m_pwd2" id="m_pwd2" class="form-control" placeholder="비밀번호 확인" />    
            </div><span id="chkMsg3"></span>
 
            <div class="form-group">
                <button allign="center" class="btn btn-primary" type="submit" id="changePwd">비밀번호 변경</button>
            </div>
        </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
 <c:import url="../common/JS.jsp"></c:import>
</html>