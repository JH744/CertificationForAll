<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>qna Page</title>
<style>
        #qnaList {
    width: 80%;
    margin: 20px auto;
}
#qna{
width:1200px;
margin : 30px auto;
}
#qnaList h1 {
    margin-bottom: 20px;
    border-bottom: 2px solid #000; /* black solid line */
    display: line-block; /* to ensure the border is only as long as the text */
    padding-bottom: 10px; /* to provide some spacing between the text and the line */
    font-size: 30px;
    text-align: center;
}
#qnaList table {
    width: 100%;
    border-collapse: collapse;
}
#qnaList th, #qnaList td {
    border: 1px solid #ddd;
    padding: 20px;
    text-align: left;
    font-size: 22px;
}
#qnaList th {
    background-color: #f2f2f2;
    font-size: 22px;
}
/* Basic reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Adding custom styles for the qna list to mimic the uploaded image */

</style>
</head>
<body>
<!-- Assuming header and footer are included via separate JSP includes -->


<div id="qnaList">
	<h1>고객센터</h1>
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>

            </tr>
        </thead>
        <tbody>
            <%-- Sample data loop (in real scenario, data would come from a database) --%>
            <% for(int i = 1; i <= 10; i++) { %>
            <tr>
                <td><%= i %></td>
                <td><a href="detail.jsp?id=<%= i %>">자주 묻는 질문 <%= i %> </a></td>
                
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

</body>
</html>