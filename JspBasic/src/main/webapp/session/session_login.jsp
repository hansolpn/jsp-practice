<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- if (session.getAttribute("user_id") == null) { --%>
	<c:choose>
		<c:when test="${ user_id == null }">
		<form action="/JspBasic/session/login" method="post">
			<input type="text" name="id" size="10" placeholder="ID">
			<input type="password" name="pw" size="10" placeholder="PW">
			<input type="submit" value="로그인">
		</form>
		</c:when>
		<c:otherwise>
		${ user_id }님이 현재 로그인 중입니다~<br>
	    <a href="session_welcome.jsp">웰컴 페이지로</a>
		</c:otherwise>
	
	</c:choose>
	
	<%-- }
	   else {
	   <%= session.getAttribute("user_id") %>님이 현재 로그인 중입니다~<br>
	   <a href="session_welcome.jsp">웰컴 페이지로</a>
	} --%>
</body>
</html>