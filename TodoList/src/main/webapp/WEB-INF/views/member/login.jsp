<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title> 

<style type="text/css">
@import url(/resources/css/layout/frame.css);
@import url(/resources/css/pages/login.css);
</style>
<script src="/resources/jquery/jquery.3.6.0.js"></script>

</head>
<body>
<div id="root">
<div class="container">
	<div class="wrap">
	 
                <div class="contents">
              
	<form id="login_form" method="post">
		<div class="logo_wrap">
			<h2>Todo</h2>
		</div>
		<div class="login_wrap"> 
		
			<div class="id_wrap">
					<div class="login-input id_input_box">
					<i class="fi fi-rr-user"></i>
					<input class="id_input" name="id">
				</div>
			</div>
			
			<div class="pw_wrap">
				<div class="login-input pw_input_box">
				<i class="fi fi-rr-lock"></i>
					 <input class="pw_iput" name="pass">
				</div>
			</div>
			
			<c:if test="${result == 0 }">
			<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
			</c:if>
			
			<div class="login_button_wrap">
				<input type="button" class="login_button" value="Login">
			</div>	
			
		</div>
			<a href="join">회원가입</a>	
		</form>
		</div>
	
		
	</div>
</div>
</div>
<script>
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
        //alert("로그인 버튼 작동");
        
        /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login.do");
        $("#login_form").submit();
        alert(1);
    });
 
</script>

</body>
</html>