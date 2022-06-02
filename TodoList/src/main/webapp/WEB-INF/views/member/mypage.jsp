<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>마이페이지입니다.</h2>
<h2>니 이름 : ${member.name }</h2>
<h2>니 회원가입 날짜 : <fmt:formatDate value="${member.joinDate}" pattern="yyyy-MM-dd hh:MM:ss"/></h2>
<h2>니 등급 : ${member.ranking }</h2>
<h2>니 성별 : ${member.sex }</h2>
<c:forEach items="${list}" var="list">
<span>실${list.failStatus }</span>
<span>챌${list.challStatus }</span>
</c:forEach>
<h2><a href="/member/editMember">회원정보수정</a></h2>
<h2><a href="/member/deleteMember">회원탈퇴</a></h2>
</body>
</html>