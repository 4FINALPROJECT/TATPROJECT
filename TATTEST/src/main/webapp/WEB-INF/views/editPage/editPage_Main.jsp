<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT PAGE MAIN</title>
   <c:import url="common/EDIT_CSS.jsp"/>
</head>
<body>
<div class="tat-wrap">
<div class="tat-head-wrap">
   <div class="tat-head-hide"><div class="tat-hide-btn">∧</div></div>
   
   <div class="tat-head">
      <div class="tat-head-content-left">
         <img id="tat-head-logo" src="${pageContext.request.contextPath}/resources/images/editPage/logo.gif" class="w3-bar-item" alt="회사로고">
         
         <div class="tat-my-page">
            <span style="float: left;">페이지:</span>
            <span class="mypage-viewList" style="float: left; padding-left:5px; color: coral;">${ cururl }</span>
            <span style="float: right;">▽</span>
         </div>
         <div class="tat-my-page-content">
            <div class="tat-my-page-list">
               <div>home</div>
            </div>
            <div class="tat-my-page-btn">
               <div id="tat-my-page-btn">페이지 추가</div>
            </div>
         </div>
      </div>
      
      <div class="tat-head-content-center">
         <div class="siteWrap">
            사이트
            <div class="tat-head-content-box tat-sitebox">
               <div class="cbox-content-wrap siteB">
                        <div class="edit-top-left">
                            <div id="edit_submit"> 저 장 </div>
                            <!-- <div id="edit_miribogi"> 미 리 보 기 </div> -->
                            <div id="edit_allview"> 공 유 하 기 </div>
                            <div id="edit_end"> 에 디 터 종 료 </div>
                        </div>
                        <div class="edit-top-right">
                            <div toolimg="edit_submit"> 저 장  <hr>
                             <img src="${pageContext.request.contextPath}/resources/images/editPage/save.png" style="width : 90%; height : 70%;">  
                            </div>
                            <%-- <div toolimg="edit_miribogi"> 미 리 보 기  <hr>
                            <img src="${pageContext.request.contextPath}/resources/images/editPage/miribogi.png" style="width : 90%; height : 70%;">
                            </div> --%>
                            <div toolimg="edit_allview"> 공 유 하 기  <hr>
                            <img src="${pageContext.request.contextPath}/resources/images/editPage/goyou.png" style="width : 90%; height : 70%;">
                            </div>
                            <div toolimg="edit_end"> 에 디 터 종 료  <hr>
                            <img src="${pageContext.request.contextPath}/resources/images/editPage/edit_end.png" style="width : 90%; height : 70%;">
                            </div>
                        </div>
                    </div>
            </div>
         </div>
         <div class="toolWrap">
            도구
            <div class="tat-head-content-box tat-toolbox">
               <div class="cbox-content-wrap toolB">
                  <div class="edit-top-left">
                            <div id="rtoolChk">
                               <input type="checkbox" id="rtoolLabel" checked="checked"/><label for="rtoolLabel">상세 툴바</label>
                              </div>
                            <div id="ltoolChk">
                               <input type="checkbox" id="ltoolLabel" checked="checked"/><label for="ltoolLabel">컨텐츠툴바</label>
                              </div>
                            <div id="bodyScale">
                               <input type="checkbox" id="bodyScaleLabel" checked="checked"/><label for="bodyScaleLabel">눈 금 자</label>
                              </div>
                            <div id="grideLine">
                               <input type="checkbox" id="grideLineLabel" checked="checked"/><label for="grideLineLabel">그리드라인</label>
                            </div>
                        </div>
                        <div class="edit-top-right">
                           <div toolimg="rtoolChk">상세 툴바 <hr>
                           <img src="${pageContext.request.contextPath}/resources/images/editPage/right.png" style="height : 70%;">
                           </div>
                           <div toolimg="ltoolChk">컨텐츠툴바<hr>
                           <img src="${pageContext.request.contextPath}/resources/images/editPage/left.png" style="height : 70%;">
                           </div>
                           <div toolimg="bodyScale">눈 금 자<hr>
                           <img src="${pageContext.request.contextPath}/resources/images/editPage/noon.png" style="height : 70%;">
                           </div>
                           <div toolimg="grideLine">그리드라인<hr>
                           <img src="${pageContext.request.contextPath}/resources/images/editPage/grideLine.png" style="height : 70%;">
                           </div>
                        </div>
               </div>
            </div>
         </div>
         <div class="conWrap">
            도움말
            <div class="tat-head-content-box tat-contentbox">
               <div class="cbox-content-wrap conB">
                  <div class="edit-top-left">
                     <div id="editHelp">에디터 도움말 센터</div>
                     <div id="keyEven">키보드 단축키</div>
                     <div id="domainLink">도메인 연결하기</div>
                     <div id="seo">SEO</div>
                     <div id="tos">이용약관</div>
                     <div id="privacy">개인정보 취급방침</div>
                  </div>
                  <div class="edit-top-right">
                     <div toolimg="editHelp">에디터 도움말 센터</div>
                     <div toolimg="keyEven">키보드 단축키</div>
                     <div toolimg="domainLink">도메인 연결하기</div>
                     <div toolimg="seo">SEO</div>
                     <div toolimg="tos">이용약관</div>
                     <div toolimg="privacy">개인정보 취급방침</div>
                  </div>
               </div>
            </div>
         </div>
         <div class="upWrap">
            업그레이드
            <div class="tat-head-content-box tat-upgradebox">
               <div class="cbox-content-wrap upB">
                    <div class="edit-top-left">
                     <div id="Money-upgrade"> 결 제 하 쉴 ? </div>
                  </div>
                  <div class="edit-top-right">
                     <div toolimg="Money-upgrade"> 
                     Up Up Up
                     <hr>
                     <img src="${pageContext.request.contextPath}/resources/images/editPage/upgrade_img.png" style="width:90%; height : 70%;">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <div class="tat-head-content-right">
      	<c:if test="${edit.is_share == 'N'}">
         <div id="commit-btn" style="background: royalblue; color: white;">공유하기</div>
      	</c:if>
      	<c:if test="${edit.is_share == 'Y'}">
         <div id="cancle-btn" style="background: pink; color: white;">공유취소</div>
      	</c:if>
         <div id="save-btn">저장</div>
         <div id="view-btn">미리보기</div>
         <div id="redo-btn">redo</div>
         <div id="undo-btn">undo</div>
      </div>
   </div>
