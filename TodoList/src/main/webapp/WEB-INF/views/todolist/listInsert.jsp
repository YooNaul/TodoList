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
                <i class="fi fi-rr-edit"></i> <label>메모</label>
            </div>

            <div class="form_section_memo">
                <input name="detail">
            </div>


            <div class="btn_section">

                <i class="fi fi-sr-arrow-circle-up insert_btn"></i>
            </div>

        </form>

    </div>
      <script src="/resources/js/ajax.js"></script>
    <script src="/resources/js/main.js"></script>
</body>
</html>