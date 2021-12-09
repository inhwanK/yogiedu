<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  <!-- Bootstrap CSS File -->
  <link href="/static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/static/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/static/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/static/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/static/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/static/dist/css/style3.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: NewBiz
    Theme URL: https://bootstrapmade.com/newbiz-bootstrap-business-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
  <script src="https://kit.fontawesome.com/b5a3e3ae7e.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>

<body>

  <!--==========================
  Header
  ============================-->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1> -->
        <a href="#intro" class="scrollto"><img src="/static/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#intro">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li>
          <li class="drop-down"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li>
          <li><a href="#contact">Contact Us</a></li>
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="introQ" class="clearfix">
    <div class="container">

      <div class="intro-img">
        <img src="/static/img/qna.jpg" alt="" class="img-fluid">
      </div>

      <div class="intro-info">
        <h2>우리아이 학원은<br><span>요기에듀</span>에서<br>찾아보고 보내세요!</h2>
        <div>
          <a href="#about" class="btn-get-started scrollto">시작하기</a>
          <a href="#services" class="btn-services scrollto">YOGIEDU?</a>
        </div>
      </div>

    </div>
  </section><!-- #intro -->

  <main id="main">

    <main>
      <section class="section-qna u-wrap">
        
          <div class="qna-u">
            <div class="qna-u-title">
              <p>무엇을 도와드릴까요?</p>
            </div>
            <div class="qna-u-search">
              <div class="qna-u-search-icon">
                <i class="fas fa-search"></i>
              </div>
              <div class="qna-u-search-content">
                <input type="text" id="qna-u-search-content-txt"><input type="submit" id="qna-u-search-content-submit" value="찾기">
              </div>
            </div>
            <div class="qna-u-tag">
              <a href="#none"># 수수료</a><a href="#none"># 수강취소</a><a href="#none"># 각종오류</a><a href="#none"># 아님말고</a><a href="#none"># 나도몰라</a>
            </div>
          </div>
        </section>
        <section class="section-qna m-wrap">
          <div class="qna_m" id="qna_m_1">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_layer('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문1</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문2</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문3</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>

          <div class="qna_m" id="qna_m_2" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문4</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문5</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문6</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_3" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문7</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문8</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문9</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_4" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문10</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문11</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문12</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_5" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문13</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문14</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문15</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
          <div class="qna_m" id="qna_m_6" style="display:none;">
            <ul>
              <li><a href="javascript:show_layer('1')">학부모님</a></li>
              <li><a href="javascript:show_later('2')">학생</a></li>
              <li><a href="javascript:show_layer('3')">학원장님</a></li>
              <li><a href="javascript:show_layer('4')">강사님</a></li>
              <li><a href="javascript:show_layer('5')">배너광고</a></li>
              <li><a href="javascript:show_layer('6')">기타</a></li>
            </ul>
            <div class="qna_m-searched"></div>
            <div class="qna_m-line"></div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문16</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답1대답1대답1</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문17</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답2대답2대답2</p>
                </div>
              </div>
              <div class="question">
                <div class="qna_m-q1">
                  <div class="qna_m-q1-q">
                    <i class="fab fa-quora"></i><p>질문18</p>
                  </div>
                  <div class="qna_m-q1-arrow">
                    <a href="#none"><i class="fas fa-chevron-down"></i></a>
                  </div>
                </div>
                <div class="qna_m-a1">
                  <p>A.</p>
                  <p>대답3대답3대답3</p>
                </div>
              </div>
          </div>
        </section>
        <section class="section-qna d-wrap">
        
          <div class="qna-d">
            <div class="qna-d-title">
              <p>상 담 안 내</p>
            </div>
            <div class="qna-d-line"></div>
            <div class="qna-d-content">
              <div class="qna-d-content-l">
                <div class="qna-d-content-l-centername">
                  <p>일반 고객센터</p>
                </div>
                <div class="qna-d-content-l-centernumber">
                  <p>1544-7979</p>
                </div>
              </div>
              <div class="qna-d-content-r">
                <p>어떤거는 문의를 :<br> 오전9시 ~ 오후 6시</p>
                <p>어떤거는 문의를 :<br> 오전10시~ 오후 5시</p>
              </div>
            </div>
            <div class="qna-d-line"></div>
            <div class="qna-d-content">
              <div class="qna-d-content-l">
                <div class="qna-d-content-l-centername">
                  <p>노인 고객센터</p>
                </div>
                <div class="qna-d-content-l-centernumber">
                  <p>1544-0000</p>
                </div>
              </div>
              <div class="qna-d-content-r">
                <p>어떤거는 문의를 :<br> 오전9시 ~ 오후 6시</p>
                <p>어떤거는 문의를 :<br> 오전10시~ 오후 5시</p>
              </div>
            </div>
          </div>
        
      </section>
    </main>

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>NewBiz</h3>
            <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#">About us</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Terms of service</a></li>
              <li><a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem marada parida nodela caramase seza.</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit"  value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>NewBiz</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=NewBiz
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="/static/lib/jquery/jquery.min.js"></script>
  <script src="/static/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/static/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/static/lib/easing/easing.min.js"></script>
  <script src="/static/lib/mobile-nav/mobile-nav.js"></script>
  <script src="/static/lib/wow/wow.min.js"></script>
  <script src="/static/lib/waypoints/waypoints.min.js"></script>
  <script src="/static/lib/counterup/counterup.min.js"></script>
  <script src="/static/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/static/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="/static/lib/lightbox/js/lightbox.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/static/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/static/js/main.js"></script>
  
  <script type="text/javascript">
    function show_layer(qna_m_i){
      document.all.qna_m_1.style.display="none";
      document.all.qna_m_2.style.display="none";
      document.all.qna_m_3.style.display="none";
      document.all.qna_m_4.style.display="none";
      document.all.qna_m_5.style.display="none";
      document.all.qna_m_6.style.display="none";
      
        switch(qna_m_i)
          {
          case '1':
          document.all.qna_m_1.style.display="";
          break;
          case '2':
          document.all.qna_m_2.style.display="";
          break;
          case '3':
          document.all.qna_m_3.style.display="";
          break;
          case '4':
          document.all.qna_m_4.style.display="";
          break;
          case '5':
          document.all.qna_m_5.style.display="";
          break;
          case '6':
          document.all.qna_m_6.style.display="";
          break;
          }
      }
  </script>

</body>
</html>

<!--http://code.jequery.com-->
<!--
document.all.qna_m_3.style.display="none";
document.all.qna_m_4.style.display="none";
document.all.qna_m_5.style.display="none";
document.all.qna_m_6.style.display="none";
          case '3':
          document.all.qna_m_3.style.display="";
          break;
          case '4':
          document.all.qna_m_4.style.display="";
          break;
          case '5':
          document.all.qna_m_5.style.display="";
          break;
          case '6':
          document.all.qna_m_6.style.display="";
          break;
-->