<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
  <style type="text/css">
@import url(/resources/css/layout/frame.css);
@import url(/resources/css/pages/login.css);
</style>

</head>
<body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

var code = "";                //이메일전송 인증번호 저장위한 코드

/* 유효성 검사 통과유무 변수 */
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var pwckcorCheck = false;        // 비번 확인 일치 확인
var nameCheck = false;            // 이름
var mailCheck = false;            // 이메일
var mailnumCheck = false;        // 이메일 인증번호 확인
var addressCheck = false         // 주소

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		
        /* 입력값 변수 */
        var id = $('.id_input').val();                 // id 입력란
        var pw = $('.pw_input').val();                // 비밀번호 입력란
        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
        var name = $('.user_input').val();            // 이름 입력란
        var mail = $('.mail_input').val();            // 이메일 입력란
        var addr = $('.address_input_3').val();        // 주소 입력란
        
        /* 아이디 유효성검사 */
        if(id == ""){
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        

        
        /* 비밀번호 유효성 검사 */
        if(pw == ""){
            $('.final_pw_ck').css('display','block');
            pwCheck = false;
        }else{
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
        }
        
        /* 비밀번호 확인 유효성 검사 */
        if(pwck == ""){
            $('.final_pwck_ck').css('display','block');
            pwckCheck = false;
        }else{
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
        }
        
        /* 이름 유효성 검사 */
        if(name == ""){
            $('.final_name_ck').css('display','block');
            nameCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
        
        /* 이메일 유효성 검사 */
        if(mail == ""){
            $('.final_mail_ck').css('display','block');
            mailCheck = false;
        }else{
            $('.final_mail_ck').css('display', 'none');
            mailCheck = true;
        }
        
        /* 주소 유효성 검사 */
        if(addr == ""){
            $('.final_addr_ck').css('display','block');
            addressCheck = false;
        }else{
            $('.final_addr_ck').css('display', 'none');
            addressCheck = true;
        }
 
        /* 최종 유효성 검사 */
        if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&addressCheck ){
 
        	$("#join_form").attr("action", "/member/join");
    		$("#join_form").submit();
        }    
        
        return false;
        
		
	});
	
	//아이디 중복검사
	$('.id_input').on("propertychange change keyup paste input", function(){
		//console.log("keyup 테스트");
		var memberId = $('.id_input').val();			// .id_input에 입력되는 값
		var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		$.ajax({
			type : "post",
			url : "/member/memberIdChk",
			data : data,
			success : function(result){
				// console.log("성공 여부" + result);
				if(result != 'fail'){
					$('.id_input_re_1').css("display","inline-block");
					$('.id_input_re_2').css("display", "none");		
					idckCheck = true;
				} else {
					$('.id_input_re_2').css("display","inline-block");
					$('.id_input_re_1').css("display", "none");
					idckCheck = false;
				}
			}// success 종료
		}); // ajax 종료
		

	});// function 종료
	

	/* 인증번호 이메일 전송 */
	$(".mail_check_button").click(function(){
	    
	    var email = $(".mail_input").val();            // 입력한 이메일
	    var cehckBox = $(".mail_check_input");        // 인증번호 입력란
	    var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스
	    var warnMsg = $(".mail_input_box_warn");    // 이메일 입력 경고글
	    

	    
	    /* 이메일 형식 유효성 검사 */
	    if(mailFormCheck(email)){
	        warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
	        warnMsg.css("display", "inline-block");
	    } else {
	        warnMsg.html("올바르지 못한 이메일 형식입니다.");
	        warnMsg.css("display", "inline-block");
	        return false;
	    }    
	    
	    
	    $.ajax({
	        
	        type:"GET",
	        url:"mailCheck?email=" + email,
	        success:function(data){
	            
	            //console.log("data : " + data);
	        	cehckBox.attr("disabled",false);
	        	boxWrap.attr("id", "mail_check_input_box_true");
	        	code = data;
	        }
	                
	    });
	    
	});

	 
	/* 인증번호 비교 */
	$(".mail_check_input").blur(function(){
	    
		var inputCode = $(".mail_check_input").val();        // 입력코드    
		var checkResult = $("#mail_check_input_box_warn");    // 비교 결과  
		
	    if(inputCode == code){                            // 일치할 경우
	        checkResult.html("인증번호가 일치합니다.");
	        checkResult.attr("class", "correct");  
	        mailnumCheck = true;     // 일치할 경우
	    } else {                                            // 일치하지 않을 경우
	        checkResult.html("인증번호를 다시 확인해주세요.");
	        checkResult.attr("class", "incorrect");
	        mailnumCheck = false;    // 일치하지 않을 경우
	    }    
	    
	    
	});
	
	/* 비밀번호 확인 일치 유효성 검사 */

	$('.pwck_input').on("propertychange change keyup paste input", function(){
	        
	    var pw = $('.pw_input').val();
	    var pwck = $('.pwck_input').val();
	    $('.final_pwck_ck').css('display', 'none');
	    
	    if(pw == pwck){
	        $('.pwck_input_re_1').css('display','block');
	        $('.pwck_input_re_2').css('display','none');
	        pwckcorCheck = true;
	    }else{
	        $('.pwck_input_re_1').css('display','none');
	        $('.pwck_input_re_2').css('display','block');
	        pwckcorCheck = false;
	    }    
	    
	}); 
	
	/* 입력 이메일 형식 유효성 검사 */
	function mailFormCheck(email){
	
		 var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		 return form.test(email);
	 
	}
	
});


