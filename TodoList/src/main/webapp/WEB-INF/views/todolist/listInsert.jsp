<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/app.js"></script>
<script>
/* 등록 버튼 */
$("#insertBtn").click(function(){    
	alert("할일 등록 버튼 테스트");
	$.ajax({
		type:"POST",
		url:"/todolist/listInsert"
		success:function(data){
			alert("등록 성공");
			document.location.reload();
		}
	})
	
});
 
/* 취소 버튼 */
$("#cancelBtn").click(function(){
    location.href="/main"
});

</script>
</head>
<body>
<div> 
	<form action="/todolist/listInsert" method="post" id="listInsertForm">
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
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="insertBtn" class="insert_btn">등 록</button>
	                    	</div> 
	

</div>

</body>
</html>