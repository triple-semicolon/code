<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
</head>
<body>
	<q:if test="${ecode eq \"join_success\"}">회원가입이 완료되었습니다. 다시 로그인 해주세요</q:if>
	<q:if test="${ecode eq \"id_invalid\"}">아이디를 입력해주세요</q:if>
	<q:if test="${ecode eq \"pwd_invalid\"}">비밀번호를 입력해주세요</q:if>
	<q:if test="${ecode eq \"need_login\"}">로그인이 필요합니다</q:if>
	<form method="POST" action="login_add.do">
		<input type="text" name="id"/>
		<input type="password" name="pwd"/>
		<input type="submit"/>
	</form>
	<a href="join.do">회원가입</a>
	
	<q:if test="${ecode eq \"login_fail\"}">
		<span>해당 아이디나 비밀번호가 없습니다</span>
	</q:if>
</body>
</html>