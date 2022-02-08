<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>잡담</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body{
    background-color:#d8d89c;
}
.font{
    font-family:'Nanum Gothic';
    font-size: 16px;
    color:#808000;
}
.font_sm {
    font-family:'Nanum Gothic';
    font-size: 12px;
}
.title{
    font-family:'Nanum Gothic';
    height:75px;
    line-height:0px;
    font-size: 35px;
    text-align:center;
    background-color:#e5eed3;
    color:#808000;
}
.table{
    background-color:#e5eed3;
}
@media (max-width:767px) {
	.font{font-size:20px;}
	.font_table{font-size:12px;}
}
/* sm */
@media (min-width:768px) {
	.font{font-size:18px;}
	.font_table{font-size:14px;}
}
/* md */
@media (min-width:992px) {
	.font{font-size:18px;}
	.font_table{font-size:16px;}
}
/* lg */
@media (min-width:1200px) {
	.font{font-size:16px;}
	.font_table{font-size:16px;}
}
</style>
<script src="https://ajax.googleapis.com/aja/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="jumbotron title">잡담</div>
    <form method="GET" action="home.do">
    	<button>home</button>
    </form>
    <form method="GET" action="update_com.do">
    	<button>새 글쓰기</button>
    </form>
    <table class="table table-borered table-striped">
        <thead>
            <tr>
                <td class="font_table" style="width:12%; font-weight:bold;">번호</td>
                <td class="font_table" style="width:65%; font-weight:bold;">제목</td>
                <td class="font_table" style="width:12%; font-weight:bold; text-align:center;">작성자</td>
                <td class="font_table" style="font-weight:bold;">삭제</td>
            </tr>
        </thead>
        <q:forEach items="${list}" var="t">
            <tr>
            	<td class="font_table">${t.no}</td>
                <td>
                    <a href="com.do?no=${t.no}"><span class="font_table">${t.title}</span></a>
                </td>
                <td style="text-align:center;"><span class="font_sm">(${t.username})</span></td>
                <td class="font_table">[<a href="delCom.do?no=${t.no}">X</a>]</td>
            </tr>
        </q:forEach>
    </table>
    <div><a href="login.do">로그아웃</a></div><br/>
</div>
</body>
</html>