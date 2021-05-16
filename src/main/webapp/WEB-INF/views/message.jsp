<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.wrapper {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 70vh;
}

</style>
<head>

</head>
<body>
<form action="sendMessageAction">
<div class="wrapper">
<input type="hidden" name="id_send" value="${sendID}" />
<input type="hidden" name="id_recieve" value="${id}" />
    <h2>쪽지보내기</h2>
    <label>받는사람 ID : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${id}</label>
    <label>보내는사람 아이디   : ${sendID}</label>
    <textarea rows="10" cols="30" name="content">내용을 입력해주세요</textarea>
    <div>
    <input type="submit" value="Send" class="btn btn-primary pull-right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" value="Reset" class="btn btn-primary pull-right">
    </div>
    
</div>
</form>
</body>
</html>