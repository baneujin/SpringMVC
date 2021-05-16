<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

 

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

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
<form method="POST">
<input type="hidden" name="password" value="${password}">
<input type="hidden" name="id" value="${id}">
<div class="wrapper">
<strong>게시물 작성하기</strong>
<table  border=1  width="600" height="400">
<tr align="center" >
	<th height="10%">제목</th>
	<td><input type="text" name="title" autofocus="autofocus" required="required" style="width: 100%; height: 100%"/></td>
</tr>
<tr align="center">
	<th>내용</th>
	<td><textarea name="content" style="width: 100%; height: 100%" required="required"></textarea></td>
</tr>
</table><br>

<button type="submit" class="btn btn-primary">확인</button>
&nbsp;&nbsp;&nbsp;
</div>
</form>
</body>
</html>