</div>

     <div class="tat-body">
<!-- 왼쪽 툴바 -->
   <c:import url="editPage_LeftTool.jsp"/>
<!-- 오른쪽 툴바 -->
   <c:import url="editPage_RightTool.jsp"/>
<!-- 회원 편집 공간 -->
   <%-- <c:if test="${ editPageHead == null }">
      에러발생
   </c:if>
   <c:if test="${ editPageHead != null }">
      <c:import url="/${ editPageHead }"/>
   </c:if> --%>
   
   <c:if test="${ editPageBody == null }">
      에러발생
   </c:if>
   <c:if test="${ editPageBody != null }">
      <c:import url="/${ editPageBody }"/>
   </c:if>
   
   <%-- <c:if test="${ editPageFooter == null }">
      에러발생
   </c:if>
   <c:if test="${ editPageFooter != null }">
      <c:import url="/${ editPageFooter }"/>
   </c:if> --%>
   
   </div>
   
</div>

<form id="saveForm" style="visibility: hidden; display: none;" method="POST" action="/TAT/edit/Main.tat">
   <input type="hidden" name="cururl" id="cururl"/>
   <input type="hidden" name="e_code" id="e_code"/>
   <input type="submit" id="saveBtn" style="visibility: hidden; display:none;"/>
</form>

<div class="modal fade" id="myModal" style="z-index: 10000;">
  <div class="modal-dialog" style="top:150px;">
    <div class="modal-content">
      <div class="modal-header"></div>
      <div class="modal-body" style="text-align: center;">
            <input class="modal-cc" type="text" placeholder="프로젝트 이름을 입력해주세요." size="30"/>
             <div class="modal-cc" style="background: royalblue; color: white; float:right; width: 60px; height:30px; padding:5px;">게시</div>
      </div>
      <div class="modal-footer"></div>
    </div>
  </div>
</div>

</body>
   <!-- JS File for EditPage -->
   <c:import url="common/EDIT_JS.jsp"/>

   
<script>
var cururl = '${ cururl }';
var folderName = '${ fN }';

var pageSelect;



function saveEvent() {
   var save_check = confirm('저장 하시겠습니까?');
   if ( save_check ) {
      alert('저장 완료!');
      $.ajax({
         url : "/TAT/edit/editOop.tat",
         data : { edit : editWrap[0].outerHTML, folderName : folderName, cururl : cururl },
         dataType : "json",
         type : "POST",
         success : function(data) {
            //console.log("파일 저장 성공 : "+data.editLog);
         }, error : function(data) {
            
         }
      });
   } else {
      alert('저장 취소!');
   }
}

var pli = '${ pageList }';

$(function(){
   if ( pli.length > 0 ) {
      var plib = pli.split(",");
      for ( var i in plib ) {
         //console.log(plib[i]);
         $(".tat-my-page-list").append("<div>"+plib[i]+"</div>");
         $(".pageBody").append("<div>"+plib[i]+"</div>");
      }
   }
})

$(".pageFooter").click(function(){
   pageFoot();
});

