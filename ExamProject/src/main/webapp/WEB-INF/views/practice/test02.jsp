<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css' integrity='sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN' crossorigin='anonymous'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js'></script>
</head>
<body>
	<!--
		비동기 문제)
		아이디, 비밀번호, 이름, 이메일, 전화번호, 여러개의 파일을 입력 후
		비동기 통신을 이용하여 서버로 전송해주세요.
		
		1) 전송 후, 컨트롤러에서 넘겨받은 모든 데이터를 출력해주세요.
		이때, 파일은 파일명, 사이즈, 컨텐츠타입을 출력해주세요.
		
		2) 출력 후, 응답으로 'SUCCESS UPLOAD'를 응답으로 출력해주세요.
	 -->
	<form action="/practice/insert2.do" method="post">
		아이디 : <input type="text" name="" id="id"/><br/>
		비밀번호 : <input type="text" name="" id="pw"/><br/>
		이름 : <input type="text" name="" id="name"/><br/>
		이메일 : <input type="text" name="" id="email"/><br/>
		전화번호 : <input type="text" name="" id="phone"/><br/>
		파일 : <input type="file" multiple="multiple" id="file"/><br/>
	</form>
	<hr/>
	
	<button type="button" id="btn">전송하기</button>
</body>
<script type="text/javascript">
$(function(){
	
	$("#btn").on("click", function(){
		let id = $("#id").val();
		let pw = $("#pw").val();
		let name = $("#name").val();
		let email = $("#email").val();
		let phone = $("#phone").val();
		let file = $("#file")[0].files;
		
		console.log($("#file"));
		console.log($("#file")[0]);
		
		// 파일을 보낼 때에는 정해져있는 규격이 있다!
		// 그게 바로! 아래 나와있는 FormData()이올시다!
// 		let formData = new FormData();
// 		formData.append("memId", id);
// 		formData.append("memPw", pw);
// 		formData.append("memName", name);
// 		formData.append("memEmail", email);
// 		formData.append("memPhone", phone);
// 		for(let i = 0; i < file.length; i++){
// 			formData.append("memFiles["+i+"]", file[i]);
// 			formData.append("memFiles", file[i]);
// 		}
		
// 		$.ajax({
// 			url : "/practice/insert2.do",
// 			type : "post",
// 			processData : false,
// 			contentType : false,
// 			data : formData,
// 			success: function(res){
// 				console.log(res);
// 			}
// 		});
	});
	
});
</script>
</html>


