<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="okedit" method="post">
		<li>아이디 : <b name = "memId">${user.memId }</b>
			<input type="hidden" name="memId" value="${user.memId}">
		</li>
		
		<li>비밀번호<input name = "memPw" type="text"></li>
		
		<li>닉네임<input name = "memNick" type="text"></li>
		
		<li>이메일<input name = "memEmail" type="text"></li>
		
		<li>생년월일<b id = "memBirthdate">${user.memBirthdate}</b>
			<input type="hidden" name="memBirthdate" value="${user.memBirthdate}">
		</li>
		
		<li>성별<b name = "memGender">${user.memGender}</b>
			<input type="hidden" name="memGender" value="${user.memGender}">
		</li>
		<input type="submit">
	</form>



</body>
 <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>








</script>

</html>