<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<section id="container">
			<form action="/todolist/listUpdate.do" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">idx</label>
					<input class="form-control" type="number" id="idx" name="idx" value="${pageInfo.idx}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">아이디</label>
					<input class="form-control" type="text" id="id" name="id" value="${pageInfo.id}" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">내용</label>
					<input class="form-control" type="text" id="detail" name="detail" value="${pageInfo.detail}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">목표날짜</label>
					<input class="form-control" type="text" id="complDate" name="complDate" value="${pageInfo.complDate}"/>
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cencle btn btn-danger" onclick="location.href='/member/mypage'" type="button">취소</button>
				</div>
			</form>
		</section>
</body>
</html>