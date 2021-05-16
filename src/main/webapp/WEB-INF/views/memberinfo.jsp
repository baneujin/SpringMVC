<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title></title>
<style type="text/css">
 
body{
     margin: 0px;                    /* margin 여백: 0px */
     min-width: 1050px;              /* 최소 너비: 1050px */
     min-height: 550px;              /* 최소 높이: 550px */
}
 
#top{
     margin: 5px 5px;            
     float: right;                   /* 오른쪽 정렬 */
}
 
a{
     text-decoration: none; 
     font-size: 10.5pt;          
     margin: 0px 10px;
     color: grey;                    /* 텍스트 색: 회색 */
}
 
a:hover{
        /* 마우스 오버시(hover) 텍스트 밑줄*/
}
 
img{
     margin: 10px 7px;               
     width: 20px;                    /* 이미지 너비: 20px */
     vertical-align: middle;              /* 세로정렬: 가운데 */
}
 
#login{
     background-color: #4485F3;      /* 배경색: #4485F3 */
     color: #FFFFFF;                      /* 글자색: #FFFFFF */
     width: 70px;                    
     height: 30px;
     border: none;                   /* 테두리: 없음 */
     vertical-align: middle;
     margin: 10px 12px 10px 7px;
     font-weight: bold;              /* 글씨 굵게 */
     font-size: 10pt;
     border-radius: 2px;                  /* 테두리 각을 둥그렇게 */
}
 
#google{
     display: block;                      /* 블록지정 */
     width: 1000px;                   
     height: 300px;
     margin: 180px auto 20px; 
            /* margin 여백: 상(180px) 우(auto) 하(20px) 좌(auto) */
}
 
#search{
     display: block;                 
     margin: 0 auto;
     width: 550px;
     height: 50px;
     font-size: 20pt;
     text-align: center;
}
 
#box{
     text-align: center;   
                 /* 중앙 정렬 */
}
 

#bottom{
     border:1px solid #E4E4E4;
      
     /* 테두리 오른쪽 왼쪽 선 때문에 전체화면에서 y축 스크롤이 생김 --> 테두리 왼쪽 오른쪽 박스선 제거 */
     border-right: none;
     border-left: none;
      
     /* 위치 맨 아래로 지정 */
     position:absolute;
     bottom: 0px;
      
     background-color: #F2F2F2;
     height: 50px;
     width: 100%;
     min-width: 1050px;
}
 
#bottom_left{
     float: left;                    /* 왼쪽 정렬 */
     padding: 15px;                       /* padding 여백: 15px */
}
 
#bottom_right{
     float: right;
     padding: 15px;
}
 
</style>
</head>
<body> 
<div id="top">
</div>
<br> 
<div>	
         <img id="google" src='<spring:url value="/resources/image/mainIMG.jpg"></spring:url>' title="Google">
</div>
<div>
         <strong id="search">환영합니다! ${id}님!! </strong>
</div>

<div id="box">
     <input id="login" type="button" value="게시판" onClick= " location='list'" style="cursor:pointer"/>
     &nbsp;&nbsp;&nbsp;
     <input id="login" type="button" value="쪽지함" onClick= " location='list'" style="cursor:pointer"/>
</div>
 

</body>
</html>