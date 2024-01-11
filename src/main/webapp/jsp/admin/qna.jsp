<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
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
						<td><input type="checkbox"></td>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>