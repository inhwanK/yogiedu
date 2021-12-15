<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%=request.getContextPath() %>" />

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" integrity="sha512-c42qTSw/wPZ3/5LBzD+Bw5f7bSF2oxou6wEb+I/lqeaKV5FDIfMvvRp772y4jcJLKuGUOpbJMdg/BTl50fJYAw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    
  <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>

    <!-- Main Stylesheet File -->
    <link href="/static/css/main.css" rel="stylesheet">
    
        <script type="text/javascript" charset="utf-8">
    // answer 항목에 Markdown 문법을 지원 합니다.
    var FAQ = [
      { 
      	  category: "General questions"
      	, question: "question 1"
      	, answer: "answer 1" 
      }, { 
      	  category: "General questions"
      	, question: "question 2"
      	, answer: "answer 2" 
      }, { 
      	  category: "General questions"
      	, question: "question 3"
      	, answer: "answer 3" 
      }, { 
          category: "markdown"
        , question: "text style"
        , answer: "*bold*, **italic**, ~~strike~~" 
      }, { 
          category: "markdown"
        , question: "table example"
        , answer: "table\n\n" 
                + "| header 1 | header 2 |\n"
                + "|:--------:|:--------:|\n"
                + "|   item 1 |   item 2 |\n"
                + "|   item 3 |   item 3 |\n"
      }, { 
          category: "link"
        , question: "html template"
        , answer: "[bootstrap-template](http://www.prepbootstrap.com/bootstrap-template/faq-example)"
      }, { 
          category: "link"
        , question: "markdown paser"
        , answer: "[marked](https://github.com/chjj/marked)"
      }, { 
          category: "link"
        , question: "my bolg"
        , answer: "[newtype's blog](http://www.newtype.pe.kr/)"
      }
    ]
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

            <nav class="main-nav float-right d-none d-lg-block">
                <ul>
                    <li class="active"><a href="#intro">Home</a></li>
                    <li><a href="${contextPath}/noticeList">공지사항</a></li>
                    <li><a href="${contextPath}/academy">학원찾기</a></li>
                    <li><a href="#">마이페이지</a></li>
                  	<li><a href="${contextPath}/qna">Q&A</a></li>
                    <li class="drop-down"><a href="">Quick Menu</a>
                        <ul>
                            <li><a href="#about">About us</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#portfolio">Portfolio</a></li>
                            <li><a href="#team">Team</a></li>
                            <li><a href="#contact">Contact Us</a></li>
                        </ul>
                    </li>
                    <li><a href="#">회원가입</a></li>
                    <li><a href="#">로그인</a></li>
                </ul>
            </nav>

        </div>
    </header>