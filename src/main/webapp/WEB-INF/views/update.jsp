<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
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

	.table>thead{
		background-color: #b3c6ff;
		text-algin: center;
		align-items: center;
		
	}
	.table>th{
		text-algin: center;
		width: 500px;
		align-items: center;
	}
	.table-hover> tbody>tr:hover{
		background-color: #e6ecff;
		align-items: center;
	
	}
	.table> thead> tr> td{
		text-algin: center;
		align-items: center;
		}
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
<div class="wrapper">
<table border="1" width="600" height="400">
	<caption>게시물 업데이트<br>
	*글 작성자의 비밀번호를 입력해주세요
	</caption>
<tr align="center" >
	<th>비밀번호</th>
	<td><input type="password" name="password" required="required"/>

	<input type="hidden" name="no" value="${dto.no}"/></td>
</tr>	
<tr align="center">
	<th>제목</th>
	<td><input type="text" name="title" value="${dto.title}"></td>
</tr>
<tr align="center">
	<th>아이디</th>
	<td>${id}</td>
</tr>
<tr align="center">
	<th>내용</th>
	<td><textarea rows="10" cols="50" name="content" >${dto.content}</textarea></td>
</tr>
<tr align="center">
	<th>작성일</th>
	<td>${dto.regdate}</td>
</tr>
<tr align="center">
	<th>조회수</th>
	<td>${dto.readcount}</td>
</tr>
</table><br/><br><br>
<div>
<button type="submit" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary" onClick="location.href='list'" >리스트</button>

</div>
</form>

</body>
</html>