<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<style>
@import url(./resources/css/style.css);
</style>
<body>
<script>
$(document).ready(function(){
/* 등록 버튼 */
	$(".insert_btn").click(function(){
	
	  /* ajax test */
		 var formValues = $("form[id=listInsertForm]").serialize() ;
		 
	        $.ajax({
	            type : 'post',
	            url : '/todolist/listInsert',
	            data : formValues,
	            dataType : 'json',
	            error: function(xhr, status, error){
	            	
	            },
	            success : function(json){
	            	
	            }
	        });
	        
	        location.href="/main";
	});
	 
	/* 취소 버튼 */
	$("#cancelBtn").click(function(){
	    location.href="/todolist/list"
	});

	var check = $("input[type='checkbox']");
	check.click(function(){
		$("p").toggle();
		$(this).toggleClass("on");
		if($(this).hasClass("on")) {
			challVal = 0;
			$("#challStatus").val("0").prop("selected", true);
		} else {
			challVal = 1;
			$("#challStatus").val("1").prop("selected", true);
		}
	});
	
	let dateInput = document.querySelector("#daySelector");
	// Date string 형식
	let now = new Date();
	var today = new Date().toISOString().substring(0,10);	
	dateInput.setAttribute("min", today);

		
});

</script>
<div> 
		<form method="post" id="listInsertForm" action="todolist/listInsert">
		<div class="form_section">
                    			
         <label class="switch">
      
         
  <input type="checkbox">
  <span class="slider round"></span>
</label>
<p style="display:none;">챌린지</p>
<p class="challSwitch">일반</p>

                    		</div>
                    	<!--  
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label></label>
                    			</div>
                    			</div> 
                    			-->
                    				
                    			
                    		              		
                    		<select id="challStatus" name="challStatus">
                    					<option value="0"></option>
                    					<option value="1" selected></option>
                    				</select>
                    		<div class="form_section_title"> 
                    		<!-- (yyyy-mm-dd hh:MM:ss 형식)  -->
                    		<i class="fi fi-rr-calendar-lines"></i> <label>목표날짜</label>
                    			</div>
                    			
                    			<div class="form_section_date">
                    			
                    				<input id="daySelector" type="date" name="complDate">
                    			</div>
                    			
                    			<div class="form_section_title">
                    			<i class="fi fi-rr-edit"></i>	<label>메모</label>
                    			</div>
                    			
                    			<div class="form_section_memo">
                    				<input name="detail">
                    			</div>
                    		
                    		
                    		<div class="btn_section">
                   			<!-- 
                   				<input type="button" class="cancelBtn" value="취소">
	                    		<input type="button" class="insert_btn" value="등록">
	                    	 -->
	                    	<i class="fi fi-sr-arrow-circle-up insert_btn"></i>
	                    	</div> 
                    		
                   		</form>
                   			
	

</div>

</body>
</html>