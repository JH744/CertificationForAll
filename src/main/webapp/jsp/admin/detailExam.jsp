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
	<div style="width: 80%; height: auto; margin: auto;padding:20px;">
		<h1 class="mt-4">${e.jmfldnm }</h1>
		<div>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ڰݱ���</li>
			  <li class="list-group-item">${e.qualgbcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ڰݱ��и�</li>
			  <li class="list-group-item">${e.qualgbnm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�迭�ڵ�</li>
			  <li class="list-group-item">${e.seriescd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�迭��</li>
			  <li class="list-group-item">${e.seriesnm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�����ڵ�</li>
			  <li class="list-group-item">${e.jmcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�������о��ڵ�</li>
			  <li class="list-group-item">${e.obligfldcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�������о߸�</li>
			  <li class="list-group-item">${e.obligfldnm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�������о��ڵ�</li>
			  <li class="list-group-item">${e.mdobligfldcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�������о߸�</li>
			  <li class="list-group-item">${e.mdobligfldnmm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�󼼼���</li>
			  <li class="list-group-item">${e.detail }</li>
			</ul>
		</div>
		
		<c:forEach var="ep" items="${list }" >
			<h1 class="mt-4">${ep.implSeq }ȸ��</h1>
			<div>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">����⵵</li>
			  <li class="list-group-item">${ep.implYy }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">����</li>
			  <li class="list-group-item">${ep.description }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ʱ���� �������� ��������</li>
			  <li class="list-group-item">${ep.docRegStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ʱ���� �������� ��������</li>
			  <li class="list-group-item">${ep.docRegEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ʱ���� ��������</li>
			  <li class="list-group-item">${ep.docExamStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ʱ���� ��������</li>
			  <li class="list-group-item">${ep.docExamEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�ʱ���� �հ��� ��ǥ����</li>
			  <li class="list-group-item">${ep.docPassDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�Ǳ�,���� ���� �������� ��������</li>
			  <li class="list-group-item">${ep.pracRegStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�Ǳ�,���� ���� �������� ��������</li>
			  <li class="list-group-item">${ep.pracRegEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�Ǳ�,���� ���� ��������</li>
			  <li class="list-group-item">${ep.pracExamStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�Ǳ�,���� ���� ��������</li>
			  <li class="list-group-item">${ep.pracExamEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">�Ǳ�,���� �հ��� ��ǥ����</li>
			  <li class="list-group-item">${ep.pracPassDt }</li>
			</ul>
		</div>
		<button style="float:right;" onclick="location.href='emamUpdate.do'">
			����
		</button>
		</c:forEach>
		<button value="�������" style="float:left;" onclick="location.href='exam.do'">
			�������
		</button>
	</div>
	</div>
</body>
</html>