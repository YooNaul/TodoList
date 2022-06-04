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
<style>
@import url(./resources/css/style.css);
</style>
<div class="author_table_wrap">
             	
             	
             	
             	<ul>
             		<c:forEach items="${list}" var="list">
         		<li class="list-box" style="margin-bottom:10px">
         		<div>
         		
         		<c:out value="${list.detail}"></c:out><br/>
         		<fmt:formatDate value="${list.regiDate}" pattern="yyyy.MM.dd"/>-<c:out value="${list.complDate}"></c:out>
         		</div>
         		<div class="chall-percent">
         		
         		</div>
         		<div>
         		게이지바 들어갈곳~
         		</div>
         		<!--  	
         			<td><fmt:formatDate value="${list.regiDate}" pattern="yyyy-MM-dd HH:MM:ss"/></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
         			<td><c:out value="${list.challStatus}"></c:out> </td>
         			<td><c:out value="${list.failStatus}"></c:out> </td>
         			<td><a href="/todolist/listUpdate?idx=${list.idx }">수정</a></td>
         			<td><a href="/todolist/success?idx=${list.idx }">성공</a></td>
         			<td><a href="/todolist/giveup?idx=${list.idx }">삭제</a></td>
         		-->
         		</li>
         		</c:forEach>
      	       </ul>       			
         </div>                    
<script>
 	class conversionDate {
 		constructor(Date) {
 			this.Date = Date;
 		}
 		getDate : function(Date) {
 			return Date;
 		}
 	}
 	var a1 = new conversionDate();
 	
 	console.log(a1.getDate("2022")); 
</script>
</body>
</html>