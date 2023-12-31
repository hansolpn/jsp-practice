<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%-- 
    <%
    	/*
    	 - 내장 객체 session에서 데이터를 가져오는 메서는 getAttribute() 입니다.
    	  메개값으로 가져올 세션 데이터의 이름을 적습니다.
    	  해당 데이터가 존재하지 않는다면 null이 리턴됩니다.
    	  
    	 - 세션에 저장된 데이터는 브라우저 창이 종료될 때까지, 혹은
    	  세션의 유효시간이 만료되기 전까지 웹어플리케이션의 모든 jsp파일에서 사용이 가능합니다.
    	  셰션의 기본 유효시간은 30분입니다.
    	*/
    	String id = (String)session.getAttribute("user_id");

    	if (id == null) {
    		response.sendRedirect("session_login.jsp");
    	}
    	else {
    %>
    --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:if test="${ user_id == null }">
		<script type="text/javascript">
			alert("로그인 하지 않은 유저는 접근할 수 없습니다.");
			location.href='session_login.jsp';
		</script>
	</c:if>
	<h2>${ user_id }님 환영합니다.</h2>
	<a href="/JspBasic/session/login">로그아웃하기</a>
</body>
</html>
<%-- } --%>