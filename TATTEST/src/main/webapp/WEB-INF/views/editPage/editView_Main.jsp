<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 보기</title>
	<c:import url="common/EDIT_CSS.jsp"/>
	<style>
		.edit-view-head-wrap {
			border : none;
		}
		.edit-view-body-wrap {
			border : none;
		}
		.edit-view-foot-wrap {
			border : none;
		}
		.edit-view-head {
			border : none;
		}
		.edit-view-body {
			border : none;
		}
		.edit-view-foot {
			border : none;
		}
	</style>
</head>
<body>

	<c:if test="${ editPageBody == null }">
		에러발생
	</c:if>
	<c:if test="${ editPageBody != null }">
		<c:import url="/${ editPageBody }"/>
	</c:if>

</body>
<c:import url="common/EDIT_JS.jsp"/>
<script>
var cururl = '${ cururl }';
var folderName = '${ fN }';
</script>
</html>