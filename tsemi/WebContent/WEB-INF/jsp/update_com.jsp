<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>;;; - 글쓰기</title>
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


.textarea_out {
    margin-left: 25px;
    margin-right: 25px;
    margin-top: 40px;
    border-radius: 8px;
    background: #FDFFF2;
    border: 5px solid #FFDD3D; 
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

.gong_back {
    margin: 25px 25px 50px 25px;
    width: 94%;
}

.textarea:active, .textarea:focus{
    outline: none;
}

.textarea::-webkit-scrollbar {
    background-color: #FDFFF2;
}


.textarea::-webkit-scrollbar-thumb {
    background-color: #FFDD3D;
    border-radius: 10px;
    background-clip: padding-box;
    border: 5px solid transparent;
}

.textarea::-webkit-scrollbar-track {
    background-color: #FDFFF2;
}

.q_button {
    border-radius: 5px;
    position: relative;
    font-family: 'Noto Sans KR', sans-serif;
    text-transform: uppercase;
    top: 20px;
    outline: 0;
    background: #FFDD3D;
    border: 0;
    padding: 10px;
    color: green;
    font-size: 14px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}

.q_button:hover,.q_button:active,.q_button:focus {
  background: #FFF53E;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<script>
function Checkform() { 
	if(document.getElementById("bcde").value == ""){
		alert("제목을 입력해주세요");
		document.getElementById("bcde").focus();
		return false;
	}
	
	if(document.getElementById("abcd").value == ""){
		alert("내용을 입력해주세요");
		document.getElementById("abcd").focus();
		return false;
	}
}
</script>
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
        
        <div class="content">
        	<form method="POST" action="add_com.do" onSubmit="return Checkform()">
        		<div class="con1">
               	 	<div>
                 	   <h4 class="con_menu_font" style="margin-bottom: 5px;">잡담하기</h4>
                	</div>
                	<div style="margin-left: auto; margin-right: 40px;">
                		<input class="q_button" style="cursor: pointer;" value="글 올리기" type="submit"/>
                	</div>
            	</div>
        		<div>
                	<div class="textarea_out" style="padding: 15px;">
            			<textarea class="textarea" id="abcd" name="title" rows=1></textarea>
        			</div>
        			<div>
            			<input type="hidden" name="username" value="${username}"/>
       				 </div>
        			<div class="textarea_out" style="padding: 15px; margin-top:20px;">
            			<textarea class="textarea" style="height: 620px;" id="abcd" name="content"></textarea>
        			</div>
            	</div>
    		</form>
        </div>
    </div>
</body>
</html>