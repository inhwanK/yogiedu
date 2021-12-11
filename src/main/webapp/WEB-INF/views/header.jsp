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
    <link rel="icon" href="/static/img/Tlogo2_B.png">
    <link rel="apple-touch-icon" href="/static/img/Tlogo2_b.png">

    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700">

    <!-- Bootstrap CSS File -->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">

    <!-- Libraries CSS Files -->
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/css/animate.min.css">
    <link rel="stylesheet" href="/static/css/ionicons.min.css">
    <link rel="stylesheet" href="/static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/css/lightbox.min.css">
    <link rel="stylesheet" href="https://bootstrapmade.com/demo/template/NewBiz/assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css" />
  	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css" />
  	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.css" />
  	<link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.1/css/select.dataTables.css" />
  	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.5/css/responsive.dataTables.css" />
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

  
    <!-- Main Stylesheet File -->
    <link rel="stylesheet" href="/static/css/style3.css" type="text/css">
    <link rel="stylesheet" href="/static/css/table.css">
</head>

<body>
    <header id="header" class="fixed-top">
        <div class="container">

            <div class="logo float-left">
                <a href="#intro" class="scrollto"><img src="/static/img/Tlogo2_B.png" alt="" class="img-fluid" style="width:100%;"></a>
            </div>

            <nav class="main-nav float-right d-none d-lg-block">
                <ul>
                    <li class="active"><a href="#intro">Home</a></li>
                    <li><a href="#">예약하기</a></li>
                    <li><a href="#">학원찾기</a></li>
                    <li><a href="#">등록하기</a></li>
                    <li><a href="${contextPath}/notice">내시간표</a></li>
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
