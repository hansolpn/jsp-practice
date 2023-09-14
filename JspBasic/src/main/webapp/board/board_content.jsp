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

	<h2>${ boardNo }번 게시물 내용</h2>
	<p>
		# 작성자: ${ boardContent.writer } <br>
		# 날짜: <fmt:parseDate value="${ boardContent.regDate }" pattern="yyyy-MM-dd'T'HH:mm:ss" var="parsedDateTime" type="both" /><fmt:formatDate value="${ parsedDateTime }" pattern="yyyy년 MM월 dd일 HH:mm:ss"/> <br>
		# 제목: ${ boardContent.title } <br>
		# 내용: <textarea rows="5" readonly>${ boardContent.content }</textarea> <br>
	</p>
	
	<a href="/JspBasic/list.board">글 목록 보기</a>
	<a href="/JspBasic/modify.board?bId=${ boardNo }">글 수정하기</a>

	<%--
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
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${ boardContent.content }</td>
		</tr>
	</table>
	<a href="/JspBasic/list.board">게시판 리스트로</a>
	--%>
</body>
</html>