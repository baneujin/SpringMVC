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
<title>게시판</title>
<style>
	
	.table>thead{
		background-color: #b3c6ff;
		text-algin: center;
		align-items: center;
		
	}
	.table> thead> tr> th{
		text-algin: center;
		width: 200px;
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
	.table> tbody> tr> #title{
		text-algin: center;
		align-items: center;
		
	}
	div> #padding{
		text-align: center;
		
	}
	
	.wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 70vh;
}
.write{
cpation-side: bottom;
}
</style>
</head>
<body>
	<div>
		<div>
				
		</div>
		
		<div class="wrapper">
			<table class="table table-strped table-bordered table-hover">
			<caption class="write"> <button type="button" class="btn btn-primary" onClick="location.href='insert'" >글쓰기</button>
			 &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" onClick="location.href='memberinfo'" >메인</button>
			</caption>
				<thead>
					<tr>
						<th width="10%">번호</th>
						<th width="50%">제목</th>
						<th width="10%">작성자</th>
						<th width="20%">작성일</th>
						<th width="10%">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
 <c:when test="${!empty list}">
 	<c:forEach var="dto" items="${list}" >
 	<tr align="center">
 		<td width="5%">${dto.no}</td>
 		<td align="left" width="35%">
 		<span style="padding-right:30px"></span>
 		<c:choose>
 			<c:when test='${dto.level>1}'>
 			<c:forEach begin="1" end="${dto.level}" step="1">
 			<span style="padding-left:20px"></span>
 			</c:forEach>
 			<span style="font-size:12px;">[답변]</span>
 			<a href="detail?no=${dto.no}">${dto.title}</a>
 			</c:when>
 			<c:otherwise>
 			<a href="detail?no=${dto.no}">${dto.title}</a>
 			</c:otherwise>
 		</c:choose>
 		
 		</td>
 		<td>${dto.id}</td>
 		<td>${dto.regdate}</td>
 		<td>${dto.readcount}</td>
 		
 	</tr>
 	</c:forEach>
  </c:when>
</c:choose>
				</tbody>
				
			</table>
				
		</div>
	</div>

</body>
</html>