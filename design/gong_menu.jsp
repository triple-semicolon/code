<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;; - 공지사항</title>
<style type="text/css">
/* css 부분 */

/* 폰트 다운로드 */
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

html, body {
    margin: 0;
    padding: 0;
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

.gong_list {
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

/* 제목 길어지면 말줄임표 */
.dotdotdot {
     width: 70%;
     overflow: hidden;
     text-overflow: ellipsis;
     white-space: nowrap;
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
    padding: 10px;
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
    /* margin-left: auto; */
    /* float: right; */
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
    color: gray;
    cursor: pointer;
    font-weight: bold;
    border: 2px solid gray;
    border-radius: 5px;
    background: none;
}

.hi {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 17px;
    margin-top: auto;
    margin-bottom: 5px;
    margin-left: auto;
    font-weight: bold;
    color: #0D5718;
}

</style>
</head>
<body>
    <!-- con1 추가, a의 style 추가, hi class 추가, logout class 변경, username div 추가 -->
    <header class="headers con1">
        <a style="color: #0D5718; margin-left: 10px; margin-top: auto; font-size: 50px;" href="main_css.jsp">;;;</a>
        <div class="hi" style="margin-top: auto;">
            Hi username
            <button style="color: #0D5718; margin-left: 15px;" class="logout">로그아웃</button>
        </div>
    </header>
    <div>
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <div style="position:sticky; top:50px;">
                <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="location.href='user_page.jsp';">마이페이지</div>

	            <div style="background-color: green;">
	                <div class="point_menu" style="cursor: pointer; margin-top: 40px;" onclick="location.href='gong_menu.jsp';">공지사항</div>
	            </div>
	            
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna.jsp';">Q & A</div>
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='anything.jsp';">잡담</div>
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='thismonth_a.jsp';">이달의 활동왕</div>
	            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
            </div>
        </div>
        <div class="content">
            <div class="con1">
                <div>
                    <h4 class="con_menu_font">공지사항</h4>
                </div>
                
                <!-- if user==운영자 공지쓰기 보이기 -->
                <div style="margin-left: auto; margin-right: 40px;">
                    <button class="q_button" style="cursor: pointer;" onclick="location.href='make_gongji.jsp';">공지쓰기</button>
                </div>
            </div>
            
            <div class="gong_list">
            <!-- 한 화면에 15개 공지 : 1행 기준 .. 이것은 모든 목록 동일 -->
	            
	            <div class="list">
	                <div class="dotdotdot"><a href="gongji.jsp">공지 1 인데 제목이 길면 어떻게 되는지는 테스트를 해보지 않아서 이거 필독필독 어쩌구 저쩌구</a></div>
	                
	                <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    
	                <div style="margin-left: auto; color: green;">time or day</div>
	            </div>
	            <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">공지 2 인데 제목이 애매하게 길면 어떻게 되는지를 테스트 해볼까?</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">주의할점</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">공지는 15개 입니다</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">공지뿐만 아니라 다른 목록도 15개</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">기준입니다</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">헷갈릴수있을 것 같아 주석 달아놨습니다</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">그래도 모를수 있으니 이렇게</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">남겨봅니다</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">공지를 길게 적으면 제목이 잘리고</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">점점점 ... 으로 표시됩니다</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">삭제가되어야겠지...는 삭제 누르면 코드 동작을</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">잘 몰라서 임의로 채워놨습니다</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">jsp 이동해도 되고 동작을 넣어도 됩니다 아마도</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
                <div class="list">
                    <div class="dotdotdot"><a href="gongji.jsp">공지 15</a></div>
                    <!-- if user==운영자.. 삭제 표시 -->
                    <button class="delete" onclick="삭제가되어야겠지...">삭제</button>
                    <div style="margin-left: auto; color: green;">time or day</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>