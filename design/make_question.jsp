<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;; - 글쓰기</title>
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
    height: 920px;
    float: left;
    background-color: #4CE564;
    margin: 10px 0px 0px 0px;
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

.content {
    width: 80%;
    height: 920px;
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

.con_menu_font {
    font-family: "Roboto", sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 25px; 
}

.this_list {
    margin-left: 25px;
    width: 94%;
    height: 80%;
    background-color: #FDFFF2;
}

.this_list2 {
    margin-left: 25px;
    width: 94%;
    margin-bottom: 10px;
}

.con1 {
    display: flex;
}

.list {
    padding: 13px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
    border-right: 3px solid #00CC00;
}

.a_king {
    width: 45%;
    /*border: 3px solid #FFDD3D;*/
    margin-right: auto;
    margin-left: auto;
}

.q_king {
    width: 45%;
    /*border: 3px solid #FFDD3D;*/
    margin-right: auto;
    margin-left: auto;
}

.a_king_top {
    width: 45%;
    margin-right: auto;
    margin-left: auto;
    margin-top: 10px;
    font-weight: bold;
    color: green;
}

.q_king_top {
    width: 45%;
    margin-right: auto;
    margin-left: auto;
    margin-top: 10px;
    font-weight: bold;
    color: green;
}

a {
    text-decoration: none;
    color: green;
}

.wrapper {
  display: flex;
  ovreflow: hidden;
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
    border-radius: 5px;
}

.logout:hover,.logout:active,.logout:focus {
  background: #00CC00;
}



</style>
</head>
<body>
    <header class="headers">
        <a style="color: #0D5718;" href="main_css.jsp">;;;</a>
        <button style="color: #0D5718;" class="logout">로그아웃</button>
    </header>
    <div class="wrapper">
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <!-- <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div> -->
            <div class="top_menu menu_font" style="cursor: pointer;" onclick="location.href='gong_menu.jsp';">공지사항</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna.jsp';">Q & A</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='anything.jsp';">잡담</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='thismonth_a.jsp';">이달의 활동왕</div>
            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
        </div>
        <div class="content">
            
        </div>
    </div>
</body>
</html>