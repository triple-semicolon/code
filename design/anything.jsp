<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;; - 잡담</title>
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
    border-bottom: 2px #f0f0f0 solid;
}

.menu_font {
    font-family: "Roboto", sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 5px; 
}

.menu {
    width: 20%;
    height: 900px;
    float: left;
    background-color: #dcdcdc;
    margin: 10px 0px 0px 0px;
}

.top_menu {
    background-color: #dcdcdc;
    margin-top: 50px;
    margin-left: 5px; 
}

.middle_menu {
    background-color: #dcdcdc;
    margin-top: 20px;
    margin-left: 5px; 
}

.bottom_menu {
    background-color: #dcdcdc;
    margin-top: 50px;
    margin-left: 5px; 
}

.content {
    width: 80%;
    height: 900px;
    float: right;
    background-color: #f8f8f8;
    margin: 10px 0px 0px 0px;
}

.con_menu_font {
    font-family: "Roboto", sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 25px; 
}

.any_list {
    margin-left: 25px;
    width: 94%;
    height: 80%;
    background-color: #f8f8f8;
}

.list {
    background-color: yellow;
    padding: 13px 10px;
    border: 1px solid lightgray;
}

a {
    text-decoration: none;
    color: green;
}

</style>
</head>
<body>
    <header class="headers" style="cursor: pointer;" onclick="location.href='main_css.jsp';">;;;</header>
    <div>
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font">Menu</div>
            <div class="top_menu" style="cursor: pointer;" onclick="location.href='gong_menu.jsp';">공지사항</div>
            <div class="middle_menu" style="cursor: pointer;" onclick="location.href='qna.jsp';">Q & A</div>
            <div class="middle_menu" style="cursor: pointer;" onclick="location.href='anything.jsp';">잡담</div>
            <div class="middle_menu" style="cursor: pointer;" onclick="location.href='thismonth_a.jsp';">이달의 활동왕</div>
            <div class="bottom_menu" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
        </div>
        <div class="content">
            <h4 class="con_menu_font">잡다한 이야기</h4>
            <div class="any_list">
                <div class="list">
                    <a href="any.jsp">잡담 1</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 2</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 3</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 4</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 5</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 6</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 7</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 8</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 9</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 10</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 11</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 12</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 13</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 14</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
                <div class="list">
                    <a href="any.jsp">잡담 15</a>
                    <a style="float: right;" href="user1">유저네임</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>