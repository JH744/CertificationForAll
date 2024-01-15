<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Inquiry Page</title>
<style>
        #inquiryList {
    width: 80%;
    margin: 20px auto;
}
#inqury{
width:1200px;
margin : 30px auto;
}
#inquiryList h1 {
    margin-bottom: 20px;
    border-bottom: 2px solid #000; /* black solid line */
    display: line-block; /* to ensure the border is only as long as the text */
    padding-bottom: 10px; /* to provide some spacing between the text and the line */
    font-size: 30px;
    text-align: center;
}
#inquiryList table {
    width: 100%;
    border-collapse: collapse;
}
#inquiryList th, #inquiryList td {
    border: 1px solid #ddd;
    padding: 20px;
    text-align: left;
    font-size: 22px;
}
#inquiryList th {
    background-color: #f2f2f2;
    font-size: 22px;
}
/* Basic reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* 페이지네이션 스타일 */
.pagination {
    display: flex;
    justify-content: center; /* 페이지 번호들을 중앙에 배치 */
    padding-left: 0;
    margin: 20px 0;
    list-style: none; /* 기본 목록 스타일 제거 */
}
.pagination a {
    color: orange;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd; /* Light grey border */
    margin: 0 4px; /* Space between page numbers */
}
.pagination a.active {
    background-color: orange;
    color: white;
    border: 1px solid orange;
}
.pagination a:hover:not(.active) {background-color: #ddd;}

/* 검색창 스타일 */
.search-container {
    display: flex;
    justify-content: center; /* This will center the search bar */
    margin-top: 20px;
}
.search-container input[type=text] {
    padding: 10px;
    margin-right: 10px;
    border: thin;
    border-bottom: 1px solid #ccc; /* underline style */
    width: 30%; /* Search bar width */
}
.search-container button {
    padding: 10px;
    background: orange;
    color: white;
    border: none;
    cursor: pointer;
}
.search-container button:hover {
    background: darkorange;
}

.button-container {
    text-align: center;
    margin-top: 20px;
}
.button {
	width: 120px;
    margin: 20px;
    padding: 10px;
    text-align: center;
    background: orange;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}
.button:hover {
    background-color: darkorange;
}


</style>

</style>
</head>
<body>
<!-- Assuming header and footer are included via separate JSP includes -->


<div id="inquiryList">
    <h1>고객센터</h1>
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td><a href="detailPage.jsp?title=1">궁금한게 있어요</td>
                <td>최용수</td>
                <td>2023.12.29</td>
            </tr>
            <tr>
                <td>2</td>
                <td><a href="detailPage.jsp?title=2">글이 안써져요</td>
                <td>김웅평</td>
                <td>2023.12.27</td>
            </tr>
            <tr>
                <td>3</td>
                <td><a href="detailPage.jsp?title=3">이상해요</td>
                <td>김용수</td>
                <td>2023.12.27</td>
            </tr>
            <tr>
                <td>4</td>
                <td><a href="detailPage.jsp?title=4">회원가입 문제</td>
                <td>김유성</td>
                <td>2023.12.26</td>
            </tr>
            <tr>
                <td>5</td>
                <td><a href="detailPage.jsp?title=5">글이 안보여요</td>
                <td>김범진</td>
                <td>2023.12.26</td>
            </tr>
            <tr>
                <td>6</td>
                <td><a href="detailPage.jsp?title=6">일정이 안맞아요</td>
                <td>김지훈</td>
                <td>2023.12.25</td>
            </tr>
            <tr>
                <td>7</td>
                <td><a href="detailPage.jsp?title=7">로그인 문제</td>
                <td>정윤나</td>
                <td>2023.12.25</td>
            </tr>
            <tr>
                <td>8</td>
                <td><a href="detailPage.jsp?title=8">글이 안써져요</td>
                <td>이용수</td>
                <td>2023.12.24</td>
            </tr>
            <tr>
                <td>9</td>
                <td><a href="detailPage.jsp?title=9">이상해요</td>
                <td>최수용</td>
                <td>2023.12.24</td>
            </tr>
            <tr>
                <td>10</td>
                <td><a href="detailPage.jsp?title=10">어려워요</td>
                <td>나문희</td>
                <td>2023.12.24</td>
            </tr>                  
                     

        </tbody>
    </table>
</div>
<!-- 페이지네이션 -->
<div class="pagination">
    <a href="#">&laquo;</a>
    <a class="active" href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a href="#">7</a>
    <a href="#">8</a>
    <a href="#">9</a>
    <a href="#">10</a>
    <a href="#">&raquo;</a>
</div>

<!-- 검색창 -->
<div class="search-container">
    <input type="text" placeholder="검색..." name="search">
    <button type="submit">검색</button>
</div>

<div class="button-container">
    <button class="button" onclick="submitInquiry();">문의 등록</button>
</div>


</body>
</html>