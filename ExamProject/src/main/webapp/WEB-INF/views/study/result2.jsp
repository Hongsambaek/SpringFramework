<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
img{
	width:30%;
}
</style>
<body>
	아이디 : ${result.id }<br/>
	비밀번호 : ${result.pw }<br/>
	이름 : ${result.name }<br/>
	
	<c:forEach items="${result.urls }" var="url">
		<img src="${url }" /><br/>
	</c:forEach>
</body>
</html>