<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
	<h2>ㅎㅇ<c:forEach items="${list}" var="list">
             		
         		<li class="list-box" style="margin-bottom:10px" data-listIdx = "${list.idx}">
         	
         		
         		<c:out value="${list.detail}"></c:out><br/>
         		 
			<c:out value="${fn:substring(list.regiDate,0,10)}"></c:out>-<c:out value="${fn:substring(list.complDate,0,10)}"></c:out>
         	</c:forEach></h2>
	
         </div>
</body>
</html>