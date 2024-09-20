<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<div class="login-box">
	<div class="card">
		<div class="card-body login-card-body">
			<h2 class="login-box-msg">
				<b>DDIT</b> BOARD
			</h2>

			<form action="/login" method="post" id="signForm">
				<div class="input-group mb-3">
					<input type="text" class="form-control" name="username" id="memId" value="${member.memId }" placeholder="아이디를 입력해주세요">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
					<span class="error invalid-feedback" style="display:block;">${errors.memId }</span>
				</div>
				<div class="input-group mb-3">
					<input type="password" class="form-control" name="password" id="memPw" value=""
						placeholder="비밀번호를 입력해주세요">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
					<span class="error invalid-feedback" style="display:block;">${errors.memPw }</span>
				</div>
				<div class="row">
					<div class="col-8">
						<div class="icheck-primary">
							<input type="checkbox" id="remember" name="remember-me"> 
							<label for="remember"> Remember Me </label>
						</div>
					</div>
					<div class="col-4">
						<button type="button" class="btn btn-dark btn-block" id="signinBtn">로그인</button>
					</div>
				</div>
				<sec:csrfInput/>
			</form>


			<p class="mb-1">
				<a href="/notice/forget.do">아이디&비밀번호 찾기</a>
			</p>
			<p class="mb-0">
				<a href="/notice/signup.do" class="text-center">회원가입</a>
			</p>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	var signinBtn = $("#signinBtn");	// 로그인 버튼
	var signForm = $("#signForm");		// 로그인 Form
	
	signinBtn.on("click", function(){
		let memId = $("#memId").val();	// 아이디 값
		let memPw = $("#memPw").val();	// 비밀번호 값
		
		if(memId == null || memId == "") {
			alert("ID를 입력해주세요.");
			return false
		}
		
		if(memPw == null || memPw == "") {
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		signForm.submit();
	});
});
</script>