<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style type="text/css">
@import url(/resources/css/style.css);  /* 레이아웃관련 css파일 import */
</style>
	<title>Home</title>
	<!-- bootstrap css -->
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- animation plug-in -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <!-- interface icon plug-in -->
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
     integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- bootstrap js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
     crossorigin="anonymous"></script>

    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script src="/resources/js/main.js"></script>
</head>

<body>

    <div id="root">

        <div id="notice_box">
            <h5 class="notice_head">${member.name } 님 알림함<i class=" fi fi-rr-cross" id="exit-btn"></i></h5>
        </div>

        <div class="container">
            <div class="wrap">
                <header class="header">
                    <div class="header-contents">
                        <i class="fi "></i>&nbsp;&nbsp;<span class="page-title"></span>

                    </div>

                    <div id="notice-btn">
                        <i class="fi fi-rr-bell"></i>
                    </div>
                </header>
                <div class="contents">


                </div>


            </div>

        </div>



        <nav class="nav-bar">
            <div class="list-up">

            </div>
            <ul>
                <li><i class="fi fi-rr-home on"></i></li>
                <li><i class="fi fi-rr-trophy"></i></li>
                <li class="list-up-btn"><i class="fi fi-rr-map-marker-plus"></i></li>
                <li><i class="fi fi-rr-user"></i></li>
                <li><i class="fi fi-rr-menu-dots"></i></li>
            </ul>
        </nav>
    </div>

<script type="module">
/* js파일에서 jstl작성안됨  */
<c:if test = "${member == null }">
    	alert("로그인 해주세요");
    	location.href="/member/login";
</c:if>

const noticeBtn = document.getElementById("notice-btn");
const noticeBtnExit = document.getElementById("exit-btn");
const noticeBox = document.getElementById("notice_box");
const noticeBoxOverlay = document.getElementById("root");

noticeBtn.addEventListener("click", function(){
	noticeBox.classList.add("on");
	noticeBoxOverlay.classList.add("on");
})

noticeBtnExit.addEventListener("click", function(){
	noticeBox.classList.remove("on");
	noticeBoxOverlay.classList.remove("on");
})
</script>
</body>
</html>
