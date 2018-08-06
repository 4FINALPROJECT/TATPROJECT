<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>자세히보기 | 둘러보기</title>
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
                     <h2>Explore Detail</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="${pageContext.request.contextPath}">Main </a>/</li>
                        <li><a href="${pageContext.request.contextPath}/main/Explore.tat">Explore</a>/</li>
                        <li>Detail</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      
      <section class="content portfolio_single">
         <div class="container">
            <div class="row sub_content">
               <div class="col-lg-8 col-md-8 col-sm-8">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                     <iframe class="" src="${pageContext.request.contextPath}/main/ExploreIframe.tat?e_code=${edit.e_code}&m_code=${v_code}" width="100%" height="500px" scrolling="" frameborder="2" allowfullscreen=""></iframe>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="project_description">
                     <div class="widget_title">
                        <h4><span>${edit.proj_comment}</span></h4>
                     </div>
                     <p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut aut reiciendise voluptat maiores alias aut et perferendis doloribus asperiores ut labore.</p>
                     <p> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                  </div>
                  <div class="project_details">
                     <div class="widget_title">
                        <h4><span>프로젝트 정보</span></h4>
                     </div>
                     <ul class="details">
                        <li><span>Client :</span>${edit.m_code}</li>
                        <li><span>Company :</span> Rain Technologies inc.</li>
                        <li><span>Category :</span> Web Design, Photography</li>
                        <li><span>Date :</span> ${edit.save_date}</li>
                        <li><span>Project URL :</span> <a href="#">www.bestjquery.com</a></li>
                     </ul>
                  </div>
               </div>
            </div>
                <div class="news_comments">
                    <div class="dividerHeading">
                        <h4><span>댓글</span></h4>
                    </div>
                    <div id="comment">
                        <ul id="comment-list">
                        <c:forEach items="${editReply}" var="editReply">
                            <li class="comment">
                                <div class="avatar"><img alt="" src="${pageContext.request.contextPath}/resources/images/blog/avatar_1.png" class="avatar"></div>
                                <div class="comment-container">
                                    <h4 class="comment-author"><a href="#">${editReply.m_name}[${editReply.er_rate}점]</a></h4>
                                    <div class="comment-meta"><a href="#" class="comment-date link-style1">${editReply.er_date}</a></div>
                                    <div class="comment-body">
                                        <p>${editReply.er_reply}</p>
                                    </div>
                                    
                                          <c:if test="${m_code eq editReply.m_code}">
                                            <a data-target="#${editReply.er_num}" data-toggle="collapse">수정</a>                                                                                        
                                            <form class="editDelete" action="${pageContext.request.contextPath}/main/DeleteEditReply.tat" method="post">
                                            <input type="hidden" name="er_num" value="${editReply.er_num}"/>
                                 			<input type="hidden" name="e_code" value="${editReply.e_code}"/>
                                            <a onclick="editDelete()">삭제</a>
                                            </form>
                                            <form class="UpdateEditReply" action="${pageContext.request.contextPath}/main/UpdateEditReply.tat" method="post">
                                            <div class="collapse" id="${editReply.er_num}">                                   
                                   <input type="text" name="er_reply" placeholder="${editReply.er_reply}" value=""/>   
                                   <input type="hidden" name="er_num" value="${editReply.er_num}"/>
                                   <input type="hidden" name="m_code" value="${v_code}"/>
                                   <input type="hidden" name="e_code" value="${edit.e_code}"/>
                                   <button onclick="UpdateEditReply();">수정 완료</button>                                                                                                                                           
                                 </div>
                                 </form>
                                            </c:if>
                                    
                                </div>
                            </li>
                        </c:forEach>
                        </ul>
                    </div>
                    <c:if test="${empty m_code}">
                        <button data-toggle="modal" data-target="#signin" style="background: white; border-radius: 12px;">댓글 남기기</button>
                    </c:if>
                    <div class="dividerHeading">
                                <h4><span>Leave a comment</span></h4>
                                </div>
                     <c:if test="${!empty m_code}">
                     <c:url value="/main/insertEditReply.tat" var="insertEditReply">
                        <%-- <c:param name="t_code" value="${temp.t_code}"/>
                        <c:param name="m_code" value=""/> --%>
                     </c:url>
               <form id="insertEditReplyForm" action="${insertEditReply}" method="post">
                    
                    <div class="comment_form">
                       <div class="row">
                          <input type="hidden" value="${edit.e_code}" name="e_code"/>
                          <input type="hidden" value="${m_code}" name="m_code"/> 
                          
                          <div class="col-sm-4">
                             <input class="col-lg-4 col-md-4 form-control" 
                             max="5" min="1" name="er_rate" type="number" id="er_rate" size="30" onkeydown="showKeyCode(event)"
                             onfocus="if(this.value == 'Url') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Url'; }" placeholder="점수입력란(1 ~ 5)">
                          </div>
                          
                       </div>
                    </div>
                    <div class="comment-box row">
                        <div class="col-sm-12">
                            <p>
                                <textarea name="er_reply" class="form-control" rows="6" cols="40" onfocus="if(this.value == 'Message') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Message'; }" placeholder="내용 입력란">Message</textarea>
                            </p>
                        </div>
                    </div>
                          <c:if test="${!empty m_code}">
                            <button id="insertEditReply" type="submit" class="btn btn-lg btn-default">댓글 작성</button>
                            </c:if>
                            <c:if test="${empty m_code}">
                            <button class="btn btn-lg btn-default" data-toggle="modal" data-target="#signin">로그인이 필요합니다.</button>
                            </c:if>
                    </form>
                    </c:if>
                    
                </div>
                <div class="row sub_content">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>다른 프로젝트</span></h4>
                        </div>
                        <div id="recent-work-slider" class="owl-carousel">                            
                            <c:forEach items="${editlist}" var="editlist">
                                                        
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/portfolio_1.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>${editlist.proj_name}</h5>
                                            <a href="${pageContext.request.contextPath}/main/ExploreDetail.tat?e_code=${editlist.e_code}&m_code=${editlist.m_code}" class="fa fa-search"></a>
                                            <span>${editlist.proj_comment}</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            
                            </c:forEach>
                            
                        </div>
                    </div>
                </div>
         </div>
      </section>
   </section>
   <script>
      function editDelete() {
         $('.editDelete').submit();
      }
      
      function showKeyCode(event) {
         event = event || window.event;
         var keyID = (event.which) ? event.which : event.keyCode;
         if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) )
         {
            
         }
         else
         {
            
         }
         /* 48~57:일반 숫자키 코드, 96~105:숫자키패드 숫자키 코드 */
      }
   </script>
   <c:import url="common/mainPage_Footer.jsp"></c:import>
   <c:import url="../common/JS.jsp"></c:import>
</body>
</html>