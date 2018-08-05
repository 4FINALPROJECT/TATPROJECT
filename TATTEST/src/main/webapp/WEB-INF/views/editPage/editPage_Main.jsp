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
					<div>page1</div>
					<div>page2</div>
					<div>page3</div>
					<div>page4</div>
				</div>
				<div class="tat-my-page-btn">
					<div>페이지 관리</div>
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
                            <div id="edit_miribogi"> 미 리 보 기 </div>
                            <div id="edit_allview"> 공 유 하 기 </div>
                            <div id="edit_end"> 에 디 터 종 료 </div>
                        </div>
                        <div class="edit-top-right">
                            <div toolimg="edit_submit"> 저 장 사 진 </div>
                            <div toolimg="edit_miribogi"> 미 리 보 기 사 진 </div>
                            <div toolimg="edit_allview"> 공 유 하 기 사 진 </div>
                            <div toolimg="edit_end"> 에 디 터 종 료 사 진 </div>
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
                        	<div toolimg="rtoolChk">상세 툴바</div>
                        	<div toolimg="ltoolChk">컨텐츠툴바</div>
                        	<div toolimg="bodyScale">눈 금 자</div>
                        	<div toolimg="grideLine">그리드라인</div>
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
						<div style="float: left;"> 결 제 하 쉴 ? </div>
                        <div style="float: right;"> 돈 </div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="tat-head-content-right">
			<div id="commit-btn" style="background: royalblue; color: white;">공유하기</div>
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
		saveEvent();
		location.href = "/TAT/edit/Main.tat?cururl="+pageSelect+"&e_code=${fN}";
	}
});


/* $(function() {
	$('.tat-head-content-right > div:nth-child(7)').click(function(){
		console.log( $(document).find($("div[data-obj-no=data-"+ id_count+"]"))[0] );
		console.log( $(document).find($("div[data-obj-no=data-"+ id_count+"]")).html() );
	});
}); */

</script>
</html>