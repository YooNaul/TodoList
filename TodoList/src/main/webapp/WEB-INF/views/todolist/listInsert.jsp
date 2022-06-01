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
<body>
<script>
$(document).ready(function(){
/* 등록 버튼 */
	$(".insert_btn").click(function(){
	
	  /* ajax test */
		 var formValues = $("form[id=listInsertForm]").serialize() ;
		 
	        $.ajax({
	            type : 'post',
	            url : 'todolist/listInsert',
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


});

</script>
<div> 
		<form method="post" id="listInsertForm" action="todolist/listInsert">
		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>내용</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="detail">
                    			</div>
                    			
                    		</div>
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>챌도전 유무</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="challStatus">
                    					<option value="challStatus" selected>=== 선택 ===</option>
                    					<option value="0">챌도전</option>
                    					<option value="1">일반도전</option>
                    				</select>
                    			</div>
                    		</div>
                    		
                    		<div class="form_section_title">
                    				<label>목표날짜(yyyy-mm-dd hh:MM:ss 형식)</label>
                    			</div>
                    			
                    			<div class="form_section_content">
                    				<input name="complDate">
                    			</div>
                    		</div>
                    		
                   		</form>
                   			<div class="btn_section">
                   				<input type="button" class="cancelBtn" value="취소">
	                    		<input type="button" class="insert_btn" value="등록">
	                    	</div> 
	

</div>

</body>
</html>