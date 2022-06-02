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

<div class="author_table_wrap">
             		<c:forEach items="${list}" var="list">
         	<ul>
         			<li style="padding:10px; margin-bottom:5px; background:lightgray"><c:out value="${list.detail}"></c:out></li>
         		
         		<!--  <td><fmt:formatDate value="${list.regiDate}" pattern="yyyy-MM-dd HH:MM:ss"/></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
         			<td><c:out value="${list.challStatus}"></c:out> </td>
         			<td><c:out value="${list.failStatus}"></c:out> </td>
         		
         			<td><a href="/todolist/listUpdate?idx=${list.idx }">수정</a></td>
         		-->	
         				<a href="/todolist/success?idx=${list.idx }">성공</a>
         				<a href="/todolist/giveup?idx=${list.idx }">삭제</a>			
         		</ul>
         		</c:forEach>
         		 
                     			
         </div>                    
<script>
/*
let arr = new Array();
<c:forEach items="${list}" var ="list">
	arr.push("${list.idx}");
</c:forEach>

for(var value of arr) {
	console.log(value);
}
*/

</script>
</body>
</html>