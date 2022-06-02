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
         		
         		<!--  <td><fmt:formatDate value="${list.regiDate}" pattern="yyyy-MM-dd HH:MM:ss"/></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
         			<td><c:out value="${list.challStatus}"></c:out> </td>
         			<td><c:out value="${list.failStatus}"></c:out> </td>
         		
         			<td><a href="/todolist/listUpdate?idx=${list.idx }">수정</a></td>
         		-->	
         	
         		<div class="mod_box">
         				<li> <a href="/todolist/success?idx=${list.idx }">성공</a></li>
         				<li> <a href="/todolist/giveup?idx=${list.idx }">삭제</a></li>
         				<li> <a  class="close_mod">취소</a></li>
         		</div>		
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

var modBtn =  document.querySelectorAll(".mod_btn");
var modBoxs =  document.querySelectorAll(".mod_box");

/* 수정아이콘 클릭 성공,삭제,취소 모달창 */
modBtn.forEach(function(ele, idx){
	ele.addEventListener("click", function(){
		modBoxs.forEach(function(ele){
			ele.classList.remove("on");
		})	
		var parentLi = this.parentNode.parentNode;
		var modBox = parentLi.childNodes[5];
		modBox.classList.add("on");
		
		var clsBtn = modBox.childNodes[5];
		clsBtn.addEventListener("click", function(){
		this.parentNode.classList.remove("on");
		})
		
	});
});




</script>
</body>
</html>