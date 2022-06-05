<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
@import url(./resources/css/style.css);
@import url(./resources/jquery/progressbar.css);
</style>
</head>

<body>
	
<div class="author_table_wrap">
             	
             	
             	
             	<ul>
             		<c:forEach items="${list}" var="list">
<<<<<<< HEAD
             		
=======
             		<a href="/todolist/popUp?idx=${list.idx }">
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
         		<li class="list-box" style="margin-bottom:10px">
         		
         		<div>
         		
         		<c:out value="${list.detail}"></c:out><br/>
         		 
<c:out value="${fn:substring(list.regiDate,0,10)}"></c:out>-<c:out value="${fn:substring(list.complDate,0,10)}"></c:out>
         		

         
					
         		</div>
         		<div class="chall-percent">
         		
         		</div>
         		<div class="wrap-progress-bar">
         	<div class="progress-gage"></div>
         		</div>
         		<!--  	
<<<<<<< HEAD

         			<td><value="${list.regiDate}"/></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
=======
<<<<<<< HEAD
         		
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
         			<td><c:out value="${list.challStatus}"></c:out> </td>
         			<td><c:out value="${list.failStatus}"></c:out> </td>
         			<td><a href="/todolist/listUpdate?idx=${list.idx }">수정</a></td>
         			<td><a href="/todolist/success?idx=${list.idx }">성공</a></td>
         			<td><a href="/todolist/giveup?idx=${list.idx }">삭제</a></td>
         		-->
<<<<<<< HEAD
         	
         		</li>
         		
=======
         		</li></a>
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
         		</c:forEach>
      	       </ul>       			
         </div>                    

<script type="module">
import { conversionDateFormat,  calcBetweenDay, completeCount } from '/resources/js/module.js';

var list = new Array();
<c:forEach items="${list}" var="list">

var today = new Date();
var stDate = conversionDateFormat('${list.regiDate}'); 
var enDate = conversionDateFormat('${list.complDate}');

var perriodDay = Math.floor(calcBetweenDay(stDate, enDate) + 1 ); // 전체기간
var perriodDay2  = Math.floor(calcBetweenDay(stDate, today) + 1 ); // 시작날 ~ 현재날 사이의 일수

var result = ( perriodDay2 / perriodDay ) * 100;

list.push(Math.floor(result));

</c:forEach>

	
  const challPer = document.querySelectorAll(".chall-percent");
  challPer.forEach(function(ele, idx){
		if(list[idx] == 100) {
		 ele.innerHTML="완료";
       }
	else {
	  ele.innerHTML=list[idx]+"%";
		}
	 const progrees =  ele.nextSibling.nextElementSibling.children[0];
	 progrees.style.width=list[idx]+"%"; 

  })
 	
	const setCompleteList = new completeCount();	
	const getCompleteList = setCompleteList.completeChecker(list);
	
	if(getCompleteList) {
	
	}
</script>


</body>
</html>