<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>문의 상세</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
</head>
<body>
	<div style="width: 80%; height: auto; margin: auto;padding:20px;">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">제목</h5>
				<h6 class="card-subtitle mb-2 text-body-secondary">작성일</h6>
				<hr>
				<p style="height: 100%;" class="card-text">내용</p>
			</div>
		</div>
		<hr>
		<p>답변</p>
		<form method="post">
		<div class="form-floating">
		  	<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
		  	<label for="floatingTextarea">Comments</label>
		</div>
		<input type="submit" value="답변하기" style="float:right;">
		</form>
	</div>
</body>
</html>