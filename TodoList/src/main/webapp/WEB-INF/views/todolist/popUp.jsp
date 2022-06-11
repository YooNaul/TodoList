<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/plug-in/progress/jCirclize.css" />
<script src="/resources/plug-in/progress/jquery.jCirclize.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
     integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<style>
@import url(./resources/css/style.css);
</style>
<body>
	<div class="chall-detail">
		<%
String percent = request.getParameter("percent");
%>
	<h4 class="chall-detail-title">나의 ${list.detail} 챌린지</h4>
	<div class="chall-chart" data-percent="<%=percent%>">

	</div>
	<div>
	
	</div>
<div class="chaill-detail-info">
<a href="/todolist/giveup?idx=${list.idx }">챌린지 중단</a>
</div>
</div>


<script>
$(document).ready(function() {
	
	
 $currentPercent = $("chall-chart").data("percent");
	$('.chall-chart').data("percent", $currentPercent);
	
	var currentPerc = $(".chall-chart").data("percent");
	
	  $('.chall-chart').circlize({
		  percentage: currentPerc,
	    usePercentage: true,
	   	duration:600,
	    background: "#E3E3E3",
	    gradientColors: ["#5B89FF", "#5B89FF", "#5B89FF"]
	    
	    
	  });

	});
</script>
</body>
</html>