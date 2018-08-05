<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원 조회 || TAT 관리자</title>
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
							<h2>Member</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
								<li>Member</li>
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
							<div class="widget widget_search">
								<div class="site-search-area">
									<form method="get" id="site-searchform" action="#">
										<div>
											<input class="input-text" name="s" id="s" placeholder="Enter Search keywords..." type="text" />
											<input id="searchsubmit" value="Search" type="submit" />
										</div>
									</form>
								</div><!-- end site search -->
							</div>
							
							<div class="widget widget_categories">
								<div class="widget_title">
									<h4><span>Categories</span></h4>
									</div>
								<ul class="arrows_list list_style">
									<li><a href="#"> Grapic Design (10)</a></li>
									<li><a href="#"> Web Design & Development (25)</a></li>
									<li><a href="#"> Photography (29)</a></li>
									<li><a href="#"> Custom Illustrations (19)</a></li>
									<li><a href="#"> Wordpress Themes(38)</a></li>
									<li><a href="#"> Videography (33)</a></li>
								</ul>
							</div>
							
							<div class="widget widget_about">
								<div class="widget_title">
									<h4><span>Basic Text Widget</span></h4>
									</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>

                            <div class="widget widget_tab">
                                <div class="velocity-tab sidebar-tab">
                                    <ul  class="nav nav-tabs">
                                        <li class="active"><a href="#Popular" data-toggle="tab">Popular</a></li>
                                        <li class=""><a href="#Recent" data-toggle="tab">Recent</a></li>
                                        <li class="last-tab"><a href="#Comment" data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
                                    </ul>

                                    <div  class="tab-content clearfix">
                                        <div class="tab-pane fade active in" id="Popular">
                                            <ul class="recent_tab_list">
                                                <li>
                                                    <span><a href="#"><img src="/resources/images/content/recent_1.png" alt="" /></a></span>
                                                    <a href="#">Publishing packag esanse web page editos</a>
                                                    <i>October 09, 2015</i>
                                                </li>
                                                <li>
                                                    <span><a href="#"><img src="/resources/images/content/recent_2.png" alt="" /></a></span>
                                                    <a href="#">Sublishing packag esanse web page editos</a>
                                                    <i>October 08, 2015</i>
                                                </li>
                                                <li class="last-tab">
                                                    <span><a href="#"><img src="/resources/images/content/recent_3.png" alt="" /></a></span>
                                                    <a href="#">Mublishing packag esanse web page editos</a>
                                                    <i>October 07, 2015</i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-pane fade" id="Recent">
                                            <ul class="recent_tab_list">
                                                <li>
                                                    <span><a href="#"><img src="/resources/images/content/recent_4.png" alt="" /></a></span>
                                                    <a href="#">Various versions has evolved over the years</a>
                                                    <i>October 18, 2015</i>
                                                </li>
                                                <li>
                                                    <span><a href="#"><img src="/resources/images/content/recent_5.png" alt="" /></a></span>
                                                    <a href="#">Rarious versions has evolve over the years</a>
                                                    <i>October 17, 2015</i>
                                                </li>
                                                <li class="last-tab">
                                                    <span><a href="#"><img src="/resources/images/content/recent_6.png" alt="" /></a></span>
                                                    <a href="#">Marious versions has evolven over the years</a>
                                                    <i>October 16, 2015</i>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-pane fade" id="Comment">
                                            <ul class="comments">
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="/resources/images/content/recent_3.png" alt="#"></a>
                                                    <p><strong><a href="#">Prambose</a> <i>says: </i> </strong> Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                                </li>
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="/resources/images/content/recent_1.png" alt="#"></a>
                                                    <p><strong><a href="#">Makaroni</a> <i>says: </i> </strong> Tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada.</p>
                                                </li>
                                                <li class="comments_list clearfix">
                                                    <a class="post-thumbnail" href="#"><img width="60" height="60" src="/resources/images/content/recent_2.png" alt="#"></a>
                                                    <p><strong><a href="#">Prambanan</a> <i>says: </i> </strong> Donec convallis, metus nec tempus aliquet, nunc metus adipiscing leo, a lobortis nisi dui ut odio. Nullam ultrices, eros accumsan vulputate faucibus, turpis tortor.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

							<div class="widget widget_tag">
								<div class="widget_title">
									<h4><span>Tags Widget</span></h4>
								</div>
								<ul class="tags">
									<li><a href="#"><b>business</b></a></li>
									<li><a href="#">corporate</a></li>
									<li><a href="#">css3</a></li>
									<li><a href="#"><b>html5</b></a></li>
									<li><a href="#">javascript</a></li>
									<li><a href="#"><b>jquery</b></a></li>
									<li><a href="#">multipurpose</a></li>
									<li><a href="#"><b>mysql</b></a></li>
									<li><a href="#">portfolio</a></li>
									<li><a href="#">premium</a></li>
									<li><a href="#">responsive</a></li>
									<li><a href="#"><b>theme</b></a></li>
									<li><a href="#"><b>Best jQuery</b></a></li>
								</ul>
							</div>
							
							<div class="widget widget_archives">
								<div class="widget_title">
									<h4><span>Archives</span></h4>
								</div>
								<ul class="archives_list list_style">
									<li><a href="#"> November 2015</a></li>
									<li><a href="#"> October 2015</a></li>
									<li><a href="#"> September 2015</a></li>
									<li><a href="#"> August 2015</a></li>
									<li><a href="#"> July 2015</a></li>
									<li><a href="#"> June 2015</a></li>
									<li><a href="#"> May 2015</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
						<div class="row sub_content">
				            <div class="col-lg-12 col-md-12 col-sm-12">
				                <div class="dividerHeading">
				                    <h4><span>회원 목록</span></h4>
				                </div>
				            </div>
				            <div class="col-lg-12 col-md-12 col-sm-12">
				                <div class="table-responsive">
				                    <table class="table table-striped table-hover">
				                        <thead>
				                        <tr>
				                            <th>Member_Code</th>
				                            <th>Member_EMAIL</th>
				                            <th>Member_NAME</th>
				                            <th>Member_Birth</th>
				                            <th>Member_Gender</th>
				                            <th>Member_Joindate</th>
				                            <th>IS_USEABLE</th>
				                        </tr>
				                        </thead>
				                        <tbody class="memberListTable">
				                        	
				                        </tbody>
				                    </table>

				                </div>
				                        
				                <div class="col-sm-12 text-center">
									<ul class="pagination">
									 
									</ul>
								</div>
								
																
				            </div>
				            
				            <div class="col-lg-12 col-md-12 col-sm-12">
			                    <div class="dividerHeading">
			                        <h4><span>상세정보</span></h4>
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
						
					</div>
				</div>
			
		</section>

	</section>
	
	<script>
	 window.onload = function(){
		 pageIndex(1);
		 pageBtn();  
	 }
		var showCount = 5;
		var btnCount = 5;
		var showDoubleCount = 5.0;
		var pageVal;

		function pageNextFirstBtn(){
			$('.pagination').append('<li class="pageNextBtn"><a onclick="pageNextBtn(1)">››</a></li>')
		}
		 function pageNextBtn(i){
			
			 var num = Math.ceil(((showCount*btnCount*i)+1)/showDoubleCount);
			 pageIndex(num);
			 pageNextBtnCreate(i,num);
		}; 
		
		function pageBtnCreate(total){
			$('.pageIndex').empty();
			var num; 
			if(total%showDoubleCount != 0){
				num = Math.ceil(total/showCount);
			}
			else{
			num = Math.ceil(total/showCount);
			} 
			if(num > 5){
				num = 5
				for(var i= 1 ; i<=num;i++ ){ 
					$('.pagination').append('<li class="pageIndex'+i+'"><a onclick="pageIndex('+i+')";>'+i+'</a></li>');
				}
			}else{
				for(var i= 1 ; i<=num;i++ ){ 
				$('.pagination').append('<li class="pageIndex'+i+'"><a onclick="pageIndex('+i+')";>'+i+'</a></li>');
				};
			}	
		};
		
		function pageBtn(){
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/MemberTotalAjax.tat",
				type : "post",
				dataType : 'json', 		
				success : function(data){
					var total = data;
					var count = Math.ceil(total/showDoubleCount);
					pageBtnCreate(total);
					if(count>btnCount){pageNextFirstBtn();}
				},error: function(jqXHR, textStatus, errorThrown) {
					//console.log(ajax.responseText);
			        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
			}); 
		};
		
		
		
		function pageIndex(pageStartNum){
			
			var start = pageStartNum-1;
			 $('.memberListTable').empty(); 
			 $.ajax({
				url : "${pageContext.request.contextPath}/admin/MemberAjax.tat",
				type : "post",
				dataType : 'json', 
				data : {"start" : start,},
				success : function(data){createPageList(data);},
				error: function(jqXHR, textStatus, errorThrown) {
					//console.log(ajax.responseText);
			        alert("에러발생 :  \n" + textStatus + " : " + errorThrown);}
			}); 
		};
		function createPageList(data){
			console.log("ajax 리스트 이름 확인 : "+data.memberList);
			console.log("ajax data 전체 확인 : "+data);
			for(var idx in data){
				/* console.log("데이터 확인 :"+  dateFormat((data[idx].enroll_date), 'mm/dd/yy')); */
			$('.memberListTable').append('<tr><td>'+data[idx].m_code+'</td>'+
					'<td>'+data[idx].m_email+'</td>'+
					'<td>'+data[idx].m_name+'</td>'+
					'<td>'+data[idx].m_birth+'</td>'+
					'<td>'+data[idx].m_gender+'</td>'+
					'<td>'+data[idx].enroll_date+'</td>'+
					'<td>'+data[idx].is_usable+'</td></tr>');
			};
		};
			
			
		 function pageNextBtnCreate(num){
			 var start = (showDoubleCount * btnCount * num) + 1;
			 $.ajax({
					url : "${pageContext.request.contextPath}/admin/MemberTotalCountAjax.tat",
					type : "post",
					dataType : 'json',
					data: {"start" : start},
					success : function(data){
						  $('.pagination').empty();
						  var total = Math.ceil(data/showDoubleCount);
						  var nextFlag = false;
						  if(total > btnCount){total = btnCount; nextFlag = true;}
						  var prevBtn = num-1;
						  if(prevBtn >= 0){
							 $('.pagination').append('<li class="pagePreBtn"><a onclick="pageNextBtn('+prevBtn+')";>‹‹</a></li>');
						  }
						  var start = num*btnCount;
						  for(var i = 1 ;i<=total ;i++){
							var btnIndex = start+i;
							$('.pagination').append('<li class="pageIndex'+btnIndex+'"><a onclick="pageIndex('+btnIndex+')";>'+btnIndex+'</a></li>');
						  }  
						  var nextBtn = num+1;
						  if(nextFlag){  
						 	$('.pagination').append('<li class="pageNextBtn"><a onclick="pageNextBtn('+nextBtn+')";>››</a></li>');
						  }
					},error: function(jqXHR, textStatus, errorThrown) {
						//console.log(ajax.responseText);
				        alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
				}); 
			  
		};	
	</script>
	<c:import url="common/adminPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
</body>
</html>