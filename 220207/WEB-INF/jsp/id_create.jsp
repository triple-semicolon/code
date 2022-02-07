<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

</head>
<body>
	<span>회원가입</span><br/>
	<q:if test="${ecode eq \"id_invalid\"}">아이디를 입력해주세요</q:if>
	<q:if test="${ecode eq \"pwd_invalid\"}">비밀번호를 입력해주세요</q:if>
	<form method="POST" action="join_add.do">
		<input type="text" name="username"/>
		<q:if test="${ecode eq \"join_fail\"}">중복된 아이디입니다</q:if>
		<br/>
		<input type="password" name="password"/>
		<input type="submit" value="join"/>
	</form>
</body>
</html>