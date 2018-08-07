<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
   <title>프로젝트 || 마이페이지</title>
   <c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
   <style>
         a{
            cursor:pointer;
         }
         #ProjectName{
            display:none;
         }
         #ProjectComment{
            display:none;
         }
         
   </style>
</head>
<body>
   <c:import url="common/myPage_Header.jsp"></c:import>
   
   <section class="wrapper">
      <section class="page_head">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="page_title">
                     <h2>Project</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="${pageContext.request.contextPath}/my/Main.tat">MyPage </a>/</li>
                        <li><a href="${pageContext.request.contextPath}/my/Project.tat">Project </a>/</li>
                        <li>Detail</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      
      <section class="content blog">
         <div class="container">
            <div class="row">
               <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                  <div class="blog_single">
                     <article class="post">
                        <figure class="post_img">
                           <a href="#">
                              <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/portfolio/project${param.img}.jpg" style="width:700px; height:500px;" >
                           </a>
                        </figure>
                      
                        
                           <div class="post_meta">
                              <label><i class="fas fa-angle-double-right"></i> 프로젝트 명</label>
                              <h2>
                                 <a>${p.proj_name }</a>
                              </h2>
                              <hr>
                              <div class="metaInfo">
                                 <span><i class="fa fa-calendar"></i> <a >${p.save_date}</a> </span>
                                 <span><i class="fa fa-user"></i> By <a >${p.m_code}</a> </span>
                                 <span><i class="fa fa-comments"></i> <a >${count} Comments</a></span>
                              </div>
                              <hr>
                           </div>
                           
                           <label><i class="fas fa-angle-double-right"></i> 프로젝트 코멘트</label>
                           <blockquote class="default">
                             ${p.proj_comment }
                           </blockquote>   
                    
                     </article>
                     
                  </div>

                  <!--News Comments-->
                        <div class="news_comments">
                            <div class="dividerHeading">
                                <h4><span>나의 프로젝트에 남긴 댓글 (${count})</span></h4>
                            </div>
                            <div id="comment">
                                <ul id="comment-list">
                                    <c:forEach items="${rList}" var="rlist">
                                    <li class="comment">
                                        <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/1.jpg" class="avatar"></div>
                                        <div class="comment-container">
                                            <h4 class="comment-author"><a href="#">${rlist.m_code}</a></h4>
                                            <div class="comment-meta"><a href="#" class="comment-date link-style1">${rlist.er_date}</a><a class="comment-reply-link link-style3" href="#respond">★${rlist.er_rate}점</a></div>
                                            <div class="comment-body">
                                                <p>${rlist.er_reply}</p>
                                            </div>
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            
                            
                            <!-- /#comments -->
                            <div class="dividerHeading">
                                <h4><span>답글 달기</span></h4>
                            </div>
               <c:if test="${!empty m_code}">
                     <c:url value="/my/insertProjectReply.tat" var="insertProjectReply">
                        <%-- <c:param name="t_code" value="${temp.t_code}"/>
                        <c:param name="m_code" value=""/> --%>
                     </c:url>
                    <form id="insertProjectReplyForm" action="${insertProjectReply}" method="post">
                    
                    <input type="hidden" value="${param.img}" name="img"/>
                    <div class="comment_form">
                       <div class="row">
                          <input type="hidden" value="${p.e_code}" name="e_code"/>
                          <input type="hidden" value="${m_code}" name="m_code"/> 
                       </div>
                    </div>
                    
                    <div class="comment-box row">
                        <div class="col-sm-12">
                            <p>
                                <textarea name="er_reply" class="form-control" rows="6" cols="40" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="댓글은 여기에 작성해 주시기 바랍니다."></textarea>
                            </p>
                        </div>
                    </div>
                          <c:if test="${!empty m_code}">
                            <button id="insertProjectReply" type="submit" class="btn btn-lg btn-default">댓글 작성</button>
                            </c:if>
                            <c:if test="${empty m_code}">
                            <button class="btn btn-lg btn-default" data-toggle="modal" data-target="#signin">로그인이 필요합니다.</button>
                            </c:if>
                    </form>
               </c:if>
                           
                        </div>
                </div>

               <!--Sidebar Widget-->
               <div class="col-xs-12 col-md-4 col-lg-4 col-sm-4">
                  <div class="sidebar">
                     
                     
                     <div class="widget widget_categories">
                        <div class="widget_title">
                           <h4><span>Categories</span></h4>
                           </div>
                        <ul class="arrows_list list_style">
                           <li><a onclick="updateProjectName();"> 프로젝트명 수정</a></li>
                           <li><a onclick="updateProjectComment();"> 프로젝트설명 수정</a></li>
                        </ul>
                     </div>
                     
                     <div class="widget widget_about" id="ProjectName">
                        <div class="widget_title" >
                           <h4><span>프로젝트 명 수정</span></h4>
                        </div>
                        <label><i class="fas fa-angle-double-right"></i> 현재 프로젝트 명</label>
                        <input type="text" class="form-control" value="${p.proj_name }" readonly >
                        <label><i class="fas fa-angle-double-right"></i> 변경할 프로젝트 명</label>
                        <form action="${pageContext.request.contextPath}/my/updateProjectName.tat" method="POST">
                           <input type="text" class="form-control" name="proj_name">
                           <input type="hidden" value="${p.e_code}" name="e_code"/>
                           <input type="hidden" value="${param.img}" name="img"/>
                        <button type="submit" class="form-control">변경 완료</button> 
                        </form>                   
                     </div>
                     
                     <div class="widget widget_about" id="ProjectComment">
                        <div class="widget_title">
                           <h4><span>프로젝트 설명 수정</span></h4>
                        </div>
                         <form action="${pageContext.request.contextPath}/my/updateProjectComment.tat" method="post">   
                         <textarea class="form-control" rows="6" cols="40" name="proj_comment" ></textarea>
                          <input type="hidden" value="${p.e_code}" name="e_code"/>
                          <input type="hidden" value="${param.img}" name="img"/>
                         <button type="submit" class="form-control">변경 완료</button> 
                         </form>
                     </div>
                     
                  </div>
               </div>
            </div><!--/.row-->
         </div> <!--/.container-->
      </section>
      
   </section>

   <c:import url="common/myPage_Footer.jsp"></c:import>
   <c:import url="../common/JS.jsp"></c:import>
   <script>
       (function ($) {
           var $container = $('.masonry_wrapper_blog'),
                   colWidth = function () {
                       var w = $container.width(),
                               columnNum = 1,
                               columnWidth = 0;
                       if (w > 1200) {
                           columnNum  = 3;
                       } else if (w > 900) {
                           columnNum  = 3;
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
       
       function updateProjectName(){
          
         $('#ProjectName').css('display','block');
         $('#ProjectComment').css('display','none');
         
       }
       
       function updateProjectComment(){
          
          $('#ProjectName').css('display','none');
          $('#ProjectComment').css('display','block');
          
        }
       
       
   </script>
</body>
</html>
