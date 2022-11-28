<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"> -->
    <!--기본 초기화-->
    <style type="text/css">
        *{
            margin: 100; padding: 50;
            background-color: #121319 ;
            color: #f5f7ff;
            font-family: sans-serif;
        }
        a{ text-decoration: none;  
            color: lightgray;
            cursor: pointer;
        }
        img{ border: 0; }
        li{ display: inline-block; }
    </style>
    
    <!--헤더-->
    <style type="text/css">
        #main-header{
            height: 100px;
            position: relative;
            margin-top: 100px;
        }
        .header-title{
            position: absolute;
            width: 400px; height: 100px;
            left: 50%; 
            margin-left: -150px;
        }
        .header-menu{
            float: right; 
            margin-top: 10px;
            margin-right: 20px;
        }
        ul{
            float: left; width: 80px; text-align: center; margin-right: 10px;
        }
    </style>
    <!--마이페이지-->
    <style>
        h2{             
            margin-left: 100px;
            margin-top: 100px;
            color : rgb(107, 205, 165);
        }
        h3{ 
            margin-left: 120px;
            margin-top: 50px;
            color : rgb(18, 146, 95);
        }
        .infodetail{
            margin-left: 150px;
            margin-top: 50px;
        }
       
        .review {
            border-collapse: collapse;
            border-spacing: 0;
            margin-left: 150px;
            margin-right:300px;
            border-bottom: 3px solid lightgray;
            margin-top: 30px;
           
        }
       </style> 
</head>
<body>
    <!--헤더-->
    <header id="main-header">
        <div class="header-title">
          <p><a><img width="400" src="src/Logo.png"></a></p>
        </div>
        <nav class="header-menu">
            <ul>
                <li><a href="mymovie/noticelist">공지사항</a></li>
            </ul>
            <ul>
                <li><a href="#">마이페이지</a></li>
            </ul>
        </nav>
    </header>
    <h2>마이페이지</h2>
    <h3>회원정보</h3>
    <div id="info">
        <div class="infodetail">
            <table>
                <tr>
                    <td> name :</td>
                    <td>${dto.membername }</td>
                </tr>
                <tr>
                    <td> i d :</td>
                    <td>${dto.memberid }</td>
                </tr>
                <tr>
                    <td>phone</td>
                    <td>${dto.memberphone }</td>
                </tr>
            </table>
        </div>
    </div>
    <h3>내가 작성한 리뷰</h3>
    <div id="reviews">
        <div class="review">
        	<c:choose>
            	<c:forEach items="" var="dto">
            		<p>${dto.boardtitle }</p>
           			<p>별점 : ${dto.reviewstar }</p>
            		<p>${dto.reviewcontent }</p>
                 </c:forEach>                 
             </c:choose>
        </div>
        <div class="review">
            <p>영화제목이 들어가요</p>
            <p>별점 : 내가 준 별점이 들어가요</p>
            <p>내가 작성한 리뷰내용이 들어가요</p>
        </div>
    </div>
      
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script> -->
</body>
</html>