<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
팝업창입니다.
<h2>니 인덱스 ${list.idx }</h2>
<a href="/todolist/success?idx=${list.idx }">성공</a>
<a href="/todolist/giveup?idx=${list.idx }">삭제</a>
</body>
</html>