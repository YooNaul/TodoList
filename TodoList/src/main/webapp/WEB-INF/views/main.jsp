<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style type="text/css">
@import url(/resources/css/style.css);

</style>
	<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
</head>


<body>

  <!-- 전체섹션 크기잡기 -->


<div id="root">
<div class="container">
	<div class="wrap">
	 <header class="header">
	<div class="header-contents">
		<i class="fi "></i>&nbsp;&nbsp;<span class="page-title"></span>
	 </div>
	 </header>
         <div class="contents">
         <!--    <c:if test = "${member == null }">
                    <div class="login_button"><a href="/member/login">로그인</a></div>
                    <span><a href="/member/join">회원가입</a></span>                
                </c:if>    
                 -->
                <!-- 로그인한 상태 -->
              <!--    <c:if test="${ member != null }">
                <h2> 아이디: ${member.id }</h2>
				<h2> 이름 ${member.name }</h2>
				<h2> 성별 ${member.sex }</h2>
				<h2> 등급 ${member.ranking }</h2>
				<span><a href="/todolist/list">일반 할일</a></span>
				<span><a href="/todolist/listChall">챌린지 할일</a></span>
				<span><a href="/member/mypage">마이 페이지</a></span>
	                    <div class="gnb_logout_button">
                        <ul><li><a id="gnb_logout_button">로그아웃</a></li></ul>
                    </div>
                    </c:if>-->
	
		</div>
	
		
	</div>

</div>



	<nav class="nav-bar">
	<div class="list-up">

   </div>
	<ul>
	<li><i class="fi fi-rr-home on"></i></li>
	<li><i class="fi fi-rr-trophy"></i></li>
	<li><i class="fi fi-rr-map-marker-plus"></i></li>
	<li><i class="fi fi-rr-user"></i></li>
	<li ><i class="fi fi-rr-menu-dots"></i></li>
	</ul>
	</nav>
</div>


<script>
$(document).ready(function(){
    /* gnb_area 로그아웃 버튼 작동 */
    $("#gnb_logout_button").click(function(){
        //alert("로그아웃 버튼 테스트");
        $.ajax({
        	type:"POST",
        	url:"/member/logout.do",
        	success:function(data){
        		//alert("로그아웃 성공");
        		document.location.reload();
        	}
        });
    });
    
    /* 초기페이지를 todolist/list.jsp로드 */
    $(".contents").load('/todolist/list');
    $(".page-title").html("메인");
    $(".header-contents i").addClass("fi-rr-home");
   
    /* 버튼클릭시 페이지를 contents박스에 로드 */
    $(".nav-bar ul li").click(function(){
     	var $currentPage = $(this).index();	
     	var $contents = $(".contents");
     	var $pageTitle = $(".page-title");
     	var $pageIcon = $(".header-contents i");
     	 $(".nav-bar ul li i").removeClass("on");
     	$(this).find("i").addClass("on");
     	$pageIcon.removeClass();
     	
    	switch($currentPage){
    	case 0 :
    		$contents.load("/todolist/list");
    		$pageTitle.html("메인");
    		$pageIcon.addClass("fi fi-rr-home");
    		break;
    	case 1 :
    		$contents.load("/todolist/listChall");
    		$pageTitle.html("나의 챌린지");
    		$pageIcon.addClass("fi fi-rr-trophy");
    		break;
    	case 2 :
    		$(".list-up").addClass("on");
    		$(".list-up").load("/todolist/listInsert");
    		break;
    	case 3 :
    		$contents.load("/member/mypage");
    		$pageTitle.html("마이페이지");
    		$pageIcon.addClass("fi fi-rr-user-add");
    		break;
    	case 4 :
    		$contents.load("/more");
    		$pageTitle.html("더보기");
    		$pageIcon.addClass("fi fi-rr-user-add");
    		break;
    	}
     		
    	<c:if test = "${member == null }">
    	alert("로그인 해주세요");
    	location.href="/member/login";
        </c:if>    
        
        if(document.querySelector(".list-up").classList.contains("on")) {
        	document.querySelector("#root").classList.add("on");
        	$(".container").not(".list-up").click(function(){
        		$(".list-up").removeClass("on");
        		$("#root").removeClass("on");
        	})
        } else {
        	document.querySelector("#root").classList.remove("on");
        }
        
        
    })
    
  
    
})
</script>
</body>
</html>
