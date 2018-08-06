<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시판 관리 - 문의하기 || TAT 관리자</title>
   <c:import url="../common/ICON_CSS_FONT.jsp"></c:import>
</head>
<body>
   <c:import url="common/adminPage_Header.jsp"></c:import>
   
   <c:if test="${m_code eq 'A001'}">
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
                        <li><a href="${pageContext.request.contextPath}/admin/Main.tat">Admin </a>/</li>
                        <li>Question</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      
      <section class="content">
         <div class="container">
            <div class="row">
               
               
               
               <div class="col-lg-12 col-md-12 col-sm-12">
                       <div class="row sub_content">
               <div class="col-lg-12 col-md-12 col-sm-12">
                   <div class="dividerHeading">
                       <h4><span>문의 내역</span></h4>
                   </div>   
               </div>
               <div class="col-lg-12 col-md-12 col-sm-12">
                   <div class="table-responsive">
                       <table class="table table-striped table-hover">
                           <thead>
                           <tr>
                               <th>문의번호</th>
                               <th>질문자</th>
                               <th>분류</th>
                               <th>질문제목</th>
                               <th>질문날짜</th>
                               <th>답변여부</th>
                           </tr>
                           </thead>
                           <tbody class="questionListTable">
                           
                           </tbody>
                       </table>
                   </div>
                           
                   <div class="col-sm-12 text-center">
                  <ul class="pagination">
                     
                  </ul>
               </div>
               </div>
           </div>
                   </div>
                   
                   <div class="col-lg-12 col-md-12 col-sm-12">
                       <div class="dividerHeading">
                           <h4><span>문의 내용</span></h4>
                       </div>
                       <form id="contactForm" class="questionAnswer" action="" novalidate="novalidate">
                          <!--  <div class="row">
                               <div class="form-group">
                                   <div class="col-lg-6 ">
                                       <input type="text" id="name" name="" class="form-control questionName" maxlength="100" data-msg-required="Please enter your name." >
                                   </div>
                                   <div class="col-lg-6 ">
                                       <input type="email" id="email" name="email" class="form-control questionCategory" maxlength="100" data-msg-email="Please enter a valid email address." data-msg-required="Please enter your email address." >
                                   </div>
                               </div>
                           </div>
                           <div class="row">
                               <div class="form-group">
                                   <div class="col-md-12">
                                       <input type="text" id="subject questionTitle" name="subject" class="form-control questionTitle" maxlength="100" data-msg-required="Please enter the subject.">
                                   </div>
                               </div>
                           </div>
                           <div class="row">
                               <div class="form-group">
                                   <div class="col-md-12">
                                       <textarea id="message" class="form-control questionContent" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000"></textarea>
   
                                   </div>
                               </div>
                           </div>
                           <div class="row">
                               <div class="form-group">
                                   <div class="col-md-12">
                                       <textarea id="text" class="form-control questionContent" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000"></textarea>
   
                                   </div>
                               </div>
                           </div>
                           <div class="row">
                               <div class="col-md-12">
                                   <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" onclick="updateAdminComment()" value="Send Message">
                               </div>
                           </div> -->
                       </form>
                   </div>
                   
            </div>
         </div>
      </section>
      
   </section>
   </c:if>
   <c:if test="${m_code ne 'A001' or empty m_code}">
         <c:redirect url="/WEB-INF/views/mainPage/common/mainPage_error.jsp"/>   
   </c:if>
   
   <script>
    window.onload = function(){
       pageIndex(1);
       pageBtn();  
    }
      var showCount = 5;
      var btnCount = 5;
      var showDoubleCount = 5.0;
      var pageVal;
      
      

      function updateAdminComment(qa_num){
         
      
         $.ajax({
            url : "${pageContext.request.contextPath}/admin/updateQuestionAjax.tat",
            type : "post",
            dataType : 'json',
            data : {"qa_num" : qa_num,
                  "a_content" : $('.questionAdminContent').val()
            
            },success : function(data){
               alert("등록이 완료되었습니다.");
            },error: function(jqXHR, textStatus, errorThrown) {
               /* console.log(jqXHR.responseText); */
                 alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
         });
      }
      
      function questionListTable(qNum){
         $('.questionAnswer').empty();
         $.ajax({
            url : "${pageContext.request.contextPath}/admin/QuestionCommentAjax.tat",
            type : "post",
            dataType : 'json',
            data : {"qa_num" : qNum},
            success : function(data){
               for(var idx in data){
                  if(data[idx].a_content == null){data[idx].a_content = ""};
               $('.questionAnswer').append('<div class="row"><div class="form-group"><div class="col-lg-6 ">'+
                     '<input type="text" id="name" name="" class="form-control questionName" maxlength="100" data-msg-required="Please enter your name." value="'+data[idx].m_name+'" readonly>'+
                     '</div><div class="col-lg-6 "><input type="email" id="email" name="email" class="form-control questionCategory" maxlength="100" data-msg-email="Please enter a valid email address." data-msg-required="Please enter your email address." value="'+data[idx].qc_name+'" readonly>'+
                     '</div></div></div><div class="row"><div class="form-group"><div class="col-md-12">'+
                     '<input type="text" id="subject questionTitle" name="subject" class="form-control questionTitle" maxlength="100" data-msg-required="Please enter the subject." value="'+data[idx].qa_title+'" readonly></div></div>'+
                     '</div><div class="row"><div class="form-group"><div class="col-md-12">'+
                     '<textarea id="message" class="form-control questionContent" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" value="" readonly>'+data[idx].qa_content+'</textarea>'+
                     '</div></div></div><div class="row"><div class="form-group"><div class="col-md-12">'+
                     '<textarea id="text" class="form-control questionAdminContent" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" value="">'+data[idx].a_content+'</textarea>'+
                     '</div></div></div><div class="row"><div class="col-md-12">'+
                     '<input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" onclick="updateAdminComment('+data[idx].qa_num+')" value="수정 및 등록">'+
                     '</div></div>');
               }
            },error: function(jqXHR, textStatus, errorThrown) {
               /* console.log(jqXHR.responseText); */
                 alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
         }); 
      };
      
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
            url : "${pageContext.request.contextPath}/admin/QuestionTotalAjax.tat",
            type : "post",
            dataType : 'json',       
            success : function(data){
               var total = data;
               var count = Math.ceil(total/showDoubleCount);
               pageBtnCreate(total);
               if(count>btnCount){pageNextFirstBtn();}
            },error: function(jqXHR, textStatus, errorThrown) {
               /* console.log(jqXHR.responseText); */
                 alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
         }); 
      };
      
      
      
      function pageIndex(pageStartNum){
         
         var start = pageStartNum-1;
          $('.questionListTable').empty(); 
          $.ajax({
            url : "${pageContext.request.contextPath}/admin/QuestionAjax.tat",
            type : "post",
            dataType : 'json', 
            data : {"start" : start,},
            success : function(data){createPageList(data);},
            error: function(jqXHR, textStatus, errorThrown) {
               /* console.log(jqXHR.responseText); */
                 alert("에러발생 :  \n" + textStatus + " : " + errorThrown);}
         }); 
      };
      function createPageList(data){
         /* console.log("ajax 리스트 이름 확인 : "+data.questionList);
         console.log("ajax data 전체 확인 : "+data); */
         
         
         for(var idx in data){
            if(!data[idx].a_content){var aCont = "미확인";}else{var aCont = "확인";}
         $('.questionListTable').append('<tr onclick="questionListTable('+data[idx].qa_num+')"><td>'+data[idx].qa_num+'</td>'+
               '<td>'+data[idx].m_name+'</td>'+
               '<td>'+data[idx].qc_name+'</td>'+
               '<td>'+data[idx].qa_title+'</td>'+
               '<td>'+moment(data[idx].qa_date).subtract(10, 'days').calendar()+'</td>'+
               '<td>'+aCont+'</td></tr>');
         };
      };
         
         
       function pageNextBtnCreate(num){
          var start = (showDoubleCount * btnCount * num) + 1;
          $.ajax({
               url : "${pageContext.request.contextPath}/admin/QuestionTotalCountAjax.tat",
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
                  /* console.log(jqXHR.responseText); */
                    alert("삐용삐용 에러발생 :  \n" + textStatus + " : " + errorThrown);}
            }); 
           
      };   
   </script>
   

   <c:import url="common/adminPage_Footer.jsp"></c:import>
   <c:import url="../common/JS.jsp"></c:import>
</body>
</html>