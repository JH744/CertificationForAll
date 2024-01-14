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
		<div class="card" style="width: 18rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">${u.u_name }</h5>
		    <p class="card-text">관심목록 ${u.u_interest }</p>
		  </div>
		  <ul class="list-group list-group-flush">
		    <li class="list-group-item">아이디 : ${u.u_id }</li>
		    <li class="list-group-item">생일 : ${u.u_birth }</li>
		    <li class="list-group-item">전화번호 : ${u.u_phone }</li>
		    <li class="list-group-item">주소 : ${u.u_addr }</li>
		  </ul>
		  <div class="card-body">
		    <a href="deleteUser.do?u_id=${u.u_id }" class="card-link">삭제</a>
		  </div>
		</div>
		<button style="float:right;" onclick="location.href='user.do'">
			목록으로
		</button>
	</div>
</body>
</html>