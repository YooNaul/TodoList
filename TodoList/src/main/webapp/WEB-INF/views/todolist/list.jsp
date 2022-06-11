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
             		<c:forEach items="${list}" var="list">
         	<ul>
         			<li class="list-box" ><c:out value="${list.detail}"></c:out><span class="mod_btn"><i class="fi fi-rr-menu-dots"></i></span></li>
         		
         	
         		<div class="mod_box">
         				<li> <a href="/todolist/success?idx=${list.idx }">완료</a></li>
         				<li> <a href="/todolist/giveup?idx=${list.idx }">삭제</a></li>
         				<li> <a  class="close_mod">취소</a></li>
         		</div>		
			
         			
         				

         		</ul>
         		</c:forEach>
         		 
                     			
         </div>                    
<script>

$(".mod_btn").click(function(){
	$ModBox = $(".mod_box");
	$currentModBox = $(this).parent().siblings(".mod_box");
	$ModBox.removeClass("on");
	$currentModBox.addClass("on");
});

$(".close_mod").click(function(){
	$(".mod_box").removeClass("on");
});
</script>
</body>
</html>