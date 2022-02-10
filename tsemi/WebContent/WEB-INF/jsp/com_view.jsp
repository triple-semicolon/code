<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>;;; - 잡담</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: bold;
    font-size: 20px;
    margin-left: 25px; 
    margin-right: 25px;
}

.qna_list {
    margin-top: 35px;
    margin-left: 25px;
    margin-right: 25px;
    border-radius: 8px;
    height: auto;
    border: 4px solid #FFDD3D;
    padding: 30px 25px 30px 25px;
    font-family: 'Noto Sans KR', sans-serif;
}

.qna_back {
    margin: 25px 25px 50px 25px;
    width: 94%;
    font-family: 'Noto Sans KR', sans-serif;
}

.qna_ans {
    margin-top: 60px;
    margin-left: 25px;
    margin-right: 25px;
    border: 3.5px solid #00CC00;
    border-radius: 8px;
    height: auto;
    padding: 30px 25px 30px 25px;
    font-family: 'Noto Sans KR', sans-serif;
}

.qna_ans_main {
    margin-top: 60px;
    margin-left: 25px;
    margin-right: 25px;
    border: 3.5px solid #00CC00;
    font-family: 'Noto Sans KR', sans-serif;
    border-radius: 8px;
    height: auto;
    /* padding: 30px 25px 30px 25px; */
}

.qna_ans_user {
    padding: 5px 15px 15px 15px;
    height: auto;
}


a {
    text-decoration: none;
    color: green;
}

.ans_button {
    border-radius: 5px;
    position: relative;
    font-family: 'Noto Sans KR', sans-serif;
    text-transform: uppercase;
    outline: 0;
    background: #00CC00;
    float: right;
    right: 28px; 
    top: auto;
    bottom: auto;
    border: 0;
    padding: 10px 40px 10px 40px;
    color: #FFFFFF;
    font-size: 14px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}

.ans_button:hover,.ans_button:active,.ans_button:focus {
    background: #43A047;
}

.textarea_out {
    margin-left: 25px;
    margin-right: 25px;
    margin-top: 120px;
    border-radius: 8px;
    background: #FDFFF2;
    border: 2px solid #00CC00; 
}

.textarea {
    width: 95%;
    margin: 5px;
    background: #FDFFF2;
    border: none;
    font-size: 15px;
    resize: none;
    font-family: 'Noto Sans KR', sans-serif;
}

