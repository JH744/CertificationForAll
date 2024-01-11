<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../../css/loginstyle.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&family=Poppins:wght@400;600&display=swap"
        rel="stylesheet"><!--구글폰트-->
    <script src="https://kit.fontawesome.com/e72539902e.js" crossorigin="anonymous"></script> <!--아이콘 사용-->
    <style>
    	@font-face {
		 font-family: 'NanumBarunGothic' !important;
		 font-style: normal !important;
		 font-weight: 400 !important;
		 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot') !important;
		 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype') !important;
	}
   
        /* 초기화 */
        body,h1,h2,h3,div,p,ul, li,dl, dt,dd {
            margin: 0;
            padding: 0;
        }

        /*바디 기본폰트설정,구글 폰트설정함*/
        #headerbody { 
        	all:unset;
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

        #headerlogo img {
            width: 260px !important;
            height: 90px !important;
        }

        #headermenuBar {
            width: 550px !important;
            height: 90px !important;
        }

        #headergnb {
            height: 90px !important;
            display: flex !important;
            justify-content: space-between !important;
            font-size: 22px !important;
            padding-right: 20px !important;
        }

        #headergnb li {
            align-self: center !important;
        }

        #headertopMenu {       
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

        #headersearchBar {
            border: 3px solid #928e8e !important;
            border-radius: 7px !important;
            height: 31px !important;
            resize: none !important;
        }
    
        /*돋보기아이콘*/
        .fa-magnifying-glass{  
            position: absolute !important;
            right: 9px !important;  /*모니터 크기에 따라 위치 달라짐.필요하면 수치조정하기 */
            bottom: 19px !important;
            color: #928e8e !important;
        }


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="all: unset;">
<div id="headerbody">
<header id="header" class="header">
        <h1 id="headerlogo"><a href="main.html"><img src="../../image/logo.png" 모두의자격증"></a> </h1>
        <nav id="headermenuBar">
            <ul id="headergnb">
                <li><a href="#">자격증정보</a></li>
                <li><a href="studyList.do">스터디모집</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </nav>
        <div id="headertopMenu">
            <ul id="headerTM">
                <li><a href="login.do">로그인</a></li>
                <span style="none">&nbsp;|&nbsp;</span>
                <li><a href="join.do">회원가입</a></li>
                <i class="fa-solid fa-magnifying-glass"></i>
            </ul>
            <input id="headersearchBar" name="headersearchBar" type="text" size="28" />
        </div>

    </header>
    </div>
</body>
</html>