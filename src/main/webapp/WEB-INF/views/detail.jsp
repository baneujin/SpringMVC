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
<input type="hidden" name="parentno" value="${dto.parentno}" />
<div class="wrapper">
<table border="1" width="600" height="400">
	<caption>게시물 상세보기</caption>
	
<tr >
	<th height="10%">글번호</th>
	<td>${dto.no}</td>
</tr>
<tr>
	<th height="10%">제목</th>
	<td>${dto.title}</td>
</tr>
<tr >
	<th height="10%">아이디</th>
	<td>${dto.id}</td>
</tr>
<tr >
	<th height="50%">내용</th>
	<td>${dto.content}</td>
</tr>
<tr>
	<th height="10%">작성일</th>
	<td>${dto.regdate}</td>
</tr>
<tr >
	<th height="10%">조회수</th>
	<td>${dto.readcount}</td>
</tr>

</table>
<br><br>
<div>
<button type="button" class="btn btn-primary" onClick="location.href='update?no=${dto.no}'" >수정</button>&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary" onClick="location.href='delete?no=${dto.no}'" >삭제</button>&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary" onClick="location.href='replyForm?parentno=${dto.no}'" >답글쓰기</button>&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary" onClick="location.href='sendMessage?id=${dto.id}'" >쪽지보내기</button>&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary" onClick="location.href='list'" >리스트</button>&nbsp;&nbsp;&nbsp;
</div>
</div><br/>

</body>
</html>