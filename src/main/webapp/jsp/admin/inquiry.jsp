<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<div class="container-fluid px-4">
		<h1 class="mt-4">����</h1>
		<ol class="breadcrumb mb-4">
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> ���� �� ���
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>���� ��ȣ</th>
							<th>���� ����</th>
							<th>���� ����</th>
							<th>���� ����</th>
							<th>�亯 ����</th>
							<th>���� �ۼ���</th>
							<th>del</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>���� ��ȣ</th>
							<th>���� ����</th>
							<th>���� ����</th>
							<th>���� ����</th>
							<th>�亯 ����</th>
							<th>���� �ۼ���</th>
							<th>del</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="i" items="${list }">
						<tr>
							<td><a href="inquiryDetail.do?i_id=${i.i_id }">${i.i_id }</a></td>
							<td>${i.i_title }</td>
							<td>${i.i_content }</td>
							<td>${i.i_inquiryDate }</td>
							<td>${i.i_state }</td>
							<td>${i.u_id }</td>
							<td><input type="checkbox"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
			<form style="display:nonep;float:right;">
				<input type="submit" value="����">
			</form>
	</div>
</body>
</html>