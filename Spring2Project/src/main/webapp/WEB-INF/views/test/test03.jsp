<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<div class="card-header">
							<div class="card-title">상품 등록</div>
						</div>
						<div class="card-body">
							<form method="post">
								<table class="table table-bordered">
									<tr>
										<td colspan="2">
											<img src="" id="" alt="" style="width:100%;"/>
										</td>
									</tr>
									<tr>
										<td>상품이미지</td>
										<td>
											<input type="file" class="form-control" name="prodImageFile"/>
										</td>
									</tr>
									<tr>
										<th>상품ID</th>
										<td>
											<input type="text" class="form-control" name="prodId"/>
										</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td>
											<input type="text" class="form-control" name="prodName"/>
										</td>
									</tr>
									<tr>
										<th>상품금액</th>
										<td>
											<input type="text" class="form-control" name="prodPrice"/>
										</td>
									</tr>
									<tr>
										<th>상품색상</th>
										<td>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="prodColor" id="white" value="white" checked> 
												<label class="form-check-label" for="new">
													<span class="badge badge-light">White</span>
												</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="prodColor" id="red" value="red"> 
												<label class="form-check-label" for="red">
													<span class="badge badge-danger">Red</span>
												</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="prodColor" id="blue" value="blue"> 
												<label class="form-check-label" for="blue">
													<span class="badge badge-primary">Blue</span>
												</label>
											</div>
										</td>
									</tr>
									<tr>
										<th>상품설명</th>
										<td>
											<textarea rows="10" cols="20" name="prodDescription" class="form-control"></textarea>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<div class="card-footer text-right">
							<button type="button" class="btn btn-primary" id="addBtn">등록</button>
							<button type="reset" class="btn btn-danger" id="resetBtn">취소</button>
						</div>
					</div>		
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<h5>상품 목록</h5>
									</div>
								</div>
								<div class="card-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<td>번호</td>
												<td>상품ID</td>
												<td>상품명</td>
												<td>상품금액</td>
												<td>상품색상</td>
												<td>등록일</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="6" class="text-center">조회하신 상품이 존재하지 않습니다.</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-12 pt-4">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<h5>상품 상세</h5>
									</div>
								</div>
								<div class="card-body">
									<table class="table table-bordered text-center">
										<tr>
											<td width="50%" rowspan="6">
												<img src="" alt="" id=""/>
											</td>
											<td width="20%">상품 ID</td>
											<td></td>
										</tr>
										<tr>
											<td>상품명</td>
											<td></td>
										</tr>
										<tr>
											<td>상품금액</td>
											<td ></td>
										</tr>
										<tr>
											<td>상품색상</td>
											<td></td>
										</tr>
										<tr>
											<td>상품 등록일</td>
											<td></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</html>












