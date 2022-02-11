<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
<title>;;; - 유저페이지</title>
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

.bottom_menu {
    background-color: #4CE564;
    margin-top: 50px;
    margin-left: 5px; 
}

.content {
    width: 80%;
    float: right;
    background-color: #FDFFF2;
    margin: 10px 0px 0px 0px;
}

.con_menu_font {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 25px; 
}


.con1 {
    display: flex;
}

a {
    text-decoration: none;
    color: green;
}

.wrapper {
  display: flex;
  ovreflow: hidden;
}

.photo {
    display: inline-block;
    border: 3px solid #FFDD3D;
    border-radius: 50%;
    overflow: hidden;
    height: 200px;
    width: 200px;
    background-color: white;
}

.username {
    font-family: 'Noto Sans KR', sans-serif;
    margin-top: 10px;
    font-size: 20px;
    font-weight: bold;
}

.my_qna {
    margin-top: 60px;
    margin-left: auto;
    margin-right: 10px;
    width: 45%;
    height: auto;
}

.my_ans {
    margin-top: 60px;
    margin-left: 10px;
    margin-right: auto;
    width: 45%;
    height: auto;
}

.title_sub {
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    padding: 25px 10px 20px 10px;
    margin-right: auto;
    margin-left: auto;
    width: 90%;
}

.title_sub2 {
    padding: 5px 2px 15px 2px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
}

.list_top {
    padding: 9.7px 10px;
    border: 1px solid #FFDD3D;
    border-left: 3px solid #00CC00;
    font-family: 'Noto Sans KR', sans-serif;
}

/* 제목 길어지면 말줄임표 */
.dotdotdot {
     width: 75%;
     overflow: hidden;
     text-overflow: ellipsis;
     white-space: nowrap;
     color: green;
}

.delete {
    margin-left: auto;
    font-family: 'Noto Sans KR', sans-serif;
    color: gray; /* red */
    cursor: pointer;
    font-weight: bold;
    border: 2px solid gray; /* red */
    border-radius: 5px;
    background: none;
    margin-top: 0px;
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
    <header class="headers con1">
        <a style="color: #0D5718; margin-left: 10px; margin-top: auto; font-size: 50px;" href="home.do">;;;</a>
        <div class="hi" style="margin-top: auto;">
            Hi ${username }
            <button style="color: #0D5718; margin-left: 15px;" class="logout" onclick="location.href='login.do';">로그아웃</button>
        </div>
    </header>
    <div class="wrapper">
        <div class="menu">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <div style="position:sticky; top:50px;">
                <div class="top_menu menu_font" style="cursor: pointer; margin-top: 50px; margin-bottom: 5px;" onclick="location.href='mypage.do';">마이페이지</div>
                <div class="top_menu menu_font" style="cursor: pointer;" onclick="location.href='notice.do';">공지사항</div>
            	<div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna_list.do';">Q & A</div>
            	<div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='com_list.do';">잡담</div>
            	<div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='month_act.do';">이달의 활동왕</div>
                <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
            </div>
        </div>
        
        <div class="content">
            <div style="text-align: center; margin-top: 30px;">
                <img src="images/ts.png" class="photo">
            </div>
            <div class="username" style="text-align: center;">${name}</div>
            
            <!-- 질문과 답변 -->
            <!-- <div style="background-color: #FFDD3D;">질문과 답변</div> -->
            <div class="con1">
                <div class="my_qna">
                    <div class="title_sub2">
                        <a>질문 기록</a>
                    </div>
                    <q:choose>
                    	<q:when test="${empty ques}">
                    		<div class="list_top con1">
                    			<div class="dotdotdot"><a>글이 없습니다.</a></div>
                    		</div>	
                    	</q:when>
                    	<q:otherwise>
                    		<q:forEach items="${ques}" end="4" var="t">
	                    		<div class="list_top con1">
	                        		<div class="dotdotdot"><a href="qna.do?no=${t.no}">${t.title}</a></div>
	                        		<q:if test="${operator eq \"Y\"}">
	                        			<button class="delete" onclick="location.href='del.do?no=${t.no}&del=return_mypage';">삭제</button>
	                        		</q:if>
	                        		<!--<button class="delete" style="" onclick="삭제가되어야겠지...">삭제</button> -->
	                    		</div>
                    		</q:forEach> 
                    	</q:otherwise>
                    </q:choose>
                </div>
                
                <div class="my_ans">
                    <div class="title_sub2">
                        <a>댓글 기록</a>
                    </div>
                    <q:choose>
                    	<q:when test="${empty q_ans}">
                    		<div class="list_top con1">
                    			<div class="dotdotdot"><a>댓글이 없습니다.</a></div>
                    		</div>	
                    	</q:when>
                    	<q:otherwise>
                    		<q:forEach items="${q_ans}" end="4" var="t">
	                    		<div class="list_top con1">
	                        		<div class="dotdotdot"><a href="qna.do?no=${t.no}">${t.content}</a></div>
	                        		<!--<button class="delete" style="" onclick="삭제가되어야겠지...">삭제</button> -->
	                    		</div>
                    		</q:forEach> 
                    	</q:otherwise>
                    </q:choose>
                </div>
            </div>
            
            <!-- 잡담과 답변 -->
            <div class="con1">
                <div class="my_qna" style="margin-bottom: 80px;">
                    <div class="title_sub2">
                        <a>잡담 기록</a>
                    </div>
                    <q:choose>
                    	<q:when test="${empty com}">
                    		<div class="list_top con1">
                    			<div class="dotdotdot"><a>글이 없습니다.</a></div>
                    		</div>	
                    	</q:when>
                    	<q:otherwise>
                    		<q:forEach items="${com}" end="4" var="t">
	                    		<div class="list_top con1">
	                        		<div class="dotdotdot"><a href="com.do?no=${t.no}">${t.content}</a></div>
	                        		<q:if test="${operator eq \"Y\"}">
	                        			<button class="delete" onclick="location.href='delCom.do?no=${t.no}&del=return_mypage';">삭제</button>
	                        			<!--<button class="delete" style="" onclick="삭제가되어야겠지...">삭제</button> -->
	                    			</q:if>
	                    		</div>
                    		</q:forEach> 
                    	</q:otherwise>
                    </q:choose>
                </div>
                
                <div class="my_ans" style="margin-bottom: 60px;">
                    <div class="title_sub2">
                        <a>댓글 기록</a>
                    </div>
                    <q:choose>
                    	<q:when test="${empty com_ans}">
                    		<div class="list_top con1">
                    			<div class="dotdotdot"><a>글이 없습니다.</a></div>
                    		</div>	
                    	</q:when>
                    	<q:otherwise>
                    		<q:forEach items="${com_ans}" end="4" var="t">
	                    		<div class="list_top con1">
	                        		<div class="dotdotdot"><a href="com.do?no=${t.no}">${t.content}</a></div>
	                        		<!--<button class="delete" style="" onclick="삭제가되어야겠지...">삭제</button> -->
	                    		</div>
                    		</q:forEach> 
                    	</q:otherwise>
                    </q:choose>
                </div>
            </div>
        </div>
    </div>
</body>
</html>