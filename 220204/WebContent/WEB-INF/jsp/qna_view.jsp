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
	<div class="jumbotron title">질문과 답변</div>
	<form method="GET" action="home.do">
		<button>home</button>
	</form>
	<div>${list.username}<span class="font_sm">${list.time}</span></div>
	<div>
		<div>${list.title}</div>
		<q:if test="${!(empty list.fsn)&&!(empty list.ofn)}">
			&nbsp;<a href="down.do?fsn=${list.fsn}&ofn=${list.ofn}">
			<img src="down.svg"/></a>
		</q:if>
		<div>${list.content}</div>
	</div>
	<div>
		<div>
			<form method="POST" action="recom.do?no=${list.no}">
				<button>추천</button>
			</form>
			${list.recommend}
		</div>
		<div>
			<span class="font_sm">조회수</span>
			${list.view}
		</div>
	</div>
	
	<!-- Answer_show -->
	<table class="table table-borered table-striped">
        <q:forEach items="${ans_list}" var="t">
            <tr>
                <td>
                   	<span class="font_table">${t.content}</span>
                </td>
                <td style="text-align:center;"><span class="font_sm">(${t.username} / ${t.time})</span></td>
                <td class="font_table">[<a href="del_ans.do?ans_no=${t.ans_no}&no=${list.no}">X</a>]</td>
                <td>
            </tr>
        </q:forEach>
    </table>
	<!-- Answer_add -->
	<form method="POST" action="add_ans.do?no=${list.no}">
        
        <div class="form-group has-success">
            <label class="font" for="bcd">작성자</label>
            <input type="text" class="form-control font" id="bcd" name="username"/>
        </div>
        
        <div class="form-group has-success">
            <label class="font" for="abcd">내용</label>
            <textarea class="form-control font" id="abcd" name="content" rows="5"></textarea>
        </div>
		        
        <div class="form-group has-success">
            <input class="form-control" type="submit"/>
        </div>
    </form>
</div>
</body>
</html>