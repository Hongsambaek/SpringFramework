<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Cover Template ยท Bootstrap v4.6</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/cover/">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/resources/etc/cover.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-auto">
    <div class="inner">
      <h3 class="masthead-brand">RESULT</h3>
    </div>
  </header>

  <main role="main" class="inner cover">
  	<table class="table table-bordered text-white">
  		<tr>
  			<th>아이디</th>
  			<td>${member.userId }</td>
  		</tr>
  		<tr>
  			<th>비밀번호</th>
  			<td>${member.password }</td>
  		</tr>
  		<tr>
  			<th>이름</th>
  			<td>${member.userName }</td>
  		</tr>
  		<tr>
  			<th>E-mail</th>
  			<td>${member.userId }</td>
  		</tr>
  		<tr>
  			<th>생년월일</th>
  			<td><fmt:formatDate value="${member.dateOfBirth}" pattern="yyyy년 MM월 dd일"/></td>
  		</tr>
  		<tr>
  			<th>성별</th>
  			<td>${member.gender}</td>
  		</tr>
  		<tr>
  			<th>개발자여부</th>
  			<td>${member.developer}</td>
  		</tr>
  		<tr>
  			<th>외국인여부</th>
  			<td>
  				<c:if test="${member.foreigner }">외국인</c:if>
  				<c:if test="${not member.foreigner }">내국인</c:if>
  			</td>
  		</tr>
  		<tr>
  			<th>국적</th>
  			<td>${member.nationality }</td>
  		</tr>
  		<tr>
  			<th>소유차량</th>
  			<td>
  				<c:forEach items="${member.carList }" var="car">
  					<c:out value="${car }"/>&nbsp;
  				</c:forEach>
  			</td>
  		</tr>
  		<tr>
  			<th>취미</th>
  			<td>
  				<c:forEach items="${member.hobbyList }" var="hobby">
  					<c:if test="${hobby eq 'sports' }">운동&nbsp;</c:if>
  					<c:if test="${hobby eq 'movie' }">영화감상&nbsp;</c:if>
  					<c:if test="${hobby eq 'music' }">음악감상&nbsp;</c:if>
  					<c:if test="${hobby eq 'book' }">독서&nbsp;</c:if>
  					<c:if test="${hobby eq 'etc' }">기타&nbsp;</c:if>
  				</c:forEach>
  			</td>
  		</tr>
  		<tr>
  			<th>우편번호</th>
  			<td>${member.address.postCode }</td>
  		</tr>
  		<tr>
  			<th>주소</th>
  			<td>${member.address.location }</td>
  		</tr>
  		<tr>
  			<th>카드1-번호</th>
  			<td>${member.cardList[0].no}</td>
  		</tr>
  		<tr>
  			<th>카드1-유효년월</th>
  			<td><fmt:formatDate value="${member.cardList[0].validMonth }" pattern="yyyy년 MM월 dd일"/></td>
  		</tr>
  		<tr>
  			<th>카드2-번호</th>
  			<td>${member.cardList[1].no }</td>
  		</tr>
  		<tr>
  			<th>카드2-유효년월</th>
  			<td><fmt:formatDate value="${member.cardList[1].validMonth }" pattern="yyyy년 MM월 dd일"/></td>
  		</tr>
  		<tr>
  			<th>소개</th>
  			<td>${member.introduction }</td>
  		</tr>
  	</table>
  </main>

  <footer class="mastfoot mt-auto">
    <div class="inner">
    </div>
  </footer>
</div>


    
  </body>
</html>
