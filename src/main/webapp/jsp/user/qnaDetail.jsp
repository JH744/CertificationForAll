<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Question Detail Page</title>
<style>
/* Basic reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.container {
    width: 80%;
    margin: 20px auto;
}
.title {
    font-size: 25px;
    border-bottom: 2px solid #ddd;
    padding-bottom: 10px;
    margin-bottom: 20px;
    text-align: center;
}
.content {
    margin-bottom: 50px; /* Increased bottom margin */
    width: 1000px; /* Increased width */
    height: 300px;
    padding: 15px;
    border: 1px solid #ddd;
    background: #f9f9f9;
    margin-left: auto; /* Added to center the content box */
    margin-right: auto; /* Added to center the content box */
}
.content p {
    padding: 15px;

    background: #f9f9f9;
    font-size: 25px;
}
.button {
    display: block;
    width: 130px;
    margin: 20px auto;
    padding: 10px;
    text-align: center;
    background: orange;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 25px;
}
/* Additional styles can be added here */
</style>
</head>
<body>
<!-- Assuming header and footer are included via separate JSP includes -->

<div class="container">
    <div class="title">자주 묻는 질문 1</div>
    <div class="content">
        <p>질문의 내용이 여기에 표시됩니다.</p>
    </div>
    <div class="content">
        <p>질문의 답변이 표시됩니다.</p>
    </div>
    <button class="button">목록으로</button>
</div>

</body>
</html>