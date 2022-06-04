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
         		

         		<c:out value="${list.regiDate}"></c:out>-<c:out value="${list.complDate}"></c:out>

         		</div>
         		<div class="chall-percent">
         		
         		</div>
         		<div class="wrap-progress-bar">
         	<div class="progress-gage"></div>
         		</div>
         		<!--  	
<<<<<<< HEAD
         		
=======
         			<td><value="${list.regiDate}"/></td>
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
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

	function setPercent(list) {
=======
<script>
 	function calcDay() {
 	let list = new Array();
 	<c:forEach items="${list}" var="list">
 	var stDateT = ("${list.regiDate}"); /* jstl 시작날짜  */
	var enDateString = ("${list.complDate}"); /* jstl 끝날짜 */
	var enDatePrs = enDateString.substr(0,10); /* 끝날짜 문자열 데이터처리 */
	var enDatePrs = enDateString.substr(0,10); /* 끝날짜 문자열 데이터처리 */
	
	
	var stDate = new Date(enDatePrs); /* 시작날짜 더미데이터 */
	var enDate = new Date(enDatePrs); /* 종료날짜 더미데이터 */
	  
	var diffDate = stDate.getTime() - enDate.getTime();  /* 시작날짜 - 끝날짜 */
	
	var dateDays = Math.abs(diffDate / (1000 * 3600 * 24)); /* 시작날짜와 종료날짜 사이의 날짜계산 */
	
	var today = new Date().toISOString().substring(0,10); /* 오늘날짜 */
	var nowDate = new Date(today); /* 오늘날짜 데이트 객체 */
	
	var ProgressDate =    stDate.getTime() -  nowDate.getTime() ;
	var dateDays2 = Math.abs(ProgressDate / (1000 * 3600 * 24));
	
	var progressResult = dateDays2  / (dateDays + 1)  * 100;
	
	list.push(progressResult);
 	</c:forEach>
 	
 	setPercent(list)
 	}
 	calcDay();
 
 	/* 계산된 퍼센트data 태그입력 */
 	function setPercent(list) {
>>>>>>> branch 'master' of https://github.com/YooNaul/TodoList.git
  var challPer = document.querySelectorAll(".chall-percent");
  challPer.forEach(function(ele, idx){
	  ele.innerHTML=list[idx]+"%";

	 let progrees =  ele.nextSibling.nextElementSibling.children[0];
	 progrees.style.width=list[idx]+"%"; 

  })
 	}

setPercent(list);


</script>


</body>
</html>