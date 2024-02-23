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
	
	<!-- 현재 로그인 바로하면 세션에서 정보를 못받아오는 문제가 있음. -->
	메인화면입니다.
	<nav>
		<c:if test="${empty user}">
			<a href="login">로그인</a>
			<a href="join">회원가입</a>
		</c:if>
		<c:if test="${!empty user}">
			<a href="record">녹음</a>
			<a href="upload">업로드</a>
			<a href="mypage">마이페이지</a>
			<b>${user.memEmail}</b>
			<a href="#">로그아웃</a>
		</c:if>
	</nav>
			
		
	
	
	
	
	<script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="assets/js/main.js"></script>
</body>
</html>