<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
�˾�â�Դϴ�.
<h2>�� �ε��� ${list.idx }</h2>
<a href="/todolist/success?idx=${list.idx }">����</a>
<a href="/todolist/giveup?idx=${list.idx }">����</a>
</body>
</html>