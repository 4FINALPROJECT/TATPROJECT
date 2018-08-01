<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>템플릿</title>
	<c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
	<style>
		label{
			position: absolute;
			left:15px;
		}
	</style>
</head>
<body>
	<c:import url="common/mainPage_Header.jsp"></c:import>
	<c:import url="common/mainPage_Signin.jsp"></c:import>
	<c:import url="common/mainPage_Signup.jsp"></c:import>
	
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">프로젝트 생성</button>
	
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">프로젝트를 생성합니다.</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form>
	          <div class="form-group">
	            <label for="recipient-name" class="col-form-label">프로젝트 명</label><br>
	            <input type="text" class="form-control" id="recipient-name">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="col-form-label">프로젝트 설명</label><br>
	            <textarea class="form-control" id="message-text"></textarea>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btn-primary">생성</button>
	      </div>
	    </div>
	  </div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<%-- <section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>Template</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="${pageContext.request.contextPath}">Main </a>/</li>
								<li>Template</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		
		<section class="content blog masonry_blog">
	        <div class="container">
	            <div class="mixed-container masonry_wrapper_blog row wow fadeInUp">
	                 <c:forEach items="${te}" var="te">
			                <div class="item">
			                    <div class="blog-item">
			                        <figure class="post_video">
			                            <div class="video">
			                                <iframe src="http://player.vimeo.com/video/3365942?title=0&amp;byline=0&amp;portrait=0" width="100%" height="320" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
			                            </div>
			                        </figure>
			                        <div class="metaInfo">
			                            <span><i class="fa fa-calendar"></i> <a href="#">${te.t_date}</a> </span>
			                            <span><i class="fa fa-tag"></i>  <a href="#">${te.t_category}</a> </span>
			                            <span><i class="fa fa-comments"></i> <a href="#">${te.t_use_count}</a></span>
			                        </div>
			                        <div class="blog-title">
			                            <h2><a href="#" title="">${te.t_title}</a></h2>
			                        </div>
			
			                        <div class="blog-desc">
			                            <p>${te.t_comment}</p>
			                        </div>
			                        <div class="blog-button">
			                        	<form action="${pageContext.request.contextPath}/main/TemplateDetail.tat" method="post">
			                        		<input type="hidden" name="t_code" value="${te.t_code}" />
			                            	<button class="btn btn-small btn-default" type="submit">Read More</button>
			                            </form>
			                        </div>
			                    </div>
			                </div>
					</c:forEach>
	                
	
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
	    </section>
		
	</section>
	<section class="promo_box wow bounceIn">
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
       </section> --%>

	
	<!-- <script>
	    (function ($) {
	        var $container = $('.masonry_wrapper_blog'),
	                colWidth = function () {
	                    var w = $container.width(),
	                            columnNum = 1,
	                            columnWidth = 0;
	                    if (w > 1200) {
	                        columnNum  = 2;
	                    } else if (w > 900) {
	                        columnNum  = 2;
	                    } else if (w > 600) {
	                        columnNum  = 2;
	                    } else if (w > 300) {
	                        columnNum  = 1;
	                    }
	                    columnWidth = Math.floor(w/columnNum);
	                    $container.find('.item').each(function() {
	                        var $item = $(this),
	                                multiplier_w = $item.attr('class').match(/item-w(\d)/),
	                                multiplier_h = $item.attr('class').match(/item-h(\d)/),
	                                width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
	                                height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
	                        $item.css({
	                            width: width,
	                            height: height
	                        });
	                    });
	                    return columnWidth;
	                }
	
	        function refreshWaypoints() {
	            setTimeout(function() {
	            }, 1000);
	        }
	
	        $('nav.portfolio-filter ul a').on('click', function() {
	            var selector = $(this).attr('data-filter');
	            $container.isotope({ filter: selector }, refreshWaypoints());
	            $('nav.portfolio-filter ul a').removeClass('active');
	            $(this).addClass('active');
	            return false;
	        });
	
	        function setPortfolio() {
	            setColumns();
	            $container.isotope('reLayout');
	        }
	
	        isotope = function () {
	            $container.isotope({
	                resizable: true,
	                itemSelector: '.item',
	                masonry: {
	                    columnWidth: colWidth(),
	                    gutterWidth: 0
	                }
	            });
	        };
	        isotope();
	        $(window).smartresize(isotope);
	    }(jQuery));
	</script> -->
	
	<c:import url="common/mainPage_Footer.jsp"></c:import>
	<c:import url="../common/JS.jsp"></c:import>
	<script>
		
		function newProject(){
			
			var commit_check = confirm('게시 하시겠습니까?');
			   
			   if ( commit_check ) {
			      
			      $('#newProjectModal').modal({
			          backdrop: 'static',
			          keyboard: false  // to prevent closing with Esc button (if you want this too)
			      })
			      
			      // 모달창 열기
			      $('#newProjectModal').modal("show");
			      // 반대로 모달상태를 전환함
			      // $('#myModal').modal("toggle");
			      
			      $('html').click(function(e) { 
			         if($(e.target).hasClass('modal')) { 
			            var modalOut = confirm('저장을 취소 하시겠습니까?');
			            if ( modalOut ) {
			               // 모달창 닫기
			               $('#newProjectModal').modal("hide");
			            } 
			         }
			      }); 
			      
			   } else {
			      alert('게시 취소');
			   }
		}
		
		$('#submitProject').click(function(){
			
			var pro_name = $('#projectName').val();
			var pro_content = $('#projectContent').val();
			
			$.ajax({
				url : "/TAT/my/createProject.tat",
				type : "POST",
				data : { pro_name : pro_name, pro_content : pro_content },
				success : function(data){
					
					console.log("데이터 값 : "+data);
					
					if ( data > 0 ) {
						alert("폴더 생성 성공!");
						location.href="/TAT/my/Project.tat";
					}
					
				},error : function(){
					
				}
				
			});
		});

		
		
	</script>
</body>
</html>