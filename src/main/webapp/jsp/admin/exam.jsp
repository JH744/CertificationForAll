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
							<th>����ID</th>
							<th>�迭�ڵ�</th>
							<th>�迭��</th>
							<th>�ڰݱ���</th>
							<th>�ڰݱ��и�</th>
							<th>�����</th>
							<th>del</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>����ID</th>
							<th>�迭�ڵ�</th>
							<th>�迭��</th>
							<th>�ڰݱ���</th>
							<th>�ڰݱ��и�</th>
							<th>�����</th>
							<th>del</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="e" items="${list }">
						<tr>
							<td><a>${e.e_id }</a></td>
							<td>${e.seriescd }</td>
							<td>${e.seriesnm }</td>
							<td>${e.qualgbcd }</td>
							<td>${e.qualgbnm }</td>
							<td>${e.jmfldnm }</td>
							<td><input type="checkbox"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div>
		<input type="submit" value="����" style="float:right;">
		</div>
	</div>
	
</body>
</html>