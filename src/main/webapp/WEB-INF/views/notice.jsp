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
  <link href="/static/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/static/css/font-awesome.min.css" rel="stylesheet">
  <link href="/static/css/animate.min.css" rel="stylesheet">
  <link href="/static/css/ionicons.min.css" rel="stylesheet">
  <link href="/static/css/owl.carousel.min.css" rel="stylesheet">
  <link href="/static/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/static/css/style3.css" rel="stylesheet">
  <link href="/static/css/table.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

  <!-- =======================================================
    Theme Name: NewBiz
    Theme URL: https://bootstrapmade.com/newbiz-bootstrap-business-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
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

  
  <section id="introN" class="clearfix">
    <div class="container">
			<div class="notice-img">
				<img src="/static/img/qna.jpg" alt="" style="width:100%;">
			</div>
      
        <div class="navbar navbar-default visible-xs">
          <div class="container-fluid">
            <button class="btn btn-default navbar-btn" data-toggle="collapse" data-target="#filter-sidebar">
              <i class="fa fa-tasks"></i> Toggle Sidebar
            </button>
          </div>
        </div>
        
        <div class="container-fluid">
          <div class="row">
            <!-- filter sidebar -->
            <div id="filter-sidebar" class="col-xs-6 col-sm-2 visible-sm visible-md visible-lg collapse sliding-sidebar">
              <div>
                <h4 data-toggle="collapse" data-target="#group-1">
                  공지사항
                </h4>
                <div id="group-1" class="list-group collapse in">
                  <a class="list-group-item" href="#">
                    <i class="fa fa-dashboard"></i>YOGIEDU 공지
                  </a>
                </div>
              </div>
              
              <div>
                <h4 data-toggle="collapse" data-target="#group-2">
                  <i class="fa fa-sitemap"></i>이벤트
                </h4>
                <div id="group-2" class="list-group collapse in">
                  <a class="list-group-item" href="#">
                    <i class="fa fa-table"></i>진행중인 이벤트
                  </a>
                  <a class="list-group-item" href="#">
                    <i class="fa fa-edit"></i>당첨자 발표
                  </a>
                </div>
              </div>
            </div>
        
            <!-- table container -->
            <div class="col-sm-10" >
              <table class="table table-striped table-hover table-responsive-sm" style="margin-top:10px;">
                <thead>
                  <tr>
                    <th style="text-align:center;">Title</th>
                    <th style="text-align:center;">Artist</th>
                    <th class="align-right" style="text-align:center;">Price</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="valign-middle" data-label="Title">
                      <a href="#">See You Again</a>
                    </td>
                    <td class="valign-middle" data-label="Artist">
                      Wiz Khalifa
                    </td>
                    <td class="valign-middle align-right" data-label="Price">
                      $1.99
                    </td>
                    <td class="valign-middle align-right">
                      <a class="btn btn-default" href="#" data-toggle="tooltip" title="추천하기" data-placement="bottom" data-trigger="hover">
                        <i class="fa fa-thumbs-up"></i>
                        <span class="visible-xs">추천하기</span>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="valign-middle" data-label="Title">
                      <a href="#">See You Again</a>
                    </td>
                    <td class="valign-middle" data-label="Artist">
                      Wiz Khalifa
                    </td>
                    <td class="valign-middle align-right" data-label="Price">
                      $1.99
                    </td>
                    <td class="valign-middle align-right">
                      <a class="btn btn-default" href="#" data-toggle="tooltip" title="추천하기" data-placement="bottom" data-trigger="hover">
                        <i class="fa fa-thumbs-up"></i>
                        <span class="visible-xs">추천하기</span>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="valign-middle" data-label="Title">
                      <a href="#">See You Again</a>
                    </td>
                    <td class="valign-middle" data-label="Artist">
                      Wiz Khalifa
                    </td>
                    <td class="valign-middle align-right" data-label="Price">
                      $1.99
                    </td>
                    <td class="valign-middle align-right">
                      <a class="btn btn-default" href="#" data-toggle="tooltip" title="추천하기" data-placement="bottom" data-trigger="hover">
                        <i class="fa fa-thumbs-up"></i>
                        <span class="visible-xs">추천하기</span>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="valign-middle" data-label="Title">
                      <a href="#">See You Again</a>
                    </td>
                    <td class="valign-middle" data-label="Artist">
                      Wiz Khalifa
                    </td>
                    <td class="valign-middle align-right" data-label="Price">
                      $1.99
                    </td>
                    <td class="valign-middle align-right">
                      <a class="btn btn-default" href="#" data-toggle="tooltip" title="Add to Cart" data-placement="bottom" data-trigger="hover">
                        <i class="fa fa-cart-plus"></i>
                        <span class="visible-xs">Add to Cart</span>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="valign-middle" data-label="Title">
                      <a href="#">See You Again</a>
                    </td>
                    <td class="valign-middle" data-label="Artist">
                      Wiz Khalifa
                    </td>
                    <td class="valign-middle align-right" data-label="Price">
                      $1.99
                    </td>
                    <td class="valign-middle align-right">
                      <a class="btn btn-default" href="#" data-toggle="tooltip" title="Add to Cart" data-placement="bottom" data-trigger="hover">
                        <i class="fa fa-cart-plus"></i>
                        <span class="visible-xs">Add to Cart</span>
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
			</div>
    </div>
  </section>
  <!-- #intro -->


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
  <script src="/static/js/jquery.min.js"></script>
  <script src="/static/js/jquery-migrate.min.js"></script>
  <script src="/static/js/bootstrap.bundle.min.js"></script>
  <script src="/static/js/easing.min.js"></script>
  <script src="/static/js/mobile-nav.js"></script>
  <script src="/static/js/wow.min.js"></script>
  <script src="/static/js/waypoints.min.js"></script>
  <script src="/static/js/counterup.min.js"></script>
  <script src="/static/js/owl.carousel.min.js"></script>
  <script src="/static/js/isotope.pkgd.min.js"></script>
  <script src="/static/js/lightbox.min.js"></script>
  

  <!-- Contact Form JavaScript File -->
  <script src="/static/js/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/static/js/main.js"></script>

	<script>
		(function ($) {

    $(document).ready(function () {
			$(".dropdown-button").dropdown();
			$("#sideNav").click(function(){
				if($(this).hasClass('closed')){
					$('.navbar-side').animate({left: '0px'});
					$(this).removeClass('closed');
					$('#page-wrapper').animate({'margin-left' : '260px'});
					
				}
				else{
						$(this).addClass('closed');
					$('.navbar-side').animate({left: '-260px'});
					$('#page-wrapper').animate({'margin-left' : '0px'}); 
				}
			});
			
					mainApp.initFunction(); 
			});
	
		$(".dropdown-button").dropdown();
		
	}(jQuery));
	
	</script>
  <script>
    if (!isTouchDevice()) {
      $('[data-toggle*="tooltip"]').tooltip();
    }
    
    // utility
    
    function isTouchDevice() {
      return !!('ontouchstart' in window || navigator.msMaxTouchPoints);
    }
  </script>

</body>
</html>