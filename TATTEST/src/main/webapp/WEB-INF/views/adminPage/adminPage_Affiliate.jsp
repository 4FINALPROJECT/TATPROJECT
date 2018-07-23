<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>제휴 관리  || TAT 관리자</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
	<c:import url="common/adminPage_Header.jsp"></c:import>
	
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Affiliate</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
								<li>Affiliate</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content left_sidebar">
			<div class="container">
				<div class="row">
					
					<div class="col-lg-12 col-md-12 col-sm-12 sub_content">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="dividerHeading">
                                <h4><span>Alert Messages</span></h4>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="alert alert-success alert-dismissable">
                                <strong>Well done!</strong> You message goes here.
                            </div>

                            <div class="alert alert-info alert-dismissable">
                                <strong>Heads up! </strong>You message goes here.
                            </div>
                        </div>

                        <div class="col-lg-6 col-sm-6">
                            <div class="alert alert-success alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                <strong>Well done!</strong> You message goes here.
                            </div>

                            <div class="alert alert-info alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                <strong>Heads up! </strong>You message goes here.
                            </div>
                        </div>
                    </div>
					
					<div class="col-lg-12 col-md-12 col-sm-12">
	                    <div class="row sub_content">
	            <div class="col-lg-12 col-md-12 col-sm-12">
	                <div class="dividerHeading">
	                    <h4><span>Tables</span></h4>
	                </div>
	            </div>
	            <div class="col-lg-12 col-md-12 col-sm-12">
	                <div class="table-responsive">
	                    <table class="table table-striped table-hover">
	                        <thead>
	                        <tr>
	                            <th>Rank</th>
	                            <th>Name</th>
	                            <th>Year</th>
	                            <th>Rating</th>
	                            <th>Votes</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <tr>
	                            <td>1</td>
	                            <td>The Shawshank Redemption</td>
	                            <td>1994</td>
	                            <td>9.2</td>
	                            <td>923,629</td>
	                        </tr>
	                        <tr>
	                            <td>2</td>
	                            <td>The Godfather</td>
	                            <td>1972</td>
	                            <td>9.2</td>
	                            <td>663,133</td>
	                        </tr>
	                        <tr>
	                            <td>3</td>
	                            <td>The Godfather: Part II</td>
	                            <td>1974</td>
	                            <td>9.0</td>
	                            <td>427,132</td>
	                        </tr>
	                        <tr>
	                            <td>4</td>
	                            <td>Pulp Fiction</td>
	                            <td>1994</td>
	                            <td>8.9</td>
	                            <td>719,280</td>
	                        </tr>
	                        <tr>
	                            <td>5</td>
	                            <td>The Good, the Bad and the Ugly</td>
	                            <td>1966</td>
	                            <td>8.9</td>
	                            <td>218,887</td>
	                        </tr>
	                        </tbody>
	                    </table>
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

	<c:import url="common/adminPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>