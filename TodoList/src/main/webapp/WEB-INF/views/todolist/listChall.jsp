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
@import url(/resources/jquery/progressbar.css);
</style>
</head>

<body>
	
<div class="author_table_wrap">
             	
             	
             	
             	<ul>
             		<c:forEach items="${list}" var="list">

             		
				<!-- 
             		<a href="/todolist/popUp?idx=${list.idx }">
             		
					</a>
					 -->
         		<li class="list-box" style="margin-bottom:10px" data-listIdx = "${list.idx}">
         		
         		<div>
         		
         		<c:out value="${list.detail}"></c:out><br/>
         		 
<c:out value="${fn:substring(list.regiDate,0,10)}"></c:out>-<c:out value="${fn:substring(list.complDate,0,10)}"></c:out>
         		

         	
         		</div>
         		<div class="chall-percent">
         		
         		</div>
         		<div class="wrap-progress-bar">
         	<div class="progress-gage"></div>
         		</div>     	
         		</li>
      
         	
         		

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
		if(list[idx] >= 100) {
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
	
	$(".list-box").click(function(){
		var currentIndex = $(this).index();
		var $contents = $(".contents");
		var listIdx = $(this).data("listidx");
		$contents.load("/todolist/popUp?idx="+listIdx+"&percent="+list[currentIndex]);
	})
</script>

<script>
	
</script>
</body>
</html>