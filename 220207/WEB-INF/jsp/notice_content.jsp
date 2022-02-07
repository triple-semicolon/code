<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Q&A</title>
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
	<!-- Question -->
	<div class="jumbotron title">공지사항</div>
	<form method="GET" action="notice.do">
		<button>목록</button>
	</form>
	<div>운영자<span class="font_sm">${list.time}</span></div>
	<div>
		<div>${list.title}</div>
		<div>${list.content}</div>
	</div>
</div>
</body>
</html>