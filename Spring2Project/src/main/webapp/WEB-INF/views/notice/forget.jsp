<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<div class="card card-outline card-primary">
			<div class="card-header text-center">
				<p class="h4">
					<b>아이디찾기</b>
				</p>
			</div>
			<div class="card-body">
				<p class="login-box-msg">아이디 찾기는 이메일, 이름을 입력하여 찾을 수 있습니다.</p>
				<form action="/notice/findId.do" method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="memEmail" placeholder="이메일을 입력해주세요.">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="memName" placeholder="이름을 입력해주세요.">
					</div>
					<div class="input-group mb-3">
						<p id ="MyId">
							회원님의 아이디는 [000] 입니다.
						</p>
					</div>
					<div class="row">
						<div class="col-12">
							<button type="button" id="findId" class="btn btn-primary btn-block">아이디찾기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<br />
		<div class="card card-outline card-primary">
			<div class="card-header text-center">
				<p href="" class="h4">
					<b>비밀번호찾기</b>
				</p>
			</div>
			<div class="card-body">
				<p class="login-box-msg">비밀번호 찾기는 아이디, 이메일, 이름을 입력하여 찾을 수 있습니다.</p>
				<form action="/notice/findPw.do" method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="memId" placeholder="아이디를 입력해주세요.">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="memEmail2" placeholder="이메일을 입력해주세요.">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="memName2" placeholder="이름을 입력해주세요.">
					</div>
					<div class="input-group mb-3">
						<p id="MyPw">
							회원님의 비밀번호는 [0000] 입니다.
						</p>
					</div>
					<div class="row">
						<div class="col-12">
							<button type="button" id="findPw" class="btn btn-primary btn-block">비밀번호찾기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<br/>
		<div class="card card-outline card-secondary">
			<div class="card-header text-center">
				<h4>MAIN MENU</h4>
				<button type="button" class="btn btn-secondary btn-block">로그인</button>
			</div>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	var findId = $("#findId");
	var findPw = $("#findPw");
	
	findId.on("click", function(){
		var email = $("#memEmail").val();
		var name = $("#memName").val();	
		var MyId = $("#MyId");
		var IdObject = {
			memEmail : email,
			memName : name
		};
		
		$.ajax ({
			url : "/notice/findId.do",
			type : "post", 
			contentType : "application/json; charset=utf-8",
			data : JSON.stringify(IdObject),
			success : function(res){
				if(res == null || res == " ") {
					MyId.css("color", "red");
					MyId.html("존재하지 않는 아이디입니다.");
				} 
				else {
					MyId.html("회원님의 아이디는 "+ res +"입니다");
				}
			}
		});
	});
	
	findPw.on("click", function(){
		var id = $("#memId").val();
		var email = $("#memEmail2").val();
		var name = $("#memName2").val();	
		var MyPw = $("#MyPw")
		var pwObject = {
			memId : id,
			memEmail : email,
			memName : name
		};
		
		$.ajax({
			url : "/notice/findPw.do",
			type : "post", 
			contentType : "application/json; charset=utf-8",
			data : JSON.stringify(pwObject),
			success : function(res) {
				if(res == null || res == " ") {
					MyPw.css("color", "red");
					MyPw.html("정보가 일치하지 않습니다.");
				}
				else {
					MyPw.html("회원님의 비밀번호는" + "[" + res + "]" + "입니다.");
				}
			}
		});
	});
	
	
});

</script>