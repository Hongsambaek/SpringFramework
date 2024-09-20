<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tiles를 이용한 CRUD</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/css/adminlte.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>
<c:if test="${not empty message }">
   <script type="text/javascript">
      alert("${message}");
   </script>
   <c:remove var="message" scope="request"/>
</c:if>
</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- header 영역 -->
		<tiles:insertAttribute name="header"/>

		<div class="content-wrapper">
			<!-- content 영역 -->
			<tiles:insertAttribute name="content"/>
		</div>
		<!-- footer 영역 -->
		<tiles:insertAttribute name="footer"/>

		<aside class="control-sidebar control-sidebar-dark">
		</aside>
	</div>

	<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dist/js/adminlte.min.js"></script>
	<script type="text/javascript">
	$(function(){
		bsCustomFileInput.init();	// 부트스트랩 템플릿 버전안에 inputFile의 openFile 컨트롤 이벤트 설정
	});
	</script>
</body>
</html>
