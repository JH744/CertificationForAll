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
				<h5 class="card-title">${q.q_title }</h5>
				<h6 class="card-subtitle mb-2 text-body-secondary">관리자</h6>
				<hr>
				<p style="height: 100%;" class="card-text">${q.q_answer }</p>
			</div>
		</div>
		<button value="수정" style="float:right;" onclick="location.href='qnaUpdate.do?q_id=${q.q_id}'"/>
		<button value="삭제" style="float:right;" onclick="location.href='qnaDelete.do?q_id=${q.q_id}'"/>
	</div>
</body>
</html>