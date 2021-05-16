<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

 

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrapper {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 70vh;
}

</style>
</head>
<body>
<form method="post">
<input type="hidden" name="parentno" value="${parentno}">
<input type="hidden" name="id" value="${id}"/>
<input type="hidden" name="password" value="${password}">
<div class="wrapper">
<h1>답글 달기</h1>
<table border=1>
<tr align="center">
	<th>아이디</th>
	<td>${id}</td>
</tr>
<tr align="center" >
	<th>제목</th>
	<td><input type="text" name="title" autofocus="autofocus" required="required"/></td>
</tr>

<tr align="center" >
	<th>내용</th>
	<td><textarea name="content" rows="5" cols="40" required="required"></textarea></td>
</tr>
</table><br>
<div>
<button type="submit" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
<button type="submit" class="btn btn-primary" onClick="history.back();">취소</button>&nbsp;&nbsp;&nbsp;
</div>
</div>
</form>

</body>
</html>