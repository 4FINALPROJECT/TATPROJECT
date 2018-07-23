<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시판 관리 - FAQ || TAT 관리자</title>
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
							<h2>FAQ</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
								<li>FAQ</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content left_sidebar">
			<div class="container">
				<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="dividerHeading">
                    <h4><span>FAQ 목록</span></h4>
                </div>
                
            </div>
            <div class="col-lg-6 col-sm-6 ">
                <div class="panel-group accordion" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse02">
                                   
                                    Morbi Congue Turpis Sollicitudin
                                </a>
                            </h4>
                        </div>
                        <div id="collapse02" class="panel-collapse collapse">
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse03">
                                   
                                    Nisi Massa Pretium Mauris Nec Tincidunt Tortor
                                </a>
                            </h4>
                        </div>
                        <div id="collapse03" class="panel-collapse collapse">
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse04">
                                   
                                    Exercitationem Interdum Porttitor
                                </a>
                            </h4>
                        </div>
                        <div id="collapse04" class="panel-collapse collapse">
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-sm-6 ">
                <div class="panel-group accordion" id="toggle">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse06">
                                    This is an awesome template
                                </a>
                            </h4>
                        </div>
                        <div id="collapse06" class="panel-collapse collapse">
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse00">
                                   
                                    Click me to display content
                                </a>
                            </h4>
                        </div>
                        <div id="collapse00" class="panel-collapse collapse">
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">
                                   
                                    Visual Composer
                                </a>
                            </h4>
                        </div>
                        <div id="collapse10" class="panel-collapse collapse">
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                            <div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</div>
                        </div>
                    </div>
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
	                
	                <div class="col-lg-12 col-md-12 col-sm-12">
	                    <div class="dividerHeading">
	                        <h4><span>FAQ 등록</span></h4>
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
	                        <div class="row">
	                            <div class="col-md-12">
	                                <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="Send Message">
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