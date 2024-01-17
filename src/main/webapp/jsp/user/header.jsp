<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../css/loginstyle.css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&family=Poppins:wght@400;600&display=swap"
   rel="stylesheet">
<!--구글폰트-->
<script src="https://kit.fontawesome.com/e72539902e.js"
   crossorigin="anonymous"></script>
<!--아이콘 사용-->



<!-- StudyList CSS-->
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/css/npm_tinymce.11812fb7b9e7501ca2a8.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/css/MAIN.6826de4979280a75012d.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/css/_post_community.231518bb82c10cf9ee72.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/vendor/bulma-accordion.min.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/vendor/bulma-switch.min.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/vendor/bulma-tooltip.min.css">
<link rel="stylesheet"
   href="https://cdn.inflearn.com/dist/fontawesome/css/all.css">
<!-- StudyList CSS-->

<style>
@font-face {
   font-family: 'NanumBarunGothic' !important;
   font-style: normal !important;
   font-weight: 400 !important;
   src:
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot')
      !important;
   src:
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix')
      format('embedded-opentype'),
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff')
      format('woff'),
      url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf')
      format('truetype') !important;
}

/* 초기화 */
body, h1, h2, h3, div, p, ul, li, dl, dt, dd {
   margin: 0;
   padding: 0;
}

/*바디 기본폰트설정,구글 폰트설정함*/
#headerBody {
   background: white !important;
   font-family: 'Poppins', 'Noto Sans KR', sans-serif !important;
   font-size: 14px !important;
   line-height: 1.5 !important
}

#header {
   
   width: 1200px !important;
   height: 90px !important;
   margin: 0 auto !important;
   padding: 15px 10px 0px 5px !important;
   position: relative !important;
   display: flex !important;
   justify-content: space-between !important;
   align-items: center !important;
}

#header li {
   list-style: none !important;
}

#header a {
   text-decoration: none !important;
   color: #575656 !important;
}

#headerLogo img {
   width: 260px !important;
   height: 90px !important;
}

#headerMenuBar {
   width: 550px !important;
   height: 90px !important;
}

#headerGnb {
   height: 90px !important;
   display: flex !important;
   justify-content: space-between !important;
   font-size: 22px !important;
   padding-right: 20px !important;
}

#headerGnb li {
   align-self: center !important;
}

#headerTopMenu {

   padding-bottom: 13px !important;
   position: relative !important;
}

#headerTM {
   display: flex !important;
   justify-content: flex-end !important;
   font-size: 15px !important;
   padding: 0 5px 0 5px !important;
   width: 210px !important;
   height: 25px !important;
}

#headerSearchBar {
   border: 3px solid #928e8e !important;
   border-radius: 7px !important;
   height: 31px !important;
   resize: none !important;
}

/*돋보기아이콘*/
.fa-magnifying-glass {
   position: absolute !important;
   right: 9px !important; /*모니터 크기에 따라 위치 달라짐.필요하면 수치조정하기 */
   bottom: 19px !important;
   color: #928e8e !important;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>



<!-- 팝업 -->
<script>
	//페이지 로딩 시 모달 숨기기
	document.addEventListener("DOMContentLoaded", function() {
		closeModal();
	});

	// 팝업 열기
	function openModal() {
		var modal = document.getElementById("myModal");
		modal.style.display = "block";
	}

	// 팝업 닫기
	function closeModal() {
		var modal = document.getElementById("myModal");
		modal.style.display = "none";
	}

	// 알람 이미지 클릭 시 팝업 열기
	document.getElementById("alarmIcon").addEventListener("click", function() {
		openModal();
	});
</script>

</head>
<body id="headerBody">

<header id="header" class="header">
        <h1 id="headerLogo"><a href="homepage.do"><img src="../../image/logo.png" 모두의자격증"></a> </h1>
        <nav id="headerMenuBar">
            <ul id="headerGnb">
                <li><a href="examSearch.do">자격증정보</a></li>
                <li><a href="studyList.do">스터디모집</a></li>
        	    <li><a href="myPageHome.do" class="hover">마이페이지</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </nav>
        <div id="headerTopMenu">
            <ul id="headerTM">
            <c:choose>
               <c:when test="${id ne null}"><li><a href="logout.do">로그아웃</a></li>
               <span style="none">&nbsp;|&nbsp;</span>
               <c:if test="${id == admin }">
               <li><a href="/tp/jsp/admin/user.do">관리자홈</a></li>
               </c:if>
               </c:when>
               <c:when test="${id eq null}"><li><a href="login.do">로그인</a></li>
               <span style="none">&nbsp;|&nbsp;</span>
                <li><a href="join.do">회원가입</a></li>
                </c:when>
            </c:choose>
                
            </ul>

        </div>

    </header>

</body>
</html>