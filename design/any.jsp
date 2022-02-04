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
    height: auto;
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

.wrapper {
  display: flex;
  ovreflow: hidden;
}

.content {
    width: 80%;
    height: 900px+calc(auto);
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

.con_menu_font {
    font-family: "Roboto", sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 25px; 
    margin-right: 25px;
}

.qna_list {
    margin-top: 35px;
    margin-left: 25px;
    margin-right: 25px;
    height: auto;
    border: 3px solid #FFDD3D;
    padding: 30px 25px 30px 25px;
}

.qna_back {
    margin: 25px 25px 50px 25px;
    width: 94%;
}

.qna_ans {
    margin-top: 60px;
    margin-left: 25px;
    margin-right: 25px;
    border: 2px solid #00CC00;
    height: auto;
    padding: 30px 25px 30px 25px;
}

a {
    text-decoration: none;
    color: green;
}

.ans_button {
	position: relative;
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #00CC00;
	left: 25px; 
	top: 150px;
	border: 0;
	padding: 10px 40px 10px 40px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.line {
    margin: 150px 25px 0px 25px;
    background-color: #00CC00;
    border: solid 2px #00CC00;
}

</style>
</head>
<body>
    <header class="headers">
        <a style="color:black;" href="main_css.jsp">;;;</a>
    </header>
    <div class="wrapper">
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
            <h4 class="con_menu_font">배고파영</h4>
            <div class="qna_list">
                배고파여<br/>
                점심 뭐 드실 거에요<br/>
                저는 마라탕이요<br/>
                다들 맛저하세용 머 드실건지 댓글 남겨주셔요 심~심~
                <br/>
                dkdkdkd
                <br/>
                testeststste
                <br/>
            </div>
            <button class="ans_button">답변 쓰기</button>
            <hr class="line" noshade>
            <div class="qna_ans">
                <div>
                    밥<br/>
                    머먹지<br/>
                    점심 먹고 나면<br/>
                    저녁이 걱정이고 그래<br/>
                    ㅎㅎ<br/>
                </div>
            </div>
            <div class="qna_ans">
                <div>
                    나도<br/>
                    마라탕<br/>
                    먹을거가태<br/>
                </div>
            </div>
            <div class="qna_back"  style="text-align: center;">
                <a href="anything.jsp">목록으로 돌아가기</a>
            </div>
        </div>
    </div>
</body>
</html>