</script>
<div id="root">
<div class="container">
	<div class="wrap">
	<div class="contents">
	<form id="join_form" method="post">

			<div class="subjecet">
				<span>회원가입</span>
			</div>
			<div class="join-input id_wrap">
		
				<div class="id_input_box">
					<i class="fi fi-rr-user"></i>
					<input class="id_input" name="id" placeholder="ID를 입력해주세요.">
				</div>
			<!-- 	<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
				<span class="final_id_ck">아이디를 입력해주세요.</span> -->
			</div>
	
			<div class="join-input pw_wrap">
				
				<div class="pw_input_box">
				
				<i class="fi fi-rr-lock"></i>
					<input class="pw_input" name="pass" placeholder="비밀번호를 입력.">
				</div>
			<!-- 	<span class="final_pw_ck">비밀번호를 입력해주세요.</span> -->
			</div>
			<div class="join-input pwck_wrap">
		
				<div class="pwck_input_box">
				<i class="fi fi-rr-lock"></i>
					<input class="pwck_input" placeholder="비밀번호를 확인">
				</div>
			<!-- 	<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
                <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span> -->
			</div>
			<div class="join-input user_wrap">
		
				<div class=" user_input_box">
					<i class="fi fi-rr-edit"></i>
					<input class="user_input" name="name" placeholder="이름을 입력해주세요">
				</div>
			<!--  	<span class="final_name_ck">이름을 입력해주세요.</span> -->
			</div>
			<div class="sex_wrap">
			
				<div class="sex_cheak_box">
				<i class="fi fi-rr-venus-mars"></i>
					<input type="radio" name="sex" value="1">남자
					<input type="radio" name="sex" value="2" >여자
				</div>
			</div>
			
			<div class="mail_wrap">
		
				<div class="mail_input_box">
				<i class="fi fi-rr-envelope"></i><br/>
					<input class="mail_input" name="email">
				</div>
			<!-- 	<span class="final_mail_ck">이메일을 입력해주세요.</span> -->
				<sapn class="mail_input_box_warn"></sapn>
				<div class="mail_check_wrap">
					<div class="mail_check_input_box" id="mail_check_input_box_false"> 
						<input class="mail_check_input">
					</div>
					<div class="mail_check_button">
						<span>인증번호 전송</span>
					</div>
					<div class="clearfix"></div>
					<span id="mail_check_input_box_warn"></span>
				</div>
			</div>
			<!-- <div class="address_wrap">
				<div class="address_name">주소</div>
				<div class="address_input_1_wrap">
					<div class="address_input_1_box">
						<input class="address_input_1" name="adress1" readonly="readonly">
					</div>
					<div class="address_button" onclick="execution_daum_address()">
						<span>주소 찾기</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class ="address_input_2_wrap">
					<div class="address_input_2_box">
						<input class="address_input_2" name="adress2" readonly="readonly">
					</div>
				</div>
				<div class ="address_input_3_wrap">
					<div class="address_input_3_box">
						<input class="address_input_3" name="adress3" readonly="readonly">
					</div>
				</div> 
				<span class="final_addr_ck">주소를 입력해주세요.</span>
			</div> -->
			<div class="join_button_wrap">
				<input type="button" class="join_button" value="가입하기">
			</div>
	</form>
	</div>
	</div>
	</div>
</div>

</body>
</html>