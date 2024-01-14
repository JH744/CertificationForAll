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
		<h1 class="mt-4">ȸ������</h1>
		<ol class="breadcrumb mb-4">
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> ȸ�� ���
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>���̵�</th>
							<th>�̸�</th>
							<th>�������</th>
							<th>��ȭ��ȣ</th>
							<th>�ּ�</th>
							<th>del<th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>���̵�</th>
							<th>�̸�</th>
							<th>�������</th>
							<th>��ȭ��ȣ</th>
							<th>�ּ�</th>
							<th>del<th>
						</tr>
					</tfoot>
					<tbody>
					<c:forEach var="u" items="${list }">
						<tr>
							<td><a href="userDetail.do?u_id=${u.u_id }">${u.u_id }</a></td>
							<td>${u.u_name }</td>
							<td>${u.u_birth }</td>
							<td>${u.u_addr }</td>
							<td>${u.u_interest }</td>
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