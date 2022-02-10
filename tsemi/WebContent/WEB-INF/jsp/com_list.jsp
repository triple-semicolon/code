<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>;;; - 잡담</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

html, body {
    margin: 0;
    padding: 0;
}

.headers {
    font-family: 'Hanna', fantasy;
    font-size: 40px;
    margin: 0 10px;
    height: 50px;
    border-bottom: 2px #00CC00 solid;
}

.menu_font {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    font-size: 17px;
    margin-left: 7px; 
    color: #0D5718;
}

.menu {
    width: 20%;
    height: 950px;
    float: left;
    background-color: #4CE564;
    margin: 10px 0px 0px 0px;
    border-radius: 0 10px 0 0;
}

.top_menu {
    background-color: #4CE564;
    margin-top: 50px;
    margin-left: 5px; 
}

.middle_menu {
    background-color: #4CE564;
    margin-top: 20px;
    margin-left: 5px; 
}

.bottom_menu {
    background-color: #4CE564;
    margin-top: 50px;
    margin-left: 5px; 
}

.point_menu {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 17px;
    background-color: green; 
    padding: 10px; 
    color: #FDFFF2;
    font-weight: bold;
    margin-top: 20px;
    /* margin-left: 5px; */
    box-shadow: 0 0 10px green;
}

.content {
    width: 80%;
    height: 950px;
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

.con_menu_font {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    font-size: 20px;
    color: #0D5718;
    margin-left: 25px; 
}

.any_list {
    margin-left: auto;
    margin-right: auto;
    width: 90%;
    height: 80%;
    background-color: #FDFFF2;
}

.list {
    padding: 13px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
    font-family: 'Noto Sans KR', sans-serif;
    display: flex;
}

a {
    text-decoration: none;
    color: green;
}

.con1 {
    display: flex;
}

.q_button {
    border-radius: 5px;
    position: relative;
    font-family: 'Noto Sans KR', sans-serif;
    text-transform: uppercase;
    top: 20px;
    outline: 0;
    background: #00CC00;
    border: 0;
    padding: 10px 16.2px 10px 16.2px;
    color: #FFFFFF;
    font-size: 14px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}

.q_button:hover,.q_button:active,.q_button:focus {
  background: #43A047;
}

/* 로그아웃 버튼 */
.logout {    
    margin-top: 21px;
    margin-right: 10px;
    float: right;
    font-family: 'Noto Sans KR', sans-serif;
    text-transform: uppercase;
    outline: 0;
    background: #FDFFF2;
    border: 0;
    padding: 5px 10px;
    color: black;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
    border-radius: 5px 5px 0 0;
}

.logout:hover,.logout:active,.logout:focus {
  background: #00CC00;
}

/* 삭제 css */
.delete {
    margin-left: auto;
    font-family: 'Noto Sans KR', sans-serif;
    color: red;
    cursor: pointer;
    font-weight: bold;
    border: 2px solid red;
    border-radius: 5px;
    background: none;
}

/* 제목 길어지면 말줄임표 */
.dotdotdot {
     width: 70%;
     overflow: hidden;
     text-overflow: ellipsis;
     white-space: nowrap;
     color: green;
}
</style>
<script src="https://ajax.googleapis.com/aja/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<body>
	<header class="headers">
        <a style="color: #0D5718; margin-left: 10px;" href="home.do">;;;</a>
        <button style="color: #0D5718;" class="logout" onclick="location.href='login.do';">로그아웃</button>
    </header>
    <div>
    	<div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <!-- <div class="bottom_menu" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div> -->
            <div class="top_menu menu_font" style="cursor: pointer;" onclick="location.href='notice.do';">공지사항</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna_list.do';">Q & A</div>
            
            <div style="background-color: green;">
                <div class="point_menu" style="cursor: pointer;" onclick="location.href='com_list.do';">잡담</div>
            </div>
            
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='month_act.do';">이달의 활동왕</div>
            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
        </div>
        <div class="content">
            <div class="con1">
                <div>
                    <h4 class="con_menu_font">잡다한 이야기</h4>
                </div>
                <div style="margin-left: auto; margin-right: 40px;">
                    <button class="q_button" style="cursor: pointer;" onclick="location.href='update_com.do';">글쓰기</button>
                </div>
            </div>
            
            <div class="any_list">
	            <!-- 한 화면에 15개 공지 : 1행 기준 .. 이것은 모든 목록 동일 -->
            	<q:forEach items="${list}" var="t">
	           		<div class="list">
		            	<div class="dotdotdot"><a href="com.do?no=${t.no}">${t.title}</a></div>
		                <!-- if user==운영자.. 삭제 표시 -->
		                <q:if test="${operator eq \"Y\"}">
	                    	<button class="delete" onclick="location.href='delCom.do?no=${t.no}';">삭제</button>
	                    </q:if>
		                <div style="margin-left: auto; color: green;">${t.username}</div>
		         	</div>
		        </q:forEach>   
            </div>
        </div>
    </div>
</body>
</html>