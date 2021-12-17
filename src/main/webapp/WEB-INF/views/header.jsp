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
    	    category: "요기에듀 서비스"
    	  , question: "요기에듀는 어떤 서비스 인가요"
    	  , answer: "내 주위의 학원을 쉽게 찾고 시간표까지 구성해 볼 수 있는 서비스 입니다." 
    	}, { 
    	    category: "요기에듀 서비스"
    	  , question: "무료인가요?"
    	  , answer: "유료화 하여 구독서비스 형태로 제공할 예정입니다." 
    	}, { 
    	    category: "요기에듀 서비스"
    	  , question: "학원등록은 어떻게 하나요"
    	  , answer: "서비스 준비중 이여서 추후 공지해 드리겠습니다" 
    	}, { 
    	    category: "학생"
    	  , question: "회원가입은 어떻게 하나요"
    	  , answer: "상단에 회원가입을 누르세요" 
    	}, { 
    	    category: "학생"
    	  , question: "학원정보가 정확한가요"
    	  , answer: "교육부와 교육학술정보원에서 제공하는 데이터를 사용중입니다." 
    	}, { 
    	    category: "학생"
    	  , question: "업데이트 예정이 있나요"
    	  , answer: "1월중에 업데이트가 있을 예정입니다. 진행되는대로 공지해드리겠습니다." 
    	}, { 
    	    category: "학부모"
    	  , question: "결제방법은 어떤게 있나요"
    	  , answer: "결제 툴이 제공되기 전에는 무료로 사용하시고, 유료 전환 시에 공지해드리겠습니다." 
    	}, { 
    	    category: "학부모"
    	  , question: "시간표 이외에는 어떤 서비스가 있나요"
    	  , answer: "가까운 시일내에 공지해드리겠습니다. 최종적으로는 학생의 등하원관리까지 가능하게 할 예정입니다." 
    	}, { 
    	    category: "학부모"
    	  , question: "페이지를 만드신 목적이 뭔가요?"
    	  , answer: "학원 강사 출신의 기획자가 필요하다고 생각하여 만들게 되었습니다." 
    	}, { 
    	    category: "학원장"
    	  , question: "등록하는 방법을 자세히 알려주세요"
    	  , answer: "회원가입 하시고 어쩌고 저쩌고" 
    	}, { 
    	    category: "학원장"
    	  , question: "수수료 정책은 어떻게 되나요"
    	  , answer: "결제서비스가 구현된 이후에 월, 분기, 년 등의 구독 서비스 형태로 제공될 예정입니다." 
    	}, { 
    	    category: "학원장"
    	  , question: "추후 추가될 기능이 어떤게 있나요"
    	  , answer: "강의가 학원에만 종속되어있을 뿐 아니라 강사님들에게도 들어가게 하여 평점 및 리뷰를 남길 수 있게 할 예정입니다." 
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
                    <li class="active"><a href="${contextPath}/">Home</a></li>
                    <li><a href="${contextPath}/noticeList">공지사항</a></li>
                    <li><a href="${contextPath}/academyEnroll">학원등록</a></li>
                     <li><a href="${contextPath}/lectureEnroll">강의등록</a></li>
                    <li><a href="${contextPath}/academySearch">학원찾기</a></li>
                    <li><a href="${contextPath}/academy">마이페이지</a></li>
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