.textarea:active, .textarea:focus{
    outline: none;
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

.photo {
    border: 1px solid #FFDD3D;
    border-radius: 50%;
    height: 50px;
    width: 50px;
}

.user {
    margin-top: 15px;
    margin-left: 10px;
    font-family: 'Noto Sans KR', sans-serif;
    
}

.title_time {
    font-size: 13px;
    margin-left: 25px;
    margin-top: 10px;
    color: gray;
}

.textarea::-webkit-scrollbar {
    background-color: #FDFFF2;
}


.textarea::-webkit-scrollbar-thumb {
    background-color: #00CC00;
    border-radius: 10px;
    background-clip: padding-box;
    border: 5px solid transparent;
}

.textarea::-webkit-scrollbar-track {
    background-color: #FDFFF2;
}

.title_time {
    font-size: 13px;
    margin-left: 25px;
    margin-top: 10px;
    color: gray;
}

/* 삭제 css */
.delete {
    margin-left: 25px;
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

.wow_ans {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 14px;
    margin-left: 25px;
    margin-top: auto;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 2px solid #00CC00;
    background: none;
    padding: 2px 20px 2px 20px;
    cursor: pointer;
    color: green;
    font-weight: bold;
}

.wow_ans:hover,.wow_ans:active,.wow_ans:focus {
    background: #43A047;
    color: #FFFFFF;
}

</style>
<script src="https://ajax.googleapis.com/aja/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<script>
function Checkform() { 
	if(document.getElementById("abcd").value == ""){
		alert("내용을 입력해주세요");
		document.getElementById("abcd").focus();
	return false;
	}
}
</script>
<body>
	<header class="headers">
        <a style="color: #0D5718; margin-left: 10px;" href="home.do">;;;</a>
        <button style="color: #0D5718;" class="logout" onclick="location.href='login.do';">로그아웃</button>
    </header>
    <div class="wrapper">
        <div class="menu" style="height: auto;">
            <!-- <div class="menu_font">Triple<br/>semicolon</div>  -->
            <div class="menu_font"></div>
            <div style="position:sticky; top:50px;">
                <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="location.href='mypage.do';">마이페이지</div>
            
	            <div class="top_menu menu_font" style="cursor: pointer;" onclick="location.href='notice.do';">공지사항</div>
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='qna_list.do';">Q & A</div>
	            
	            <div style="background-color: green;">
	                <div class="point_menu" style="cursor: pointer;" onclick="location.href='com_list.do';">잡담</div>
	            </div>
	            
	            <div class="middle_menu menu_font" style="cursor: pointer;" onclick="location.href='month_act.do';">이달의 활동왕</div>
	            <div class="bottom_menu menu_font" style="cursor: pointer;" onclick="window.open('https://github.com/');">Go to Github</div>
            </div>
        </div>
        <div class="content" style="height: auto;">
        	<q:if test="${list.username eq username || operator eq \"Y\"}">
	        	<button class="delete" onclick="location.href='delCom.do?no=${list.no}';">삭제</button>
	        </q:if>
            
            <div>
                <h4 class="con_menu_font" style="margin-bottom: 5px;">${list.title}</h4>
                <div style="display: flex;">
                    <div class="title_time" style="font-size: 13px; font-weight: bold;">
                    	<a href="mypage.do?username=${list.username}" style="color:grey">${list.username}</a>
                    </div>
                    <div class="title_time" style="font-size: 12px; margin-left: 5px; margin-top:auto; color: gray;">${list.time}</div>
                    <!-- 조회수 -->
                    <div style="display: flex;">
                        <div class="title_time" style="font-size: 12px; margin-left: 10px; margin-top:auto; color: gray;">
                            조회수 ${list.view }
                        </div>
                    </div>
                </div>        
            </div>
            
            <div class="qna_list">
                ${list.content}
            </div>
            
            <form method="POST" action="addCom_ans.do?no=${list.no}" onSubmit="return Checkform()">
        		<div>
            		<input type="hidden" name="username" value="${username}"/>
        		</div>
        
        		<div class="textarea_out" style="padding: 10px;">
            		<textarea class="textarea" id="abcd" name="content" rows="7"></textarea>
       			</div>
		        
        		<div>
            		<input class="ans_button" value="답변 남기기" type="submit"/>
        		</div>
    		</form>
            
			<q:forEach items="${ans_list}" var="t">
            	<div class="qna_ans_main">
                	<div>
            			<div style="display: flex;">
		                	<div class="qna_ans_user" style="display: flex;">
		                    	<img src="images/ts.png" class="photo">
		                    	<div class="user" style="font-size: 18px; font-weight: bold;">
		                    		<a href="mypage.do?username=${t.username}" style="color: black">${t.username}</a>
		                    	</div>
		                    	<div class="user" style="font-size: 12px; margin-top: 20px; color: gray;">${t.time}</div>
								
		                	</div>
		                	<q:if test="${t.username eq username || operator eq \"Y\"}">
	                    		<button class="delete" style="margin-left: auto; margin-bottom: 25px; margin-right: 20px;" onclick="location.href='delCom_ans.do?ans_no=${t.ans_no}&no=${list.no}';">삭제</button>
	                    	</q:if>
	                	</div>
	                
	                	<div style="padding: 15px 25px 30px 25px;">
	                    	${t.content }
	                	</div>
	                	
	                	<!-- 댓글 추천 버튼  -->
                        <button class="wow_ans" onclick="location.href='recomCom_A.do?ans_no=${t.ans_no}&no=${list.no}';">좋은답변이네요! ${t.recommend }</button>
                	</div>
            	</div>
			</q:forEach>
            <div class="qna_back"  style="text-align: center;">
                <a href="com_list.do">목록으로 돌아가기</a>
            </div>
        </div>
    </div>
</body>
</html>