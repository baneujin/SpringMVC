<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="dto" value="${articleDTO}" />
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
<form method="POST">
<br><br><br><br><br>
<div class="wrapper">
<table align="center" border="1">
	<caption>게시물 업데이트<br>
	*처음 글 입력시 입력했던 비밀번호를 입력해주세요
	</caption>
<tr align="center">
	<th>비밀번호 입력</th>
	<td><input type="password" name="password" required="required"/><input type="hidden" name="no" value="${dto.no}"/></td>
</tr>	
</table><br/>
<button type="submit" class="btn btn-primary" >확인</button>&nbsp;&nbsp;&nbsp;
</div>
</form>>
</body>
</html>