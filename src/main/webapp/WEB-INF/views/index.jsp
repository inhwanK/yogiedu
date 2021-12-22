<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $(function() {
        var contextPath = "${contextPath}";

        AOS.init({
            easing: 'ease-out-back',
            duration: 1000
        });
        
        
        $.ajax({
            url: contextPath + "/api/academyList",
            method: "get",
            dataType: "json",
            success: function(json) {
                //<div class="col-lg-3 col-6 text-center mainAcaNm">
                //<span data-toggle="counter-up"></span>
                //<p>등록된 학원</p>
                //</div>
                var list = "";
                var dataLength = json.length;
                for (i = 0; i < json.length; i++) {
                    list += "<div class='swiper-slide'>";
                    list += "<div class='testimonial-item'>";
                    list += "<h3 id='title' style='border-bottom:2px solid #000000; border-left:10px solid #000000'>" + json[i].acaNm + "</h3>";
                    list += "<h4 id='loacation'><i class='fa fa-map-marker'></i>" + json[i].faRdnma + "</h4>";
                    list += "<p id='subject'>" + json[i].leCrseName + "</p>";
                    list += "</div>";
                    list += "</div>";
                    console.log(json[i].acaNm);
                }
                $("div.swiper-wrapper").append(list);
                $("div.mainAcaNm span").append(dataLength);

                var aNs = 0;
                for (i = 0; i < dataLength; i++) {
                    if (json[i].fieldName === "예능(대)")
                        aNs++;
                }
                console.log(aNs);
                $({
                    val: 0
                }).animate({
                    val: aNs
                }, {
                    duration: aNs,
                    step: function() {
                        var num = numberWithComas(Math.floor(this.val));
                        $(".mainAns span").text(num);
                    },
                    complete: function() {
                        var num = numberWithComas(Math.floor(this.val));
                        $(".mainAns span").text(num);
                    }
                });

                function numberWithComas(x) {
                    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                }
                $("div.mainAns span").append(aNs);
                //$("div.testimonial-item").append(list);
                //$("div.swiper-slide").append(list);

                var bos = "";
                for (i = 0; i < dataLength; i++) {
                    if (json[i].leCrseName === "보습")
                        bos++;
                }
                $("div.bos span").append(bos);

                var sus = 0;
                for (i = 0; i < dataLength; i++) {
                    if (json[i].adminDistName == "수성구")
                        sus++;
                }
                $("div.sus span").append(sus);
            }

        });

    });
</script>
<%@include file="/WEB-INF/views/header.jsp"%>

<section id="introQ" class="clearfix">
    <div class="container">

    	<div class="intro-img">
	        <img src="/static/img/intro-img.svg" alt="" class="img-fluid">
		</div>

        <div class="intro-info">
            <h2>우리아이 학원!<br><span>요기에듀</span>에서<br>찾아보고 보내세요!</h2>
        </div>

    </div>
</section>

