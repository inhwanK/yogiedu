<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>


 
  <script type="text/javascript">

  
  
  $(function() {

		
	    var contextPath = "${contextPath}";
		var acaIdx = "${acaIdx}";
		var lectureIdx = "${lectureIdx}";

			console.log(${"acaIdx"})
		
	
		
		$.ajax({
	    url : contextPath+ "/api/lecture/academy?acaIdx=" + acaIdx,
	    method : "get",
	    dataType : "json",
	    success: function(json) {
	   console.log(json);
	    console.log("success");
	    
	    
	    $("#title").append(json[0].lectureName);
	   	$("#tel").append(json[0].teacherName);
	
	    
	    	
	    },
		error: function(){
				console.log("fail");
		}
			
		});
		
  });
  </script>  
	    
  <body>
	 <div id="container">
     <form class="form-enroll" id="form">
             <div class="enroll-name-wrap ">
                 <h1>학원 등록하기</h1>
                 
                     
                     <div class="enroll-name-tit" id="title" >
                        <h3>학원명*</h3>
                        <p>(실제 학원명을 입력해주세요.)</p>
                     </div>
                     
 
            
                     
                     <div class="enroll-phone-tit" id="tel">
                         
                         <h3>학원 전화번호</h3>
                         
                     </div>
                     
                     
                     <div class="enroll-area-tit" id="area" >
                         <h3>지역</h3>
                     </div>
                     
 
                     <div class="enroll-adress-tit" id="adress">
                         <h3>학원 상세주소</h3>
                     </div>
                     
                    
                        
 
                     <div class="enroll-intro-tit" id="introduce">
                         <h3>학원 소개</h3>

                     </div>
                    	<div class="enroll-grade" >
                     
                    	</div>
                </div>
          </form>
         
							<button id="delete" class="btn btn-primary" >삭제</button>
							<button id="cancel" class="btn btn-primary">돌아가기</button>
							<button id="lecture" class="btn">강의 만들기</button>
    </div>
                
</body>
  
