<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<h5 class="card-title">${vo.i_title }</h5>
				<h6 class="card-subtitle mb-2 text-body-secondary">${vo.i_inquiryDate }</h6>
				<hr>
				<p style="height: 100%;" class="card-text">${vo.i_content }</p>
			</div>
		</div>
		<hr>
		<p>답변</p>
		<c:if test="${vo.i_answer != null }">
			<div class="card" style="width: 18rem;">
			  <div class="card-body">
			    <h5 class="card-title">관리자</h5>
			    <h6 class="card-subtitle mb-2 text-body-secondary">${vo.i_answerDate }</h6>
			    <p class="card-text">${vo.i_answer }</p>
			  </div>
			</div>
		</c:if>
		<c:if test="${vo.i_answer == null }">
		<form method="post" action="inquiryAnswer.do">
			<div class="form-floating">
			  	<textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="floatingTextarea"></textarea>
			  	<label for="floatingTextarea">Comments</label>
			</div>
			<input type="submit" value="답변하기" style="float:right;">
		</form>
		</c:if>
	</div>
</body>
</html>