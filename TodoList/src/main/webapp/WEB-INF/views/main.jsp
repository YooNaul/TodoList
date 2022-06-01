<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');

* {
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
}

body,
html {
    height: calc(var(--vh, 1vh) * 100);
    overflow-y: unset;
    touch-action: none;
}

ul,
ol {
    list-style: none;
}

a {
    outline: 0;
    text-decoration: none;
}

/* 섹션고정 벗어남 방지 */
.fix_section {
    width: 100%;
    height: calc(var(--vh, 1vh)*100);
    overflow: hidden;
}

/* 로그인 섹션 공통설정 및 좌측정렬 */
.login_section {
    width: 100%;
    height: calc(var(--vh, 1vh)*100);
    float: left;
    overflow: hidden;
}

/* section-1 */
/* flex로 텍스트 세로로 균일하게 배치 */
#login-01 {
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: space-between;
}

h2.login-01-title {
    font-size: 2.5rem;
    text-align: center;
}

h2.login-01-title p {
    font-size: 0.8rem;
    font-weight: 100;
}

#login-01 span {
    font-size: 0.8rem;
    color: #A4A4A4;
}




.container-height100 {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
}

.container-center {
    align-items: center;
}

.login-02-title {
    padding-top: 40px;
}

.wrap-input {
    padding-top: 40px;
    transition: all 0.7s;
    border-bottom: 1px solid #222;
    position: relative;
}

.wrap-input:hover {
    border-bottom: 1px solid #5882FA;
    cursor: pointer;
}

input:focus {
    outline: 0;

}

.wrap-input input {
    width: 100%;
    height: 40px;
    border: none;
    cursor: pointer;
    color: #A4A4A4;

}

.wrap-input span {
    float: right;
    position: absolute;
    right: 0;
    bottom: 10px;
    font-size: 0.8rem;
    color: #585858;
    display: none;
}

.wrap-btn {
    padding-top: 40px;
}

.wrap-btn button {
    margin-left: auto;
    margin-right: auto;
}

.wrap-input span.on {
    display: block;
}

.next-btn {
    background: #084B8A;
    color: #fff;
    padding: 5px 30px;
    border-radius: 25px;
    cursor: not-allowed;
    color: #A4A4A4;
    border: none;
}


.next-btn.on {
    background: #5882FA;
    color: #fff;
    cursor: pointer;
}

/* uploadPicture */

.upload-picture {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    overflow: hidden;
}

.register_btn {
    cursor: pointer;
}

.register_btn:hover {
    background: #D8D8D8;
    border-radius: 20px;
    padding: 5px 10px;
}

/* main.html */
.wrap-content {
    height: 100vh;
    position: relative;
}

.header {
    height: 60px;
    display: flex;
    flex-direction: row;
    align-items: center;
    top: 0;
    width: 100%;
    left: 0;
}

.footer {
    height: 60px;
    position: absolute;
    bottom: 0;
    width: 100%;
    left: 0;

}

.wrap-menu {
    width: 100%;
    height: 100%;
    padding: 0;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
}

#bodyContents {
    position: fixed;
    width: 100%;
}

.add-list-btn {
    width: 80px;
    height: 80px;
    position: fixed;
    right: 10px;
    bottom: 70px;
    border-radius: 50%;
    background: skyblue;
}

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
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
</head>
<body>
<h1>
	메인페이지입니다
</h1>
  <!-- 전체섹션 크기잡기 -->
    <div class=fix_section>
        <section id="login-01" class="login_section">
            <h2 style="visibility:hidden;">fake</h2>
            <h4 style="visibility:hidden;">fake</h4>
            <h2 class="login-01-title">HeyDo <br>
                <p>기록하고 분석하는 습관일지</p>
            </h2>
            <div>
                <span class="register_btn">로그인</span>&emsp;&emsp;<span onclick="location.href='login_register.html'" class="register_btn">회원가입</span>
            </div>
            <span>ver 1.0.0</span>
        </section>


        
    </div>

<div class="login_area">


                <c:if test = "${member == null }">
                    <div class="login_button"><a href="/member/login">로그인</a></div>
                    <span><a href="/member/join">회원가입</a></span>                
                </c:if>    
                
                <!-- 로그인한 상태 -->
                <c:if test="${ member != null }">
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
                    </c:if>
<ul>

</ul>
</div>
<script>
 
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
    
</script>
</body>
</html>
