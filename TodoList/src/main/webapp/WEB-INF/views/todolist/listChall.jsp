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
<style type="text/css">
</head>
<style>
@import url(./resources/css/style.css);
@import url(/resources/css/jquery/progressbar.css);


@import url(/resources/css/jquery/progressbar.css);


</style>
<style>
.wrap-progress-bar {
position:relative;
	width:100%;
	
	height:25px;
	background:#EEEEEE;
	border-radius:20px;
	overflow:hidden;
}

.progress-gage {
	height:100%;
	background:#5B89FF;
	border-radius:20px;
	
}


</style>
<style>
.wrap-progress-bar {
position:relative;
	width:100%;
	
	height:25px;
	background:#EEEEEE;
	border-radius:20px;
	overflow:hidden;
}

.progress-gage {
	height:100%;
	background:#5B89FF;
	border-radius:20px;
	
}
</style>
<body>

<div class="author_table_wrap">
             	
             	
             	
             	<ul>
             		<c:forEach items="${list}" var="list">
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


         			<td><value="${list.regiDate}"/></td>
         			<td><c:out value="${list.complDate}"></c:out></td>
         			<td><c:out value="${list>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
.complDate}"></c:out></td>
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
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

<script type="module">
import { conversionDateFormat,  calcBetweenDay } from '/resources/js/module.js';

var list = new Array();
<c:forEach items="${list}" var="list">

var today = new Date();
var stDate = conversionDateFormat('${list.regiDate}'); // 시작날짜 더미데이터
var enDate = conversionDateFormat('${list.complDate}');



var perriodDay = Math.floor(calcBetweenDay(stDate, enDate) + 1 ); // 전체기간
var perriodDay2  = Math.floor(calcBetweenDay(stDate, today) + 1 ); // 시작날 ~ 현재날 사이의 일수

var result = ( perriodDay2 / perriodDay ) * 100;

list.push(Math.floor(result));

</c:forEach>

	
  var challPer = document.querySelectorAll(".chall-percent");
  challPer.forEach(function(ele, idx){
	  ele.innerHTML=list[idx]+"%";

	 let progrees =  ele.nextSibling.nextElementSibling.children[0];
	 progrees.style.width=list[idx]+"%"; 

  })
 	




</script>


</body>
</html>