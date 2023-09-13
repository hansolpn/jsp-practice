<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<td>작성자</td>
			<td>${ boardContent.writer }</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${ boardContent.title }</td>
		</tr>
		<tr>
			<td>날짜</td>
			<td>
			<fmt:parseDate value="${ boardContent.regDate }" pattern="yyyy-MM-dd'T'HH:mm:ss" var="parsedDateTime" type="both" />
			<fmt:formatDate value="${ parsedDateTime }" pattern="yyyy년 MM월 dd일 HH:mm:ss"/>
		</tr>
		<tr>
			<td>내용</td>
			<td>${ boardContent.content }</td>
		</tr>
	</table>
	<a href="/JspBasic/list.board">게시판 리스트로</a>
</body>
</html>