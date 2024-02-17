<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form action="joinok" method="post">
		<li>아이디<input name = "memId" type="text"></li>
		<li>비밀번호<input name = "memPw" type="text"></li>
		<li>닉네임<input name = "memNick" type="text"></li>
		<li>이메일<input name = "memEmail" type="text"></li>
		<li>생년월일<input name = "memBirthdate" type="date"></li>
		<li>성별<input name = "memGender" type="radio" value="남성">남성
			   <input name = "memGender" type="radio" value="여성">여성</li>
		<input type="submit">
	</form>
	
	
</body>
</html>