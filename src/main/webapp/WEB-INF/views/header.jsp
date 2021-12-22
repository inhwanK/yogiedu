<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="<%=request.getContextPath() %>" />
<c:set var="user" value="<%=session.getAttribute(\"user\")%>" />

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>YOGIEDU</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="/static/img/favicon.png" rel="icon">
    <link href="/static/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" integrity="sha512-c42qTSw/wPZ3/5LBzD+Bw5f7bSF2oxou6wEb+I/lqeaKV5FDIfMvvRp772y4jcJLKuGUOpbJMdg/BTl50fJYAw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>

    <!-- Main Stylesheet File -->
    <link href="/static/css/main.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
    $(function(){

    	var user = "${user}";
    	var userName = "${user.userName}";
    	
    	console.log("유저 > "+"${user.userName}");
    	console.log(""+user);
    	
    	if(userName != ""){
    		$("li#login").css("display","none");
    		$("li#logout").css("display","block");
    		$("span#login-member").css("display","block");
    	}else{
    		$("li#login").css("display","block");
    		$("li#logout").css("display","none");
    		$("span#login-member").css("display","none");
    	}
    	
    });
        
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/marked/0.3.2/marked.js"></script>
</head>

<body>
    <header id="header" class="fixed-top">
        <div class="container">
            <div class="logo float-left">
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1> -->
                <a href="${contextPath}/" class="scrollto"><img src="/static/img/Tlogo2_B.png" alt="" class="img-fluid"></a>
            </div>

            <nav id="navbar" class="navbar float-right d-lg-block">
                <ul>
<!--                 	<li class="dropdown"><a href="">Quick Menu</a> -->
<!--                         <ul> -->
<!--                             <li><a href="#about">About us</a></li> -->
<!--                             <li><a href="#services">Services</a></li> -->
<!--                             <li><a href="#portfolio">Portfolio</a></li> -->
<!--                             <li><a href="#team">Team</a></li> -->
<!--                             <li><a href="#contact">Contact Us</a></li> -->
<!--                         </ul> -->
<!--                     </li> -->
                    <li class="active"><a href="${contextPath}/">Home</a></li>
                    <li><a href="${contextPath}/qna">공지사항</a></li>
                    <li><a href="${contextPath}/noticeList">Q & A</a></li>
                    <li><a href="${contextPath}/academySearch">학원찾기</a></li>
                    <li class="dropdown"><a href="">등록하기</a>
                    	<ul>
                            <li><a href="${contextPath}/academyEnroll">학원등록</a></li>
                            <li><a href="${contextPath}/academyLectureEnroll">강의등록</a></li>
                        </ul>
                    </li>   
                    <li><a href="${contextPath}/academy">마이페이지</a></li>
                    <li id="login" style="margin-left:10px;">
                    	<a style="padding-left:10px; padding-right:10px; color:white; font-weight:600;"href="/oauth2/authorization/google" class="btn btn-Info btn-lg btn-google btn-block text-uppercase btn-outline">
                    	<img src="https://img.icons8.com/color/16/000000/google-logo.png">
                    	<span>구글로그인</span>
                    	</a>
                    </li>
                    <li id="logout" style="display:none;">
                    	<a href="/logout">로그아웃</a>
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
<span id="login-member" style="display:none; margin:0; font-size:14px;position:absolute; top:0;right:10%;">${user.userName}님 안녕하세요!</span>
        </div>
    </header>

 