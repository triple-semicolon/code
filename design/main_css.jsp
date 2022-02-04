<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;;</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

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
    font-family: "Roboto", sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 5px; 
}

.menu {
    width: 20%;
    height: 920px;
    float: left;
    background-color: #4CE564;
    margin: 10px 0px 0px 0px;
    
}

.content {
    width: 80%;
    height: 920px;
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

.con1 {
    display: flex;
}

.gong {
    margin-top: 20px;
    margin-left: auto;
    margin-right: 10px;
    width: 45%;
    height: 200px;
}

.thismonth {
    margin-top: 20px;
    margin-left: 10px;
    margin-right: auto;
    width: 45%;
    height: 200px;
}

.title {
    margin: 10px 5px 0px 5px;
    background-color: #FDFFF2;
    /* #FDFFF2 */
    height: 60px;
    width: 98%;
    
}

.title_sub {
    padding: 25px 10px 20px 10px;
    font-weight: bold;
    margin-right: auto;
    margin-left: auto;
    width: 90%
}

.title_sub2 {
    padding: 5px 10px 15px 10px;
    font-weight: bold;
}

.question {
    margin-top: 0px;
    margin-bottom: 0px;
    margin-right: auto;
    margin-left: auto;
    background-color: #f8f8f8;
    height: 250px;
    width: 90%
}

.anything {
    margin-top: 0px;
    margin-bottom: 0px;
    margin-right: auto;
    margin-left: auto;
    background-color: #f8f8f8;
    height: 250px;
    width: 90%
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

.list {
    padding: 13px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
    background-color: #FDFFF2;
}

.list_top {
    padding: 9.7px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
}

a {
    text-decoration: none;
    color: green;
}

.logout {
    margin-top: 22.5px;
    margin-right: 10px;
    float: right;
    font-family: "Roboto", sans-serif;
    text-transform: uppercase;
    outline: 0;
    background: #FDFFF2;
    border: 0;
    padding: 5px 10px;
    color: black;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}

.logout:hover,.logout:active,.logout:focus {
  background: #00CC00;
}

</style>
</head>
<body>
    <header class="headers">
        <a style="color:black;" href="main_css.jsp">;;;</a>
        <button class="logout">로그아웃</button>
    </header>
    <div>
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font">Menu</div>
            <div class="bottom_menu" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div>
            <div class="top_menu" style="cursor: pointer;" onclick="location.href='gong_menu.jsp';">공지사항</div>
            <div class="middle_menu" style="cursor: pointer;" onclick="location.href='qna.jsp';">Q & A</div>
            <div class="middle_menu" style="cursor: pointer;" onclick="location.href='anything.jsp';">잡담</div>
            <div class="middle_menu" style="cursor: pointer;" onclick="location.href='thismonth_a.jsp';">이달의 활동왕</div>
            <div class="bottom_menu" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
        </div>
        <div class="content">
            <div class="con1">
                <div class="gong" style="margin-bottom: 15px;">
                    <div class="title_sub2">
                        <a href="gong_menu.jsp">공지사항</a>
                    </div>
                    <div class="list_top">
                        <a href="gongji.jsp">공지 1</a>
                    </div>
                    <div class="list_top">
                        <a href="gongji.jsp">공지 2</a>
                    </div>
                    <div class="list_top">
                        <a href="gongji.jsp">공지 3</a>
                    </div>
                    <div class="list_top">
                        <a href="gongji.jsp">공지 4</a>
                    </div>
                </div>
                <div class="thismonth">
                    <div class="title_sub2">
                        <a href="thismonth_a.jsp">이달의 활동왕</a>
                    </div>
                    <div class="list_top">
                        <a href="thismonth_a.jsp">유저네임</a>
                    </div>
                    <div class="list_top">
                        <a href="thismonth_a.jsp">유저네임</a>
                    </div>
                    <div class="list_top">
                        <a href="thismonth_a.jsp">유저네임</a>
                    </div>
                    <div class="list_top">
                        <a href="thismonth_a.jsp">유저네임</a>
                    </div>
                </div>
            </div>
            
            <div class="title">
                <div class="title_sub">
                    <a href="qna.jsp">질문</a>
                </div>
            </div>
            <div>
                <div class="question">
                    <div class="list">
                        <a href="question.jsp">질문 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="question.jsp">질문 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="question.jsp">질문 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="question.jsp">질문 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="question.jsp">질문 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
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
                    <div class="list">
                        <a href="any.jsp">잡담 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="any.jsp">잡담 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="any.jsp">잡담 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="any.jsp">잡담 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                    <div class="list">
                        <a href="any.jsp">잡담 1</a>
                        <a style="float: right;" href="user1">유저네임</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<!-- 
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