$(".tat-my-page-btn").click(function(){
   $('.pageBody').children().on({
      "mouseenter" : function() {
         $(this).css({
            "background-color" : "#eaf7ff",
            "cursor" : "pointer"
         })
      },
      "mouseleave" : function() {
         $(this).css({
            "background-color" : "whitesmoke",
         })
      },
      "click" : function() {
         pageSelect = $(this).html();
        //console.log(pageSelect);
         /* pageEvent(); */
      }
   });
});
function pageFoot() {
    /* event.stopImmediatePropagation(); */ 
      var $pageplus = $("<div>");
      var $pageClone = $("<div>");
      
      var pagetext = [];
        /* $(".tat-my-page-list").children().each(function(){
          pagetext.push($(this).text());
       });*/
      if($(".tat-my-page-list").children().length > 4){
         alert("신규페이지는 5개 이상 생성이 불가능 합니다.");
      } else {
         
         $pageplus.text("page"+$(".tat-my-page-list").children().length);
         $(".tat-my-page-list").append($pageplus);
         
         $(".tat-my-page-list").children().each(function(){
             pagetext.push($(this).text());
         });
         //console.log(pagetext);
         for(var i in pagetext){
             $pageClone.text(pagetext[i]);
         }
         
         $(".pageBody").append($pageClone);
      }  
      
    $('.pageBody').children().on({
      "mouseenter" : function() {
         $(this).css({
            "background-color" : "#eaf7ff",
            "cursor" : "pointer"
         })
      },
      "mouseleave" : function() {
         $(this).css({
            "background-color" : "whitesmoke",
         })
      },
      "click" : function() {
         pageSelect = $(this).html();
        //console.log(pageSelect);
         pageEvent();
      }
   });
    
    $('.tat-my-page-list').children().on({
      "mouseenter" : function() {
         $(this).css({
            "background-color" : "#eaf7ff",
            "cursor" : "pointer"
         })
      },
      "mouseleave" : function() {
         $(this).css({
            "background-color" : "white",
         })
      },
      "click" : function() {
         pageSelect = $(this).html();
         pageEvent();
      }
   });
}


$("#left_main_folder").on("click", function() {
   $('.pageBody').children().on({
      "mouseenter" : function() {
         $(this).css({
            "background-color" : "#eaf7ff",
            "cursor" : "pointer"
         })
      },
      "mouseleave" : function() {
         $(this).css({
            "background-color" : "whitesmoke",
         })
      },
      "click" : function() {
         pageSelect = $(this).html();
        //console.log(pageSelect);
         pageEvent();
      }
   });
});

$(".tat-my-page").on("click", function(){
   $('.tat-my-page-list').children().on({
      "mouseenter" : function() {
         $(this).css({
            "background-color" : "#eaf7ff",
            "cursor" : "pointer"
         })
      },
      "mouseleave" : function() {
         $(this).css({
            "background-color" : "white",
         })
      },
      "click" : function() {
         pageSelect = $(this).html();
         pageEvent();
      }
   });
});

function pageEvent() {
   var pageSave = confirm("현재 페이지를 저장 후에 페이지 이동 합니다.");
    if ( pageSave ) {
       alert("저장 완료!");
       $.ajax({
          url : "/TAT/edit/editOop.tat",
          data : { edit : editWrap[0].outerHTML, folderName : folderName, cururl : cururl },
          dataType : "json",
          type : "POST",
          success : function(data) {
             $('#cururl').val(pageSelect);
            $('#e_code').val(folderName);
             $('#saveBtn').click();
             
          }, error : function(data) {
             
          }
       });
       
    } else {
       alert("페이지 이동 취소!");
    }
}

$("#tat-my-page-btn").click(function(){
   $(".tat-my-page-content").css({"display" : "none"});
   $("#tool_menu").css({"display" : "inline" });
   $("#tool_menu-1").css({"display" : "inline"});
});

function commitEvent() {
	   var commit_check = confirm('공유 하시겠습니까?');
	   console.log(folderName);
	   if ( commit_check ) {
	      $.ajax({
	    	 url: "${pageContext.request.contextPath}/edit/shareFile.tat",
	         type : "post",
	         data : {"e_code": folderName},
	    	 success: function(data){
	    		 if(data>0) alert("정상 처리");
	    		 else alert("공유 실패")
	    	 },
	    	 error: function(){
	    		 alert("공유가 되지 않았습니다.");
	    	 }
	      });
	      
	   } else {
	      alert('공유 취소');
	   }
	}
	function cancleEvent() {
		   var commit_check = confirm('공유 취소 하시겠습니까?');
		   console.log(folderName);
		   if ( commit_check ) {
		      $.ajax({
		    	 url: "${pageContext.request.contextPath}/edit/cancleShareFile.tat",
		         type : "post",
		         data : {"e_code": folderName},
		    	 success: function(data){
		    		 if(data>0) alert("정상 처리");
		    		 else alert("취소 실패")
		    	 },
		    	 error: function(){
		    		 alert("취소가 되지 않았습니다.");
		    	 }
		      });
		      
		   } else {
		      alert('취소함');
		   }
		}

</script>
</html>