<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<div class="container-fluid px-4">
		<h1 class="mt-4">자주 묻는 질문</h1>
		<ol class="breadcrumb mb-4">
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> 자주 묻는 질문 목록
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>질문 번호</th>
							<th>질문 제목</th>
							<th>질문 답변</th>
							<th>del<th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>질문 번호</th>
							<th>질문 제목</th>
							<th>질문 답변</th>
							<th>del<th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="q" items="${list }">
						<tr>
							<td><a href="qnaDetail.do?q_id=${q.q_id }">${q.q_id }</a></td>
							<td>${q.q_title }</td>
							<td>${q.q_answer }</td>
							<td><input type="checkbox"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>