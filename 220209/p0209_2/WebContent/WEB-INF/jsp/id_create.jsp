<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script>
<q:if test="${ecode eq \"join_fail\"}">
	alert("중복된 아이디입니다");
</q:if>

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
	<span>회원가입</span><br/>
	<form method="POST" action="join_add.do" name="frm" onSubmit="return Checkform()">
		<input type="text" name="username"/>
		<input type="password" name="password"/>
		<input type="submit" value="join"/>
	</form>
</body>
</html>