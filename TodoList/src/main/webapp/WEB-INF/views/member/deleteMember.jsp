<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>

<body>
	<form method="post" class="form-horizontal" autocomplete="off">
		<div class="form-group">
			<label>아이디</label>
			<label>${member.id}</label>
		</div>

		<div class="form-group">
			<label>비밀번호</label>
			<input type="password" name="pass" id="pass" required>
		</div>
		
		<button type="submit" class="btn btn-primary">회원 탈퇴</button>
		<a href="/member/mypage">취소</a>
		
	</form>

	
<c:if test="${member.pass==false}">
<p>비밀번호가 다릅니다.</p>
</c:if>

</body>
</html>