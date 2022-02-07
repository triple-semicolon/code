<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%><%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>;;; - 이달의 활동왕</title>
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
	<form method="GET" action="home.do">
    	<button>home</button>
    </form>
	<h3>이달의 활동왕</h3>
	<br/>
	<div>
		<div style="width:500px;">
		<h4>이달의 답변왕</h4>
		<table class="table table-borered table-striped">
        	<q:forEach items="${ans_ls}" var="t">
            	<tr>
                	<td><span class="font_table">${t.username}</span></td>
                	<td><span class="font_table">추천수 ${t.recommend}</span></td>
         	   </tr>
        	</q:forEach>
    	</table>
    	</div>
		<div style="width:500px;">
		<h4>이달의 질문</h4>
		<table class="table table-borered table-striped">
           	<tr>
                <td><span class="font_table">${list.content}</span></td>
                <td><span class="font_table">${list.username}</span></td>
                <td><span class="font_table">추천수 ${list.recommend}</span></td>
         	</tr>
    	</table>
    	</div>
	</div>
</body>
</html>