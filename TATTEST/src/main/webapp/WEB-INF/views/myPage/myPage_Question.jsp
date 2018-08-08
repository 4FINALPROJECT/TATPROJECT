<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
   <title>TAT 문의하기 || 마이페이지</title>
   <c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
   <style>
      th,td{
         text-align:center;
         
      }
      #boardTable{
         
      }
      #boardWrite{
         display:none;
      }
      a{
         cursor:pointer;
      }
        #shareBoard{
           color:green;
           
        }
        #unshareBoard{
           color:red;
           
        }
   </style>
</head>
<body>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
   <c:import url="common/myPage_Header.jsp"></c:import>
   
   <section class="wrapper">
      <section class="page_head">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="page_title">
                     <h2>1:1 Question</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="${pageContext.request.contextPath}/my/Main.tat">MyPage </a>/</li>
                        <li>Question</li>
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
                     
                     <div class="widget widget_categories">
                        <div class="widget_title">
                           <h4><span>Categories</span></h4>
                           </div>
                        <ul class="arrows_list list_style">
                           <li><a href="${pageContext.request.contextPath}/my/Question.tat"> 내 질문 게시판</a></li>
                           <li><a onclick="boardWrite();"> 질문 하기</a></li>
                        </ul>
                     </div>

                            <div class="widget widget_tab">
                                <div class="velocity-tab sidebar-tab">
                                    <ul  class="nav nav-tabs">
                                        <li class="active"><a href="#Popular" data-toggle="tab">최근 게시물 답변</a></li>
                                    </ul>

                                    <div  class="tab-content clearfix">
                                        <div class="tab-pane fade active in" id="Popular">
                                            <ul class="recent_tab_list">
                                               
                                              
                                               <c:forEach items="${widget}" var="w">
                                               <li class="comments_list clearfix">
                                                    <p><strong><a href="#">글 번호 : ${w.qa_num}<br>글 유형 :${w.qc_code} </a> <i>답변 : </i></strong>${w.a_content }</p>
                                                </li>
                                                </c:forEach>
                                              
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                  </div>
               </div>
               
               <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                  <div class="row sub_content">
                        <div class="col-lg-12 col-md-12 col-sm-12" id="boardTable">
                            <div class="dividerHeading">
                                <h4><span>1:1 질문 게시판</span></h4>
                            </div>
                        
                        <div class="col-lg-12 col-md-12 col-sm-12" >
                            <div class="table-responsive">
                                <table class="table" id="listTable">
                                    <thead>
                                    <tr>
                                        <th>글 번호</th>
                                        <th>글 유형</th>
                                        <th>제목</th>
                                        <th>작성일</th>
                                        <th>공개여부</th>
                                        <th>답변여부</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                       <c:forEach items="${list}" var="b">
                                       <tr id="boardTR">
                                           <td>${b.qa_num}</td>
                                           <td>${b.qc_code}</td>
                                           <td>${b.qa_title}</td>
                                           <td>${b.qa_date}</td>
                                           <c:if test="${b.is_open eq 'N'}">
                                           <td><i class="fas fa-lock"></i></td>
                                           </c:if>
                                           <c:if test="${b.is_open eq 'Y'}">
                                           <td><i class="fas fa-lock-open"></i></td>
                                           </c:if>
                                           <c:if test="${b.a_content ne null}">
                                           <td><i class="fas fa-check-circle"></i></td>
                                           </c:if>
                                           <c:if test="${a_content eq null}">
                                           <td></td>
                                           </c:if>
                                       </tr>
                                       </c:forEach>
                                    </tbody>
                                </table>
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
                        
                        <form action="${pageContext.request.contextPath}/my/WriteBoard.tat" id="submitBoard">
                           <div class="col-lg-12 col-md-12 col-sm-12" id="boardWrite">
                                <div class="dividerHeading">
                                    <h4><span>게시글 작성하기</span></h4>
                                </div>
                                <p>1:1 문의 글을 작성할 수 있는 공간입니다.</p>
                                 <div class="row">
                                     <div class="form-group">
                                         <div class="col-lg-3">
                                             <label><i class="fas fa-angle-double-right"></i> 질문 유형</label>
                                             <select class="form-control" name="category" >
                                                <c:forEach items="${categoryList}" var="list" >
                                                   <option value="${list.qc_code}">${list.qc_name}</option>
                                                </c:forEach>
                                             </select>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="form-group">
                                         <div class="col-lg-12" style="display:inline-block;">
                                             <label><i class="fas fa-angle-double-right"></i> 공개 여부</label>
                                             <div class="col-lg-12">
                                                <input class="form-control col-lg-2" type="checkbox" id="openYORN" name="openYN" style="width:40px; height:40px;">
                                                <br>   
                                             </div>
                                             
                                         </div>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="form-group">
                                         <div class="col-lg-12 ">
                                             <label><i class="fas fa-angle-double-right"></i> 제목</label><input class="form-control" type="text" name="title" id="title" maxlength="100">
                                         </div>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="form-group">
                                         <div class="col-md-12">
                                             <label><i class="fas fa-angle-double-right"></i> 내용</label><textarea class="form-control" name="content" id="content" rows="10" cols="50" style="resize:none;" maxlength="2500"></textarea>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="form-group">
                                         <div class="col-md-3 input-group-prepend">
                                           <button id="writeBoard" class="form-control" onclick="writeBoard();">작성 완료</button>
                                         </div>
                                     </div>
                                 </div>
                            </div>
                        </form>
                        
                    </div>
                     </div>
               </div>
            </div>
         
      </section>
      
   </section>

   <a href="${pageContext.request.contextPath}/my/QuestionDetail.tat">가자갖갖갖가작작작자가작</a>

   <c:import url="common/myPage_Footer.jsp"></c:import>
   <c:import url="../common/JS.jsp"></c:import>
   
   <script>
      function boardWrite(){
      
         $('#boardWrite').css('display','block');
         $('#boardTable').css('display','none');
         
      }
      
      function writeBoard(){
         
         var title = $('#title').val();
         var content = $('#content').val();
         
         if(title != null && content != null){
            
            console.log("들어와?");
            
            $('#submitBoard').submit();
         }else
            alert("제목 또는 내용이 작성해주시기 바랍니다.");
         
      }
      
      
      $(function(){
         $('#openYORN').val('N');
         
      });
      
      $('#openYORN').on('change',function(){
         if($('#openYORN').is(":checked")){
            $(this).val('Y');
         
            console.log($('#openYORN').val());
         }else{
            $(this).val('N');
            
            console.log($('#openYORN').val());
         }
         
      });
      
      $(function(){
         
         $('#listTable td').mouseenter(function(){
            $(this).parent().css({
               "background" : "#dad5e6",
               "cursor":"pointer"
               });
            }).mouseout(function(){
               $(this).parent().css({
                  "background": "white"
                  });
               }).click(function(){
               
               var qa_num = $(this).parent().children().eq(0).text();
                location.href="${pageContext.request.contextPath}/my/QuestionDetail.tat?qa_num="+qa_num;
            });
         });
      
      
      
      
   </script>
</body>
</html>