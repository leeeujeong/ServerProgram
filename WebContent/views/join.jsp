<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.wrap{
		margin: 0 auto;
	}
</style>
<body>

<div class="wrap">
	<form action="views/loginpage.jsp" method="post">
			<h3>회원 가입 폼</h3>
			<div>
				<label for="id">아이디</label>
				<input type="text" name="id" id="id">
			</div>
			<div>
				<label for="name">이름</label>
				<input type="text" name="name" id="name">
				<input type="hidden" id="no" value="">
				<input type="hidden" id="point" value="1000">
				<input type="hidden" id="grade" value="bronze">
			</div>
			<div>
				<button> 회원가입 </button>
				<input type="button" value="돌아가기" onclick="location.href='views/login.jsp'">
			</div>
	</form>
</div>
</body>
</html>