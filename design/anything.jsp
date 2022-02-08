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
</head>
<body>
    <header class="headers">
        <a style="color: #0D5718; margin-left: 10px;" href="main_css.jsp">;;;</a>
        <button style="color: #0D5718;" class="logout">로그아웃</button>
    </header>
    <div>
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <!-- <div class="bottom_menu" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div> -->
            <div class="top_menu menu_font" style="cursor: pointer;" onclick="location.href='gong_menu.jsp';">공지사항</div>
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna.jsp';">Q & A</div>
            
            <div style="background-color: green;">
                <div class="point_menu" style="cursor: pointer;" onclick="location.href='anything.jsp';">잡담</div>
            </div>
            
            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='thismonth_a.jsp';">이달의 활동왕</div>
            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
        </div>
        <div class="content">
            <div class="con1">
                <div>
                <h4 class="con_menu_font">잡다한 이야기</h4>
                </div>
                <div style="margin-left: auto; margin-right: 40px;">
                    <button class="q_button" style="cursor: pointer;" onclick="location.href='make_anything.jsp';">글쓰기</button>
                </div>
            </div>
            <div class="any_list">
            <!-- 한 화면에 15개 공지 : 1행 기준 .. 이것은 모든 목록 동일 -->
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">잡담 1 인데 제목이 길면 어떻게 되는지는 테스트를 해보지 않아서 이거 필독필독 어쩌구 저쩌구</a></div>
                    
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">잡담 2 입니다</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">잡담 하는 곳입니다</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">으어어어어어어</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">이곳도 역시나</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">15개가 최대입니다</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">그냥 게시물 15개만 적고 싶은 마음이</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">굴뚝같구요</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">왜이렇게 해도 해도</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">끝이 없을까여</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">이것이 바로 욕심이겠지</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">아에이오오우우오아아아아에에이이우오우우오우우테쓰트테스트</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">으어어어어어어</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">으어어어어어어</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="any.jsp">잡담15</a></div>
                    <!-- if user==운영자.작성자 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">유저네임</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>