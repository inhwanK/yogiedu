<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

  

  <section id="introN" class="clearfix">
    <div class="container">
			<div class="notice-img">
				<img src="/static/img/qna.jpg" alt="" style="width:100%;">
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
                  <a class="list-group-item" href="#" style="padding:5px;">
                    <i class="fa fa-dashboard"></i>YOGIEDU 공지
                  </a>
                </div>
              </div>
              
              <div>
                <h4 data-toggle="collapse" data-target="#group-2">
                  <i class="fa fa-sitemap"></i>이벤트
                </h4>
                <div id="group-2" class="list-group collapse in">
                  <a class="list-group-item" href="#" style="padding:5px;">
                    <i class="fa fa-table"></i>진행중인 이벤트
                  </a>
                  <a class="list-group-item" href="#" style="padding:5px;">
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
  </section>
  
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
  
  <jsp:include page="footer.jsp"></jsp:include>
