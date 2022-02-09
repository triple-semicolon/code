<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;;</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_three@1.0/D2Coding.woff');
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

/* 메뉴쪽 폰트 설정 */
.menu_font {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    font-size: 17px;
    margin-left: 7px; 
    color: #0D5718;
}

/* 메뉴 배경 div 설정 */
.menu {
    width: 20%;
    height: auto;
    float: left;
    background-color: #4CE564;
    margin: 10px 0px 0px 0px;
    border-radius: 0 10px 0 0;
}

/* content부분 배경 div 설정 */
.content {
    width: 80%;
    height: auto;
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

/* 공지사항, 이달의 활동왕 옆으로 놓여지는 설정 */
.con1 {
    display: flex;
}

/* 공지사항부분 전체 div 설정 */
.gong {
    margin-top: 20px;
    margin-left: auto;
    margin-right: 10px;
    width: 65%;
    height: 160px;
}

/* 이달의활동왕 부분 전체 div 설정 */
.thismonth {
    margin-top: 20px;
    margin-left: 10px;
    margin-right: auto;
    width: 25%;
    height: 160px;
}

/* content 타이틀 */
.title {
    margin: 10px 5px 0px 5px;
    background-color: #FDFFF2;
    /* #FDFFF2 */
    height: 60px;
    width: 98%;
    
}

/* content 타이틀 폰트 */
.title_sub {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    padding: 25px 10px 20px 10px;
    margin-right: auto;
    margin-left: auto;
    width: 90%;
}

/* content 타이틀 폰트 */
.title_sub2 {
    padding: 5px 10px 15px 10px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
}

/* 질문부분 div */
.question {
    margin-top: 0px;
    margin-bottom: 0px;
    margin-right: auto;
    margin-left: auto;
    background-color: #f8f8f8;
    height: 250px;
    width: 90%
}

/* 잡담부분 div */
.anything {
    margin-top: 0px;
    margin-bottom: 80px;
    margin-right: auto;
    margin-left: auto;
    background-color: #f8f8f8;
    height: 250px;
    width: 90%
}

/* 메뉴 위쪽 */
.top_menu {
    /* 2 : background-color: #0D5718; */
    background-color: #4CE564;
    margin-top: 50px;
    margin-left: 5px;
}

/* 메뉴 중간쪽 */
.middle_menu {
    /* 2 : background-color: #0D5718; */
    background-color: #4CE564;
    margin-top: 20px;
    margin-left: 5px;
}

/* 메뉴 아래쪽 (깃헙) */
.bottom_menu {
    /* 2 : background-color: #0D5718; */
    background-color: #4CE564;
    margin-top: 50px;
    margin-left: 5px;
}

/* 하위내용 리스트 */
.list {
    padding: 13px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
    background-color: #FDFFF2;
    font-family: 'Noto Sans KR', sans-serif;
}

/* 공지사항 이달의활동왕 하위내용 리스트 */
.list_top {
    padding: 9.7px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
    font-family: 'Noto Sans KR', sans-serif;
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

.photo_head {
    margin-top: 5px;
    margin-left: 8px;
    height: 75px;
    width: 75px;
    border: 2px solid #00CC00;
    border-radius: 50%;
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
            <!-- <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div> -->
            <div style="position:sticky;">
            <div class="top_menu menu_font" style="cursor: pointer;" onclick="location.href='notice.do';">공지사항</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna_list.do';">Q & A</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='com_list.do';">잡담</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='month_act.do';">이달의 활동왕</div>
            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
            </div>
        </div>
        <div class="content">
            <div class="con1">
                <div class="gong" style="margin-bottom: 15px;">
                    <div class="title_sub2">
                        <a href="notice.do">공지사항</a>
                  	</div>
					<q:forEach items="${notice}" end="2" var="t">
						<div class="list_top">
							<div class="dotdotdot"><a href="notice_content.do?no=${t.no}">${t.title}</a></div>
		         		</div>
		        	</q:forEach>   
              	</div>
                <div class="thismonth">
                    <div class="title_sub2">
                        <a href="month_act.do">이달의 활동왕</a>
                    </div>
                    <q:forEach items="${month_king}" end="2" var="t">
                    	<div class="list_top" style="text-align: center; border-right: 3px solid #00CC00; color: green;">
                        	${t.username}
                    	</div>
                    </q:forEach>
                </div>
            </div>
            
            <div class="title">
                <div class="title_sub">
                    <a href="month_act.do">이달의 질문</a> 
                </div>
            </div>
            <div>
                <div style="width: 90%; margin-right: auto; margin-left: auto;">
                    <div class="list" style="border-right: 3px solid #00CC00;">
                        <a href="question.jsp">${month_q.title}</a>
                        <div style="float: right; color: green;">${month_q.username}</div>
                        <div style="padding: 20px 10px 10px 10px;">
                            ${month_q.content}
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="title" style="margin-top: 40px;">
                <div class="title_sub">
                    <a href="qna_list.do">Q & A</a>
                </div>
            </div>
            <div>
                <div class="question">
					<q:forEach items="${ques}" end="4" var="t">
						<div class="list">
							<div class="dotdotdot"><a href="qna.do?no=${t.no}">${t.title}</a>
							<div style="float: right; color: green;">${t.username}</div>
							</div>
	         			</div>
					</q:forEach>   
                </div>
            </div>
            
            <div>
                <div class="title">
                    <div class="title_sub">
                        <a href="anything.jsp">잡다한 이야기</a>
                    </div>
                </div>
            </div>
            <div>
                <div class="anything">
                    <q:forEach items="${com}" end="4" var="t">
						<div class="list">
							<div class="dotdotdot"><a href="qna.do?no=${t.no}">${t.title}</a>
							<div style="float: right; color: green;">${t.username}</div>
							</div>
	         			</div>
					</q:forEach>   
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<!-- 
코트라 고딕
@font-face {
    font-family: 'KOTRA_GOTHIC';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/KOTRA_GOTHIC.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

D2Coding 폰트
@font-face {
    font-family: 'D2Coding';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_three@1.0/D2Coding.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

수트 Medium 폰트
@font-face {
    font-family: 'SUIT-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Medium.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

title back color = #FDFFF2

border: solid 3px #FFDD3D;

https://happy-inside.tistory.com/91
-- 로그인 해야 글쓰기 되는 것 예제

display: block;
position: fixed;
    
height: 20%;
width: calc(100%-2px);

https://lcw126.tistory.com/156
https://rebro.kr/16?category=325067

display : flex -- middle 박스를 flexbox로 설정하겠다는 의미이다.

 -->