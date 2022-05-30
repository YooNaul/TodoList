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
	    $("#listInsertForm").submit();
	});
	 
	/* 취소 버튼 */
	$("#cancelBtn").click(function(){
	    location.href="/todolist/list"
	});


});

</script>
<div> 
	<form method="post" id="listInsertForm">
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
                    				<select name="nationId">
                    					<option value="challStatus" selected>=== 선택 ===</option>
                    					<option value="1">챌도전</option>
                    					<option value="2">일반도전</option>
                    				</select>
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