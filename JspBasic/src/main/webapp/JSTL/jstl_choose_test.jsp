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
        jstl choose 태그와 el을 활용하여
        100점이 넘어가면 "점수를 잘못 입력하셨습니다."
        90점이 넘으면 조건을 한번 더 검사해서,
        95 ~ 100은 A+, 94 ~ 90은 A0,
        80점이 넘으면 B, 70점이 넘으면 C, 60점대는 D
        나머지는 모두 F처리하시면 됩니다.
    --%>
    <c:set var="score" value="${ param.point }" />
    
    <c:if test="${ score <= 100 }">
    <h2>점수: ${ score }점</h2>
    </c:if>
    
    <c:choose>
    	<c:when test="${ score > 100 }">
    		<h1 style="color: red;">점수를 잘못 입력하셨습니다.</h1>
    	</c:when>
    	<c:when test="${ score >= 90 }">
    		<c:choose>
    			<c:when test="${ score >= 95 }">
    				<h3>학점: A+</h3>
    			</c:when>
    			<c:otherwise>
    				<h3>학점: A0</h3>
    			</c:otherwise>
    		</c:choose>
    	</c:when>
    	<c:when test="${ score >= 80 }">
    		<h3>학점: B</h3>
    	</c:when>
    	<c:when test="${ score >= 70 }">
    		<h3>학점: C</h3>
    	</c:when>
    	<c:when test="${ score >= 60 }">
    		<h3>학점: D</h3>
    	</c:when>
    	<c:otherwise>
    		<h3>학점: F</h3>
    	</c:otherwise>
    </c:choose>

</body>
</html>