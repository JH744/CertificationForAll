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
		<h1 class="mt-4">���͵�</h1>
		<form method="post" action="studyAllDelete.do">
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> ���͵� �� ���
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>���͵�� ��ȣ</th>
							<th>���͵� ����</th>
							<th>�ۼ���</th>
							<th>������Ȳ</th>
							<th>�ۼ���</th>
							<th>�ڰ����̸�</th>
							<th>del<th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>���͵�� ��ȣ</th>
							<th>���͵� ����</th>
							<th>�ۼ���</th>
							<th>������Ȳ</th>
							<th>�ۼ���</th>
							<th>�ڰ����̸�</th>
							<th>del<th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="s" items="${list }">
						<tr>
							<td><a>${s.s_id }</a></td>
							<td>${s.s_title }</td>
							<td>${s.s_date }</td>
							<td>${s.s_state }</td>
							<td>${s.s_id }</td>
							<td>${s.e_id }</td>
							<td><input type="checkbox" value="${s.s_id }" id="del_id"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<input type="submit" value="����" style="float: right;">		
		</div>
		</form>
	</div>
</body>
</html>