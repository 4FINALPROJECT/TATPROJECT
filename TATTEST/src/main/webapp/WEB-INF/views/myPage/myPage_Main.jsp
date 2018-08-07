<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
   <title>마이페이지</title>
   <c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
   <style>
     .block{
              width : 150px;
              height : 150px;
              border:0;
              color: white;
              text-align: center;
              font-size:20px;
     }
     .area1{
         border-style: groove;
         border-top-left-radius: 50px;
         background: rgb(209,213,231);
     }
     .area2{
         background: rgb(185,190,219);
     }
     .area3{
         background: rgb(162,168,206);
     }
     .area4{
         background: rgb(131,139,190);
     }

     .area5{
         background: rgb(106,117,179);
     }
     .area6{
         border-style : inset; 
         border-bottom-right-radius: 50px;
         background: rgb(84,96,163);
     }
     .block-test2{
         display:inline-block;
     }  
   </style>
</head>
<body>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
   <c:import url="../common/JS.jsp"></c:import>
   <c:import url="common/myPage_Header.jsp"></c:import>
   
   
   <section class="wrapper">
      <section class="page_head">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="page_title">
                     <h2>My Page</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="${pageContext.request.contextPath}">Main </a>/</li>
                        <li>My Page</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      
      <section class="content contact">
           <div class="container">
               <div class="row sub_content">
                   <div class="col-lg-8 col-md-8 col-sm-8">
                       <div class="dividerHeading">
                           <h4><span>회원 정보</span></h4>
                       </div>
                      <p>회원님 정보를 나타는 공간입니다.</p>
                      
                            <div class="row">
                               <div class="form-group">
                                   <div class="col-lg-6 ">
                                       <label><i class="fas fa-angle-double-right"></i> 이메일</label><input type="text" class="form-control" value="${m.m_email}" readonly>
                                   </div>
                               </div>
                          </div>
                            <div class="row">
                               <div class="form-group">
                                   <div class="col-lg-6 ">
                                       <label><i class="fas fa-angle-double-right"></i> 성명</label><input type="text" class="form-control profile" value="${m.m_name}" readonly>
                                   </div>
                               </div>
                         </div>
                         <div class="row">
                               <div class="form-group">
                                   <div class="col-md-6">
                                       <label><i class="fas fa-angle-double-right"></i> 생년 월일</label><input type="date" class="form-control profile" value="${m.m_birth}" readonly>
                                   </div>
                               </div>
                         </div>
                         <div class="row">
                               <div class="form-group">
                                   <div class="col-md-6">
                                      <c:if test="${m.m_gender eq 'M'}">
                                       <label><i class="fas fa-angle-double-right"></i> 성별</label><input type="text" class="form-control profile" value="남자" readonly>
                                       </c:if>
                                       <c:if test="${m.m_gender eq 'F'}">
                                       <label><i class="fas fa-angle-double-right"></i> 성별</label><input type="text" class="form-control profile" value="여자" readonly>
                                       </c:if>
                                   </div>
                               </div>     
                         </div>
                           <div class="row">
                               <div class="col-md-6">
                                  <label><i class="fas fa-angle-double-right"></i> 가입 일자</label><input type="date" class="form-control profile" value="${m.enroll_date}" readonly>
                               </div>
                           </div>
                      </div>
   
                   <div class="col-lg-4 col-md-4 col-sm-4">
                       <div class="sidebar">
                           <div class="widget_info">
                               <div class="dividerHeading">
                                   <h4><span>ShortCut</span></h4>
                               </div>
                               <p>메뉴 창을 바로 갈 수 있는 바로가기 기능 입니다.</p>
                                 <a href="${pageContext.request.contextPath}/my/Info.tat"><div class="block block-test2 area1" ><br><br><br>내 정보 수정</div></a>&nbsp;
                           <a href="${pageContext.request.contextPath}/my/Payment.tat"><div class="block block-test2 area2" ><br><br><br>결제 정보</div></a>&nbsp;
                           <a data-toggle="modal" data-target="#exampleModal"><div class="block block-test2 area3" ><br><br><br>프로젝트 생성</div></a>&nbsp;
                           <a href="${pageContext.request.contextPath}/my/Project.tat"><div class="block block-test2 area4" ><br><br><br>프로젝트 리스트</div></a>&nbsp;                           
                           <a href="${pageContext.request.contextPath}/my/Question.tat"><div class="block block-test2 area5" ><br><br><br>1:1문의 게시판</div></a>&nbsp;
                                 <a href="${pageContext.request.contextPath}/main/Upgrade.tat"><div class="block block-test2 area6" ><br><br><br>프리미엄 (결제)</div></a>&nbsp;
                             
                           </div>
                          
                       </div>
                   </div>
               </div>
           </div>
       </section>
    
      
      <section>
         <div class="container">
                <div class="row sub_content">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>내 프로젝트</span></h4>
                        </div>
                        <div id="recent-work-slider" class="owl-carousel">
                            
                            <c:forEach items="${list}" var="list" varStatus="status">
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="${pageContext.request.contextPath}/resources/images/portfolio/project${status.index+1}.jpg"/>
                                    <div class="option inner">
                                        <div>
                                            <h5>${list.proj_name}</h5>
                                            <form style="display: inline-block;" method="post" action="${pageContext.request.contextPath}/edit/Main.tat">
                                    <input type="hidden" name="e_code" value="${list.e_code }"/>
                                    <input type="submit" class="btn btn-outline-info" value="편집 하기"/>
                                 </form>
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
        </section>
        
   </section>

   <c:import url="common/myPage_Footer.jsp"></c:import>
   
   
</body>
</html>