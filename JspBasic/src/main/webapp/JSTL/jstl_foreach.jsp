<%@page import="java.util.Arrays"%>
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

	<%-- 
	<%
		int total = 0;
		for (int i = 1; i <= 100; i++) {
			total += i;
		}
	%>
	<h3>1부터 100까지의 누적합: <%= total %></h3>
	--%>
	
	<c:set var="total" value="0" />
	
	<%--
        <c:set> 태그는 변수의 생성과 동시에, 이미 동일한 이름의 데이터가 존재한다면
        기존의 데이터를 지목해서 값을 변경할 때도 사용합니다.
        마치 setAttribute()에서 이미 존재하는 이름을 지목하여 값을 변경하는 것처럼.
     --%>
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="total" value="${ total + i }" />
	</c:forEach>
	
	<h3>1부터 100까지의 누적합: ${ total }</h3>
	
	<hr>
	
	<h4>구구단 4단</h4>
	<%--
	 <% for (int hang = 1; hang <= 9; hang++) { %>
	 	4 x <%= hang %> = <%= 4 * hang %> <br>
	 <% } %>
	 --%>
	<c:forEach var="hang" begin="1" end="9"> <%-- step을 생략시 자동으로 1로 처리함 --%>
		4 x ${ hang } = ${ 4 * hang }<br>
	</c:forEach>
	
	<%-- 구구단을 2~9단까지 출력하는데, 짝수단만 출력해 주세요 --%>
	
	<hr><br>
	
	<c:forEach var="dan" begin="2" end="9">
		<c:if test="${ dan % 2 == 0 }">
			<h3>${ dan }단</h3>
			<c:forEach var="hang" begin="1" end="9">
				${ dan } x ${ hang } = ${ dan * hang }<br>
			</c:forEach>
		<hr>
		</c:if>
	</c:forEach>
	
	<hr>
	
	<c:set var="arr" value="<%= new int[] {1, 3, 5, 7, 9} %>" />
	
	<h2>배열이나 컬랙션 내부의 값을 출력</h2>
	<c:forEach var="n" items="${ arr }">
		${ n } &nbsp;
	</c:forEach>
	
	<br>
	<c:set var="nameList" value='<%= Arrays.asList("홍길동", "김철수", "박영희", "김메롱") %>' />
	
	<c:forEach var="name" items="${ nameList }">
		${ name } <br>
	</c:forEach>
</body>
</html>