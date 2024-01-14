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
			  <li class="list-group-item">자격구분</li>
			  <li class="list-group-item">${e.qualgbcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">자격구분명</li>
			  <li class="list-group-item">${e.qualgbnm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">계열코드</li>
			  <li class="list-group-item">${e.seriescd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">계열명</li>
			  <li class="list-group-item">${e.seriesnm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">종목코드</li>
			  <li class="list-group-item">${e.jmcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">대직무분야코드</li>
			  <li class="list-group-item">${e.obligfldcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">대직무분야명</li>
			  <li class="list-group-item">${e.obligfldnm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">중직무분야코드</li>
			  <li class="list-group-item">${e.mdobligfldcd }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">중직무분야명</li>
			  <li class="list-group-item">${e.mdobligfldnmm }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">상세설명</li>
			  <li class="list-group-item">${e.detail }</li>
			</ul>
		</div>
		
		<c:forEach var="ep" items="${list }" >
			<h1 class="mt-4">${ep.implSeq }회차</h1>
			<div>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">시행년도</li>
			  <li class="list-group-item">${ep.implYy }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">설명</li>
			  <li class="list-group-item">${ep.description }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">필기시험 원서접수 시작일자</li>
			  <li class="list-group-item">${ep.docRegStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">필기시험 원서접수 종료일자</li>
			  <li class="list-group-item">${ep.docRegEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">필기시험 시작일자</li>
			  <li class="list-group-item">${ep.docExamStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">필기시험 종료일자</li>
			  <li class="list-group-item">${ep.docExamEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">필기시험 합격자 발표일자</li>
			  <li class="list-group-item">${ep.docPassDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">실기,면접 시험 원서접수 시작일자</li>
			  <li class="list-group-item">${ep.pracRegStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">실기,면접 시험 원서접수 종료일자</li>
			  <li class="list-group-item">${ep.pracRegEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">실기,면접 시험 시작일자</li>
			  <li class="list-group-item">${ep.pracExamStartDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">실기,면접 시험 종료일자</li>
			  <li class="list-group-item">${ep.pracExamEndDt }</li>
			</ul>
			<ul class="list-group list-group-horizontal">
			  <li class="list-group-item">실기,면접 합격자 발표일자</li>
			  <li class="list-group-item">${ep.pracPassDt }</li>
			</ul>
		</div>
		<button style="float:right;" onclick="location.href='emamUpdate.do'">
			수정
		</button>
		</c:forEach>
		<button value="목록으로" style="float:left;" onclick="location.href='exam.do'">
			목록으로
		</button>
	</div>
	</div>
</body>
</html>