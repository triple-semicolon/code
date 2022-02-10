<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;; - 공지사항</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

html, body {
    margin: 0;
    padding: 0;
}

/* 화면 길이 조절 */
.wrapper {
  display: flex;
  ovreflow: hidden;
}

/* 헤더 부분 */
.headers {
    font-family: 'Hanna', fantasy;
    font-size: 40px;
    margin: 0 10px;
    height: 50px;
    border-bottom: 2px #00CC00 solid;
    /* border-bottom: 2px #00CC00 solid;*/
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
    height: auto;
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
    height: auto;
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

.con_menu_font {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 30px; 
}

.gong_list {
    margin-left: 30px;
    margin-right: 30px;
    height: 800px;
    border: 5px solid #FFDD3D;
    border-radius: 8px;
    font-family: 'Noto Sans KR', sans-serif;
    overflow: auto;
}

.gong_list::-webkit-scrollbar {
    background-color: #FDFFF2;
}

.gong_list::-webkit-scrollbar-thumb {
    background-color: #FFDD3D;
    border-radius: 10px;
    background-clip: padding-box;
    border: 5px solid transparent;
}

.gong_list::-webkit-scrollbar-track {
    background-color: #FDFFF2;
}

.gong_con {
    padding: 20px;
}

.gong_back {
    margin: 25px 25px 40px 25px;
    width: 94%;
}

a {
    text-decoration: none;
    color: green;
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

.title_time {
    font-size: 13px;
    margin-left: 30px;
    margin-top: 0px;
    color: gray;
    font-family: 'Noto Sans KR', sans-serif;
}

/* 삭제 css */
.delete {
    margin-left: 30px;
    margin-top: 20px;
    padding: 2px 10px 2px 10px;
    font-family: 'Noto Sans KR', sans-serif;
    color: gray;
    cursor: pointer;
    font-weight: bold;
    border: 2px solid gray;
    border-radius: 5px;
    background: none;
}


</style>
</head>
<body>
    <header class="headers">
        <a style="color: #0D5718; margin-left: 10px;" href="home.do">;;;</a>
        <button style="color: #0D5718;" class="logout" onclick="location.href='login.do';">로그아웃</button>
    </header>
    <div class="wrapper">
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <div style="position:sticky; top:50px;">
                <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="location.href='mypage.do';">마이페이지</div>
	            <div style="background-color: green;">
	                <div class="point_menu" style="cursor: pointer; margin-top: 40px;" onclick="location.href='notice.do';">공지사항</div>
	            </div>
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna_list.do';">Q & A</div>
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='com_list.do';">잡담</div>
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='month_act.do';">이달의 활동왕</div>
	            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
            </div>
        </div>
        <div class="content">
            <!-- if user==운영자.. 삭제 표시 -->
            <q:if test="${operator eq \"Y\"}">
				<button class="delete" onclick="location.href='del_notice.do?no=${t.no}';">삭제</button>
			</q:if>
             
            <div>
              <h4 class="con_menu_font" style="margin-bottom: 5px;  margin-right: 30px;">${list.title}</h4>
              <h4 class="title_time" style="font-weight: normal;">${list.time}</h4>
            </div>
            
            <div class="gong_list">
                <div class="gong_con">
                	${list.content}
                </div>
            </div>
            <div class="gong_back"  style="text-align: center; font-family: 'Noto Sans KR', sans-serif;">
                <a href="notice.do">목록으로 돌아가기</a>
            </div>
        </div>
    </div>
</body>
</html>