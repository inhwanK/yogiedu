<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/static/css/academy/style.css">
<link rel="stylesheet" href="/static/css/academy/bootstrap.css">
<link rel="stylesheet" href="/static/css/academy/main.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->


<!-- js -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="/static/js/academy/academySearch.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<meta charset="UTF-8">


  <style>
    #sessionImg{
      height:259px;
      background: url("../resources/img/Tlogo2_B.png") no-repeat;
      background-position: center;
      margin:0 auto;
    }
    @import url(https://fonts.googleapis.com/css?family=Lato:300);
    .box:nth-child(2n-1){
      background-color: rgba(0,0,0,0.05);
    }
    
    .box{
      display: inline-block;
      margin-top:30px;
      position: relative;
      transition: all .2s ease;
    }
    /* MEDIA QUERIES */
    @media (max-width: 700px){
      .box{
        width: 50%;
      }
    
      .box:nth-child(2n-1){
        background-color: inherit;
      }
    
      .box:nth-child(4n),.box:nth-child(4n-3) {
        background-color: rgba(0,0,0,0.05);
      }
    
    }
    
    @media (max-width: 420px){
      .box{
        width: 100%;
      }
    
      .box:nth-child(4n),.box:nth-child(4n-3){
        background-color: inherit;
      }
    
      .box:nth-child(2n-1){
        background-color:rgba(0,0,0,0.05);
      }
    
    }
    
    
.loader4{
  position: relative;
  width: 600px;
  height: 80px;
  background-color: rgba(255,255,255,0.2);
}

.loader4:before{
  content: "";
  position: absolute;
  background-color: rgb(191, 202, 216);
  top: 0px;
  left: 0px;
  height: 64px;
  width: 0px;
  z-index: 0;
  opacity: 1;
  -webkit-transform-origin:  100% 0%;
      transform-origin:  100% 0% ;
  -webkit-animation: loader4 10s ease-in-out infinite;
      animation: loader4 10s ease-in-out infinite;
}

.loader4:after{
  content: "LOADING ...";
  color: rgb(13, 10, 235);
  font-family:  Lato,"Helvetica Neue" ;
  font-weight: 800;
  font-size: 32px;
  position: absolute;
  width: 100%;
  height: 20px;
  line-height: 64px;
  left: 0;
  top: 0;
}

@-webkit-keyframes loader4{
    0%{width: 0px;}
    70%{width: 100%; opacity: 1;}
    90%{opacity: 0; width: 100%;}
    100%{opacity: 0;width: 0px;}
}

@keyframes loader4{
    0%{width: 0px;}
    70%{width: 100%; opacity: 1;}
    90%{opacity: 0; width: 100%;}
    100%{opacity: 0;width: 0px;}
}

  </style>
  <%@include file="/WEB-INF/views/header.jsp"%>
  
  <section id="introLA" class="login-block" >
	  <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6" id="sessionImg">
              
          </div>
        </div>
	      <div class="row">
	      	
	          <div class="col-sm-6">
	              <form class="md-float-material form-material" action="#" method="POST">
	                  <div class="auth-box card">
	                      <div class="card-block">
	                          <div class="row">
	                              <div class="col-md-12"> <span class="btn btn-lg btn-google btn-block text-uppercase btn-outline" href="#" style="font-weight:700;"><img src="https://img.icons8.com/color/16/000000/google-logo.png"> 구글 로그인 중입니다 </span> </div>
	                          </div>
	                      </div>
	                  </div>
	              </form>
                <div class="box">
                  <div class="loader4"></div>
                </div>
	          </div>
	      </div>
	  </div>
    

	</section>
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>