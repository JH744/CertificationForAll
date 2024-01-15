<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Detail Inquiry Page</title>
<style>
/* 제목 스타일... */
.inquiry-head {
    width: 1000px;
    margin: 20px auto;
    padding: 15px;
    box-sizing: border-box;
    background: #f9f9f9;
    font-size: 20px;
    border: 1px solid #ccc;
    text-align: left;
}

.inquiry-head span {
    display: inline-block; /* or 'inline' depending on desired spacing */
    margin-right: 100px; /* Add spacing between items */
}
/* 질문과 답변 입력란 스타일 */


.input-container {
    margin: 20px auto;
    width: 80%;
}
.input-title,
.input-content {
    width: 1000px;
    height: 300px;
    margin-bottom: 10px;
    padding: 15px;
    border: 1px solid #ccc;
    box-sizing: border-box; /* 패딩을 너비에 포함 */
    background: #f9f9f9;
    font-size: 25px;
    margin-left: auto; /* Added to center the content box */
    margin-right: auto; /* Added to center the content box */
}

/* 버튼 스타일 */
.button-container {
    text-align: center;
    margin-top: 20px;
}
.button {
	width: 130px;
    margin: 20px;
    padding: 10px;
    text-align: center;
    background: orange;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 25px;
}
.button:hover {
    background-color: darkorange;
}

/* 추가 스타일... */
</style>
</head>
<body>
<!-- 헤더와 푸터 포함되어 있다고 가정 -->

<div class="inquiry-head">
    <span><strong>제목:</strong> 스터디 모집은 어떻게 하나요?</span>
    <span><strong>작성자:</strong> 홍길동</span>
    <span><strong>작성일:</strong> 2023.12.25</span>
</div>


<!-- 질문 상세 내용 -->
<div class="input-container">
    <div class="input-title">스터디 모집은 어떻게 하나요?</div>
    <div class="input-content">스터디 모집은 스터디 글쓰기를 통해 해야 합니다,</div>
</div>

<!-- 버튼 그룹 -->
<div class="button-container">

    <button class="button" onclick="editInquiry();">문의 수정</button>
    <button class="button" onclick="deleteInquiry();">문의 삭제</button>
</div>

<script>
// 여기에 JavaScript 함수를 추가하여 버튼 클릭 이벤트를 처리합니다.

}
function editInquiry() {
    // 문의 수정 로직
}
function deleteInquiry() {
    // 문의 삭제 로직
}
</script>

</body>
</html>