<main id="main">

    <section id="about">
        <div class="container">

            <header class="section-header">
                <h3>YOGIEDU는</h3>
                <p>우리 아이들을 위한 최적의 학원을 찾아드리는 서비스 입니다.<br> 더 이상 고민하지말고 찾아보고 고르세요!</p>
            </header>

            <div class="row about-container">

                <div class="col-lg-6 content order-lg-1 order-2">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>

                    <div class="icon-box wow fadeInUp">
                        <div class="icon"><i class="fa fa-calendar"></i></div>
                        <h4 class="title"><a href="">장바구니 시간표</a></h4>
                        <p class="description">일반 쇼핑몰의 장바구니 기능과 유사한 형태로, 여러 시간표를 만들어 놓고 비교하여 선택할 수 있게 구현하였습니다. 필요한 기능이 있으시다면 저희에게 피드백을 주세요!</p>
                    </div>

                    <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
                        <div class="icon"><i class="fa fa-address-card"></i></div>
                        <h4 class="title"><a href="">학원 소개</a></h4>
                        <p class="description">각 학원의 원장 혹은 관계자분들이 직접 작성한 소개란으로, 저희가 일절 손대지 않은 날것으로 정확한 정보를 받아 보세요!</p>
                    </div>

                    <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
                        <div class="icon"><i class="fa fa-comments"></i></div>
                        <h4 class="title"><a href="">학부모들의 리뷰</a></h4>
                        <p class="description">미구현 기능으로 학부모님들께서 직접 리뷰를 작성하고 볼 수 있게 할 예정입니다. 결제정보를 받아 쓰므로 댓글알바등의 잘못된 정보에서 벗어날 수 있습니다!</p>
                    </div>

                </div>

                <div class="col-lg-6 background order-lg-2 order-1 wow fadeInUp">
                    <img src="/static/img/about-img.svg" class="img-fluid" alt="">
                </div>
            </div>

            <div class="row about-extra">
                <div class="col-lg-6 wow fadeInUp">
                    <img src="/static/img/about-extra-1.svg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 wow fadeInUp pt-5 pt-lg-0">
                    <h4>동네에 아는 사람도 없고, <br>우리아이 학원을 아무데나 보낼수는 없고.</h4>
                    <p>
                        개발팀에 실제 학원 강사 출신이 포함되어있습니다. 현장에서의 상담 경험을 토대로 학부모님들의 가려운 곳을 긁어드리겠습니다.
                    </p>
                    <p>
                        단순히 학원을 보는것 뿐 만 아니라, 시간표도 작성해 볼 수 있고 같은 입장의 학부모님들의 생생한 리뷰를 통해 좀 더 좋은 선택을 도와드리겠습니다.
                    </p>
                </div>
            </div>


        </div>
    </section>

    <section id="services" class="section-bg">
        <div class="container" data-aos="fade-up">

            <header class="section-header">
                <h3>제공하는 서비스</h3>
                <p>여러가지 서비스를 준비하였습니다. 일단 맛보고 즐기세요!</p>
            </header>

            <div class="row justify-content-center">

                <div class="col-md-6 col-lg-5" data-aos="zoom-in" data-aos-delay="100">
                    <div class="box">
                        <div class="icon"><i class="bi bi-briefcase" style="color: #ff689b;"></i></div>
                        <h4 class="title"><a href="">생생 리뷰</a></h4>
                        <p class="description">어떤 학원인지 학부모님들의 리뷰를 통해 따져보고, 고민해보세요!</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-5" data-aos="zoom-in" data-aos-delay="200">
                    <div class="box">
                        <div class="icon"><i class="bi bi-card-checklist" style="color: #e9bf06;"></i></div>
                        <h4 class="title"><a href="">학원 리뷰하기</a></h4>
                        <p class="description">아이를 학원에 보낸것을 토대로, 경험을 이야기 해주세요! <br> 다른 학부모님들에게 큰 도움이 됩니다</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-5" data-aos="zoom-in" data-aos-delay="100">
                    <div class="box">
                        <div class="icon"><i class="bi bi-bar-chart" style="color: #3fcdc7;"></i></div>
                        <h4 class="title"><a href="">학원소개</a></h4>
                        <p class="description">학부모님들의 리뷰 뿐만 아니라 각각의 학원에서도 자신들을 소개 하고 있습니다</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-5" data-aos="zoom-in" data-aos-delay="200">
                    <div class="box">
                        <div class="icon"><i class="bi bi-binoculars" style="color:#41cf2e;"></i></div>
                        <h4 class="title"><a href="">시간표 짜기</a></h4>
                        <p class="description">여러 학원을 보낼 때 아이 동선도 고려하고 쉬는시간도 고려해서 좀 더 좋은 시간표를 짜실 수 있게 한눈에 알아볼 수 있는 시간표를 제공해 드립니다</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-5" data-aos="zoom-in" data-aos-delay="100">
                    <div class="box">
                        <div class="icon"><i class="bi bi-brightness-high" style="color: #d6ff22;"></i></div>
                        <h4 class="title"><a href="">저렴한 사용료</a></h4>
                        <p class="description">학원을 많이 보내신다고 해서 돈을 더 받지 않습니다.<br>넷플릭스나, 유투브처럼 구독료를 내시되 저렴하게 사용하세요</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-5" data-aos="zoom-in" data-aos-delay="200">
                    <div class="box">
                        <div class="icon"><i class="bi bi-calendar4-week" style="color: #4680ff;"></i></div>
                        <h4 class="title"><a href="">고객센터</a></h4>
                        <p class="description">불편한 점이 있으시다면 언제든지 저희 고객센터에 글을 남겨주세요!<br>최선을 다해 도와드리겠습니다</p>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <section id="why-us" class="wow fadeIn">
        <div class="container" data-aos="fade-up">
            <header class="section-header">
                <h3>Why YOGIEDU?</h3>
                <p>왜 요기에듀를 선택하여야 할까요?</p>
            </header>

            <div class="row row-eq-height justify-content-center">

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-language"></i>
                        <div class="card-body">
                            <h5 class="card-title">건전한 리뷰문화</h5>
                            <p class="card-text">학원을 수강한 학부모님들만 리뷰를 남길 수 있어, 생생하고 정확한 리뷰만 제공해드립니다</p>

                        </div>
                    </div>
                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-diamond"></i>

                        <div class="card-body">
                            <h5 class="card-title">낮은 이용료</h5>
                            <p class="card-text">필요한 서비스를 제공하기 위해 최소한의 이용료만 받습니다.</p>

                        </div>
                    </div>
                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card wow bounceInUp">
                        <i class="fa fa-object-group"></i>
                        <div class="card-body">
                            <h5 class="card-title">발전 가능성</h5>
                            <p class="card-text">위치기반 서비스나, QR체크인을 통한 우리아이가 학원에 잘 도착했는지 등의 서비스를 기획중입니다 </p>

                        </div>
                    </div>
                </div>

            </div>

            <div class="row counters">

                <div class="col-lg-3 col-6 text-center mainAcaNm">
                    <span data-toggle="counter-up"></span>
                    <p>등록된 학원</p>
                </div>

                <div class="col-lg-3 col-6 text-center mainAns">
                    <span data-toggle="counter-up"></span>
                    <p>예체능학원 수</p>
                </div>

                <div class="col-lg-3 col-6 text-center bos ">
                    <span data-toggle="counter-up"></span>
                    <p>보습학원 수</p>
                </div>

                <div class="col-lg-3 col-6 text-center sus">
                    <span data-toggle="counter-up"></span>
                    <p>수성구 학원 수</p>
                </div>

            </div>

        </div>
    </section>
    <!-- 
    <section id="portfolio" class="clearfix">
        <div class="container" data-aos="fade-up">

            <header class="section-header">
                <h3 class="section-title">최근에 개설된 강좌</h3>
            </header>

            <div class="row" data-aos="fade-up" data-aos-delay="100">
                <div class="col-lg-12">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-app">App</li>
                        <li data-filter=".filter-card">Card</li>
                        <li data-filter=".filter-web">Web</li>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="/static/img/app1.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">App 1</a></h4>
                            <p>App</p>
                            <div>
                                <a href="/static/img/app1.jpg" data-gallery="portfolioGallery" title="App 1" class="portfolio-lightbox link-preview"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <div class="portfolio-wrap">
                        <img src="/static/img/web3.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Web 3</a></h4>
                            <p>Web</p>
                            <div>
                                <a href="/static/img/web3.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="Web 3"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="/static/img/app2.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">App 2</a></h4>
                            <p>App</p>
                            <div>
                                <a href="/static/img/app2.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="App 2"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <div class="portfolio-wrap">
                        <img src="/static/img/card2.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Card 2</a></h4>
                            <p>Card</p>
                            <div>
                                <a href="/static/img/card2.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="Card 2"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <div class="portfolio-wrap">
                        <img src="/static/img/web2.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Web 2</a></h4>
                            <p>Web</p>
                            <div>
                                <a href="/static/img/web2.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="Web 2"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="/static/img/app3.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">App 3</a></h4>
                            <p>App</p>
                            <div>
                                <a href="/static/img/app3.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="App 3"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <div class="portfolio-wrap">
                        <img src="/static/img/card1.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Card 1</a></h4>
                            <p>Card</p>
                            <div>
                                <a href="/static/img/card1.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="Card 1"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                    <div class="portfolio-wrap">
                        <img src="/static/img/card3.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Card 3</a></h4>
                            <p>Card</p>
                            <div>
                                <a href="/static/img/card3.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="Card 3"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                    <div class="portfolio-wrap">
                        <img src="/static/img/web1.jpg" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4><a href="portfolio-details.html">Web 1</a></h4>
                            <p>Web</p>
                            <div>
                                <a href="/static/img/web1.jpg" class="portfolio-lightbox link-preview" data-gallery="portfolioGallery" title="Web 1"><i class="bi bi-plus"></i></a>
                                <a href="portfolio-details.html" class="link-details" title="More Details"><i class="bi bi-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
     -->
    <section id="testimonials" class="section-bg">
        <div class="container">

            <header class="section-header">
                <h3>회원 학원 목록</h3>
            </header>

            <div class="row justify-content-center">
                <div class="col-lg-8">

                    <div class="testimonials-slider swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <h3 id='title'></h3>
                                    <h4 id='location'></h4>
                                    <p id='subject'></p>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="swiper-pagination"></div> -->
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section id="team">
        <div class="container">
            <div class="section-header">
                <h3>개발자</h3>
                <p>저희를 소개합니다</p>
            </div>

            <div class="row">

                <div class="col-lg-3 col-md-6 wow fadeInUp">
                    <div class="member">
                        <img src="/static/img/견종빈.jpg" class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>견종빈</h4>
                                <span>기획</span>
                                <div class="social">
                                    <a href="#" title="010-5128-3505"><i class="fa fa-phone"></i></a>
                                    <a href="https://github.com/jbGyeon"><i class="fa fa-github"></i></a>
                                    <a href="https://www.instagram.com/jongbin.kyun/"><i class="fa fa-instagram"></i></a>
                                    <a href="#" title="kevin0209@naver.com"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 wow fadeInUp" >
                    <div class="member">
                        <img src="/static/img/김인표.jpg" class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>김인표</h4>
                                <span>프런트엔드</span>
                                <div class="social">
                                    <a href="#" title="010-4572-9384"><i class="fa fa-phone"></i></a>
                                    <a href="https://github.com/kiminpyo"><i class="fa fa-github"></i></a>
                                    <a href="https://www.instagram.com/innnnnnpyooooo"><i class="fa fa-instagram"></i></a>
                                    <a href="#" title="rladlsvy2448@naver.com"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="member">
                        <img src="/static/img/김인환.png" class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>김인환</h4>
                                <span>백엔드, DB</span>
                                <div class="social">
                                    <a href="#" title="010-91986529"><i class="fa fa-phone"></i></a>
                                    <a href="https://github.com/inhwanK"><i class="fa fa-github"></i></a>
                                    <a href="https://www.instagram.com/nani_inaning"><i class="fa fa-instagram"></i></a>
                                    <a href="#" title="inhan1009@naver.con"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="member">
                        <img src="/static/img/이민기.jpg" class="img-fluid" alt="">
                        <div class="member-info">
                            <div class="member-info-content">
                                <h4>이민기</h4>
                                <span>백엔드</span>
                                <div class="social">
                                    <a href="#" title="010-5430-7649"><i class="fa fa-phone"></i></a>
                                    <a href="https://github.com/lamalli"><i class="fa fa-github"></i></a>
                                    <a href="https://www.instagram.com/__mingi2/"><i class="fa fa-instagram"></i></a>
                                    <a href="#" title="mnmg4444@gmail.com"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <section id="clients" class="section-bg">

        <div class="container">

            <div class="section-header">
                <h3>사용된 기술</h3>
                <p>저희 아이디어를 완성시키기 위해 사용한 기술 들입니다</p>
            </div>

            <div class="row no-gutters clients-wrap clearfix wow fadeInUp">

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/bootstrap.jpg" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/eclipse.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/github.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/java8_logo.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/mysql.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/springboot.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/htmlNcss.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo">
                        <img src="/static/img/javascript.png" class="img-fluid" alt="">
                    </div>
                </div>

            </div>

        </div>

    </section>

    <section id="contact">
        <div class="container-fluid">

            <div class="section-header">
                <h3>Contact Us</h3>
            </div>

            <div class="row wow fadeInUp">

                <div class="col-lg-6">
                    <div class="map mb-4 mb-lg-0">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.844479320568!2d128.73385481621958!3d35.87732788014897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35660b626ef7bf91%3A0xed9348a5a7daefae!2z7LKo64uo7KCV67O07Ya17Iug7Jy17ZWp7IKw7JeF6riw7Iig7JuQ!5e0!3m2!1sko!2skr!4v1638856209764!5m2!1sko!2skr" frameborder="0" style="border:0; width: 100%; height: 375px;" allowfullscreen="" aria-hidden="false"></iframe>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-md-3 info">
                            <i class="fa fa-map-marker"></i>
                            <p>동내로 70, 대구 동구</p>
                        </div>
                        <div class="col-md-3 info">
                            <i class="fa fa-envelope"></i>
                            <p>yogieduContact@gmail.com</p>
                        </div>
                        <div class="col-md-3 info">
                            <i class="fa fa-mobile"></i>
                            <p>+82 010 5128 3505</p>
                        </div>
                    </div>

                    <div class="form">
                        <div id="sendmessage">메세지 전송에 성공하셨습니다.!</div>
                        <div id="errormessage"></div>
                        <form action="" method="post" role="form" class="contactForm">
                            <div class="form-row">
                                <div class="form-group col-lg-6">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-lg-6">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                <div class="validation"></div>
                            </div>
                            <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
                        </form>
                    </div>
                </div>

            </div>

        </div>
    </section>

</main>
<%@include file="/WEB-INF/views/footer.jsp"%>