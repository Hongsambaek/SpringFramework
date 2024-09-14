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
	<h1>비동기 방식을 이용한 요청 처리 연습해보기</h1>
	<hr/>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<div class="card-title">비동기방식의 데이터 전송</div>
					</div>
					<div class="card-body">
						<form action="/exam02/insert.do" method="post" id="exam02Form">
							<input type="text" id="memName" name="memName" class="form-control" placeholder="이름을 입력해주세요."/><br/>
							<input type="text" id="memId" name="memId" class="form-control" placeholder="아이디를 입력해주세요."/><br/>
							<input type="text" id="memPw" name="memPw" class="form-control" placeholder="비밀번호를 입력해주세요."/><br/>
							<input type="file" id="memFile" name="memFile" class="form-control"/><br/>
						</form>
					</div>
					<div class="card-footer"></div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<div class="card-title">비동기방식의 일반 데이터 전송</div>
					</div>
					<div class="card-body">
						<button type="button" class="btn btn-primary" id="btn01">일반 데이터 전송</button>
						<button type="button" class="btn btn-primary" id="btn02">일반 데이터 전송2</button>
						<button type="button" class="btn btn-primary" id="btn03">파일 데이터 전송</button>
					</div>
					<div class="card-footer"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	var btn01 = $("#btn01");
	var btn02 = $("#btn02");
	var btn03 = $("#btn03");
	
	btn01.on("click", function(){
		let name = $("#memName").val();
		let id = $("#memId").val();
		let pw = $("#memPw").val();
		
		// JSON 객체 형태를 만들기 위해서는 key : value의 형태를 만들어주어야 한다.
		let data = {
			memName : name,
			memId : id,
			memPw : pw
		};
		
		$.ajax({
			url : "/exam02/insert/1",
			type : "post",
			contentType : "application/json; charset=utf-8",
			data : JSON.stringify(data),
			success: function(res){
				console.log(res);
			}
		});
	});
	
	btn02.on("click", function(){
		let name = $("#memName").val();
		let id = $("#memId").val();
		let pw = $("#memPw").val();
		
		// JSON 객체 형태를 만들기 위해서는 key : value의 형태를 만들어주어야 한다.
		let data = {
			memName : name,
			memId : id,
			memPw : pw
		};
		
		$.ajax({
			url : "/exam02/insert2/1",
			type : "post",
			contentType : "application/json; charset=utf-8",
			data : JSON.stringify(data),
			success: function(res){
				console.log(res);
			}
		});
	});
	
	btn03.on("click", function(){
		let name = $("#memName").val();
		let id = $("#memId").val();
		let pw = $("#memPw").val();
		let file = $("#memFile")[0].files;
		
		// 파일을 보낼 때에는 정해져있는 규격이 있다!
		// 그게 바로! 아래 나와있는 FormData()이올시다!
		let formData = new FormData();
		formData.append("memName", name);
		formData.append("memId", id);
		formData.append("memPw", pw);
		formData.append("memFile", file[0]);
		
		$.ajax({
			url : "/exam02/insert3/1",
			type : "post",
			processData : false,
			contentType : false,
			data : formData,
			success: function(res){
				console.log(res);
			}
		});
	});
	
	// var, let, const
});
</script>
</html>

















