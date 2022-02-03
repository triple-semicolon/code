<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;; - Q & A</title>
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
    height: auto;
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

.wrapper {
  display: flex;
}

.content {
    width: 80%;
    height: auto;
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

.qna_list {
    margin-left: 25px;
    width: 94%;
    height: auto;
    background-color: pink;
    padding: 30px 0px 30px 0px;
}

.qna_back {
    margin: 25px;
    width: 94%;
}

.qna_ans {
    margin-top: 30px;
    margin-left: 25px;
    background-color: orange;
    width: 94%;
    height: auto;
    padding: 30px 0px 30px 0px;
}

a {
    text-decoration: none;
    color: green;
}

</style>
</head>
<body>
    <header class="headers" style="cursor: pointer;" onclick="location.href='main_css.jsp';">;;;</header>
    <div class="wrapper">
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
            <h4 class="con_menu_font">질문 1</h4>
            <div class="qna_list">
                음... 디자인 고민<br/>
                와... 진짜 고민되네<br/>
                이게 맞나...
            </div>
            <div class="qna_ans">
                <div>
                    답변 공간<br/>
                    답변 부탁<br/>
                    여기 위에<br/>
                    답변적는 어떠한 공간 들어갈 예정<br/>
                    아마도?<br/>
                </div>
            </div>
            <div class="qna_back"  style="text-align: center;">
                <a href="qna.jsp">돌아가기</a>
            </div>
        </div>
    </div>
</body>
</html>