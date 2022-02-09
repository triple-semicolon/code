<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script>
<q:choose>
	<q:when test="${ecode eq \"login_fail\"}">
		alert("해당 아이디나 비밀번호가 없습니다");
	</q:when>
	<q:when test="${ecode eq \"join_success\"}">
		alert("회원가입이 완료되었습니다. 다시 로그인 해주세요");
	</q:when>
	<q:when test="${ecode eq \"need_login\"}">
		alert("로그인이 필요합니다");
	</q:when>
</q:choose>

function Checkform() { 
	if( frm.username.value == "" ) {
		frm.username.focus();
		alert("아이디를 입력해주세요.");
		return false;
	} 
	
	if( frm.password.value == "" ) {
		frm.password.focus();
		alert("비밀번호를 입력해주세요.");
		return false;
	}
}
</script>
</head>
<body>
	<form method="POST" action="login_add.do" name="frm" onSubmit="return Checkform()">
		<input type="text" name="username"/>
		<input type="password" name="password"/>
		<input type="submit"/>
	</form>
	<a href="join.do">회원가입</a>

</body>
</html>