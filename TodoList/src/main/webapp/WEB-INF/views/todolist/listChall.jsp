<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>니 할일 (챌린지 할일)</h2>
	<h2><a href="/todolist/listInsert">니 할일 등록</a> </h2>
<div class="author_table_wrap">
             	<table class="author_table">
             		<thead>
             			<tr>
             				<td class="th_column_1">내용</td>
             				<td class="th_column_2">등록 날짜</td>
             				<td class="th_column_3">목표 날짜</td>
             				<td class="th_column_4">챌린지도전여부</td>
             				<td class="th_column_4">진행중성공실패(0.진1.성.1실)</td>
             			</tr>
             			
             		</thead>
             		<c:forEach items="${list}" var="list">
         		<tr>
         			<td><c:out value="${list.detail}"></c:out> </td>
         			<td><fmt:formatDate value="${list.regiDate}" pattern="yyyy-MM-dd HH:MM:ss"/></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
         			<td><c:out value="${list.challStatus}"></c:out> </td>
         			<td><c:out value="${list.failStatus}"></c:out> </td>
         			<td><a href="/todolist/success?idx=${list.idx }">성공</a></td>
         			<td><a href="/todolist/update?idx=${list.idx }">수정</a></td>
         			<td><a href="/todolist/giveup?idx=${list.idx }">삭제</a></td>
         		</tr>
         		</c:forEach>
      	</table>                			
         </div>                    

</body>
</html>