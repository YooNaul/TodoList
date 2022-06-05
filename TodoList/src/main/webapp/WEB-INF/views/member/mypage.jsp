<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
@import url(/resources/css/pages/mypage.css);
</style>
</head>
<body>

<!-- 
<h2>${member.name }님</h2>

<c:forEach items="${list}" var="list">
 <span>failstatus${list.failStatus}</span><br/> 
<span>challstatus${list.challStatus}</span><br/>
</c:forEach>

<h2>니 등급 : ${member.ranking }</h2>
<h2>니 성별 : ${member.sex }</h2>

<h2><a href="/member/editMember">회원정보수정</a></h2>
<h2><a href="/member/deleteMember">회원탈퇴</a></h2>
 -->
<div class="mypage-info">

<div class="mypage-info-user">
<div class="mypage-info-user-picture" id="mypage-info-user-picture">

</div>
<div class="mypage-info-user-personal">
<span>${member.name } 님</span><br/>
<span>todo 사용한지 <b id="join-date"></b> 일쨰</span><br/>
<span>목표 달성률은 <b></b>% 입니다.</span>
<span>니 실패횟수 : ${fail }</span>
<span>니 챌린지 전체 도전 횟수 : ${chall }</span>
</div>
</div>

<div class="mypage-info-target">
<h6>목표달성률</h6>
<div class="mypage-info-percent">
<span id="mypage-percent-data">66%</span>
</div>
</div>

<div class="mypage-info-emblem">
<h6>보유 엠블럼</h6>
</div>
</div>
<script type="module">
import { conversionDateFormat,  calcBetweenDay } from '/resources/js/module.js';

const today = new Date();
const joinDate = new  Date('${member.joinDate}');
const calcJoinDate = Math.floor(calcBetweenDay(joinDate, today)) + 1;

const displayJoinDate = document.getElementById('join-date');
displayJoinDate.innerHTML=calcJoinDate;

const displayUserPicture = document.getElementById('mypage-info-user-picture');
displayUserPicture.style.backgroundRepeat = "no-repeat";
displayUserPicture.style.backgroundSize = "110px";

const pageInfo = {}
 pageInfo.gender = '${member.sex }';
if(pageInfo.gender == 1) {
	displayUserPicture.style.backgroundImage = "url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS87Gr4eFO7Pt2pE8oym4dxXnxGZYL2Pl_N5A&usqp=CAU')";  
} else if(pageInfo.gender == 2) {
		displayUserPicture.style.backgroundImage = "url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSxkzY44q7-ip0J_hGGCD5rfWZ-1Ncasb6nzoDVJed0dm05UKlXpjD6BEHooOjTp7Pk_Y&usqp=CAU')";  
}
</script>
</body>
</html>