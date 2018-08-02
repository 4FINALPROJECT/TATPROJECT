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
				<span class="mypage-viewList" style="float: left; padding-left:5px; color: coral;">HOME</span>
				<span style="float: right;">▽</span>
			</div>
			<div class="tat-my-page-content">
				
			</div>
		</div>
		
		<div class="tat-head-content-center">
			<div class="siteWrap">
				사이트
				<div class="tat-head-content-box tat-sitebox">
					<div class="cbox-content-wrap siteB">
						<div style="float: left;">왼쪽영역</div>
						<div style="float: right;">오른쪽영역</div>
					</div>
				</div>
			</div>
			<div class="setWrap">
				설정
				<div class="tat-head-content-box tat-setbox">
					<div class="cbox-content-wrap setB">
						<div style="float: left;">왼쪽영역</div>
						<div style="float: right;">오른쪽영역</div>
					</div>
				</div>
			</div>
			<div class="toolWrap">
				도구
				<div class="tat-head-content-box tat-toolbox">
					<div class="cbox-content-wrap toolB">
						<div style="float: left;">왼쪽영역</div>
						<div style="float: right;">오른쪽영역</div>
					</div>
				</div>
			</div>
			<div class="conWrap">
				도움말
				<div class="tat-head-content-box tat-contentbox">
					<div class="cbox-content-wrap conB">
						<div class="conB-left">
							<div id="editHelp">에디터 도움말 센터</div>
							<div id="keyEven">키보드 단축키</div>
							<div id="domainLink">도메인 연결하기</div>
							<div id="seo">SEO</div>
							<div>이용약관</div>
							<div>개인정보 취급방침</div>
						</div>
						<div class="conB-right">오른쪽영역</div>
					</div>
				</div>
			</div>
			<div class="upWrap">
				업그레이드
				<div class="tat-head-content-box tat-upgradebox">
					<div class="cbox-content-wrap upB">
						<div style="float: left;">왼쪽영역</div>
						<div style="float: right;">오른쪽영역</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="tat-head-content-right">
			<div id="commit-btn" style="background: royalblue; color: white;">게시하기</div>
			<div id="save-btn">저장</div>
			<div>미리보기</div>
			<div>모바일</div>
			<div>redo</div>
			<div>undo</div>
			<div>더보기</div>
		</div>
	</div>
</div>

     <div class="tat-body">
<!-- 왼쪽 툴바 -->
	<c:import url="editPage_LeftTool.jsp"/>
<!-- 오른쪽 툴바 -->
	<c:import url="editPage_RightTool.jsp"/>
	
	
<%-- <!-- 회원 편집 공간 -->

	<c:if test="${ editPage == null }">
		에러발생
	</c:if>
	
	<c:set value="${ editPage }" var="abc"/>
	<c:if test="${ editPage != null }">
		
		<c:import url="/${ editPage }"/>
		
	</c:if> --%>
	
	<c:import url="../member/M001/E1/page1.jsp"/>
	
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



$('#save-btn').on('click', function(){
	//console.log(editWrap.html());
	saveEvent();
});

$('#commit-btn').click(function(){
	commitEvent();
});


$(function() {
	$('.tat-head-content-right > div:nth-child(7)').click(function(){
		console.log( $(document).find($("div[data-obj-no=data-"+ id_count+"]"))[0] );
		console.log( $(document).find($("div[data-obj-no=data-"+ id_count+"]")).html() );
	});
	
	//undo 뒤로가기
	$('.tat-head-content-right > div:nth-child(6)').click(function(){
		if ( tmp == null ) {
			alert("기록이 없습니다.");
		} else {
			if ( tmp[0].dataset.stack == "add" ) {
				
				if ( stackCount == -1 ) {
					alert("기록이 없습니다.");
				} else {
					undoEvent();
				}
				
			} else if ( tmp[0].dataset.stack == "move" ) {
				
				if ( stackCount == -1 ) {
					alert("기록이 없습니다.");
				} else {
					moveUndo();
				}
				
			} else {
			
				if ( redoCount == -1 ) {
					alert("기록이 없습니다.");
				} else {
					redoEvent();
				}
				console.log("stackCount"+ stackCount);
				console.log("redoCount"+ redoCount);
			}
		}

		
		
	});
	
	
	// redo 앞으로가기
	$('.tat-head-content-right > div:nth-child(5)').click(function(){
		if ( tmp == null ) {
			alert("기록이 없습니다.");
		} else {
			if ( stackCount > -2 && stackCount < 5 ) {
	
				if ( tmp[0].dataset.stack == "add" ) {
					
					if ( redoCount == -1 ) {
						alert("기록이 없습니다.");
					} else {
						redoEvent();
					}
					
				} else if ( tmp[0].dataset.stack == "move" ) {
					
					if ( stackCount == -1 ) {
						alert("기록이 없습니다.");
					} else {
						moveRedo();
					}
					
				} else {
					
					if ( redoCount == -1 ) {
						undoEvent();
					} else {
						alert("기록이 없습니다.");
					}
	
				}
			}
		}
	});
});


function moveUndo() {
	if ( stackCount > -1 && stackCount < 5 ) {
		stackCount--;
		redoCount++;
		tmp = stack.pop();
		stackRedo.push(tmp);
		editWrap.find(tmp).remove();
		
	}
}

function moveRedo() {
	if ( stackCount > -2 || stackRedo.length > 0 ) {
		
	}
}


</script>
</html>