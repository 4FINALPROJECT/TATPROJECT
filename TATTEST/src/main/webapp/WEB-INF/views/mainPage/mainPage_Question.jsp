<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>1:1문의</title>
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
							<h2>Question</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>Question</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content contact">
	        <div class="container">
	            <div class="row sub_content">
	                <div class="col-lg-12 col-md-12 col-sm-12">
	                    <div class="row sub_content">
	            <div class="col-lg-12 col-md-12 col-sm-12">
	                <div class="dividerHeading">
	                    <h4><span>Tables</span></h4>
	                </div>
	            </div>
	            <div class="col-lg-12 col-md-12 col-sm-12">
	                <div class="table-responsive">
<<<<<<< HEAD
	                    <table class="table table-striped table-hover">
	                    <thead>
					    <tr>
					      <th scope="col">글번호</th>
					      <th scope="col">카테고리</th>
					      <th scope="col">제목</th>
					      <th scope="col">작성자</th>
					      <th scope="col">작성일</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${qa}" var="qa">
					    <tr class="" data-toggle="modal" data-target="">
					      <th scope="row">${qa.qa_num}</th>
					      <td>${qa.qc_code}</td>
					      <td>${qa.qa_title}</td>
					      <td>${qa.m_code}</td>
					      <td>${qa.qa_date}</td>
					    </tr>
					   </c:forEach>
					  </tbody>
=======
	                    <table class="table table-striped table-hover">
	                    <thead>
					    <tr>
					      <th scope="col">글번호</th>
					      <th scope="col">카테고리</th>
					      <th scope="col">제목</th>
					      <th scope="col">작성자</th>
					      <th scope="col">작성일</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${qa}" var="qa">
					    <tr class="" data-toggle="modal" data-target="">
					      <th scope="row">${qa.qa_num}</th>
					      <td>${qa.qc_code}</td>
					      <td>${qa.qa_title}</td>
					      <td>${qa.m_code}</td>
					      <td>${qa.qa_date}</td>
					    </tr>
					   </c:forEach>
					  </tbody>
>>>>>>> branch 'master' of https://github.com/4FINALPROJECT/TATPROJECT.git
	                    </table>
	                </div>
	                        <div class="row">
	                            <div class="col-md-12">
	                                <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="Send Message" data-toggle="modal" data-target=".bd-example-modal-lg">
	                            </div>
	                        </div>
	                <div class="col-sm-12 text-center">
						<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
	            </div>
	        </div>
	                </div>
	            </div>
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>
	            <div class="row sub_content">
	                <div class="col-lg-12 col-md-12 col-sm-12">
	                    <div class="dividerHeading">
	                        <h4><span>Get in Touch</span></h4>
	                    </div>
	                    <p>Vidit nulla errem ea mea. Dolore apeirian insolens mea ut, indoctum consequuntur hasi. No aeque dictas dissenti as tusu, sumo quodsi fuisset mea in. Ea nobis populo interesset cum, ne sit quis elit officiis, min im tempor iracundia sit anet. Facer falli aliquam nec te. In eirmod utamur offendit vis, posidonium instructior sed te.</p>
	
	                    <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
	                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	                        <strong>Success!</strong> Your message has been sent to us.
	                    </div>
	
	                    <div class="alert alert-error hidden" id="contactError">
	                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	                        <strong>Error!</strong> There was an error sending your message.
	                    </div>
	
	                    <form id="contactForm" action="" novalidate="novalidate">
	                        <div class="row">
	                            <div class="form-group">
	                                <div class="col-lg-6 ">
	                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Your Name" >
	                                </div>
	                                <div class="col-lg-6 ">
	                                    <input type="email" id="email" name="email" class="form-control" maxlength="100" data-msg-email="Please enter a valid email address." data-msg-required="Please enter your email address." value="" placeholder="Your E-mail" >
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="form-group">
	                                <div class="col-md-12">
	                                    <input type="text" id="subject" name="subject" class="form-control" maxlength="100" data-msg-required="Please enter the subject." value="" placeholder="Subject">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="form-group">
	                                <div class="col-md-12">
	                                    <textarea id="message" class="form-control" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" placeholder="Message"></textarea>
	
	                                </div>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	
	                
	
	            </div>
	        </div>
	    </section>
		
	</section>

	<c:import url="common/mainPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>