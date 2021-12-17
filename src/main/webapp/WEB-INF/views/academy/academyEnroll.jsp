<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />


<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">

 /*  $(function(){
    $('#submit').on("click",function () {

        var contextPath = "${contextPath}";

            var data={
                    ACA_ASNUM : $("#inputEmail").val(),
                    ACA_NM: $("#inputPassword").val()
                    
            };
       
        $.ajax({
            type: "post",
            url: "/api/academy",
            data: JSON.stringify(data),
            dataType: 'json',
            contentType:"application/json; charset=utf-8",
            success: function (data) {
                alert("success");
                console.log(data);
            },
            error: function (request, status, error) {
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

            }
        });
    });
    
  
});  */
 
$(function(){
		
	var a;
	
	
	
	
	
    
    	 $('#reg').on("click",function () {
    		    
				var contextPath = "${contextPath}";
			$("")
			
				
				if($("#inputName").val() == "" || $("#inputArea").val() == "" || $("#inputAdress").val() == ""){
 					
 					alert("안돼 돌아가");
 					return;
 				}
				//ㅁㅁㅁㄴㅁㄹㄴㅁㄹㄴㅁㄹㄴㅁㄹ
				
				var conf = confirm("등록하시겠습니까?");
				if(conf){
 				
				
				
     		var data={
     				
     		 "ACA_ASNUM" : $("#inputName").val(),
			 	"ADMST_ZONE_NM" :$("#inputArea").val(),
			  "FA_RDNMA":$("#inputAdress").val(),
			  "ESTBL_YMD": $("#inputContent").val()
			
     		}
 
      	
     		  console.log($("#inputName").val());
 		
					var acaIdx = "${acaIdx}";
	             
	        $.ajax({
	            type: "post",
	            url: contextPath + "/api/academy",
	            data: JSON.stringify(data),
	            dataType: 'json',
	            contentType:"application/json; charset=utf-8",
	            success: function (data) {
	              
	            	alert("success");
	                console.log(data);
	                window.location.href = contextPath + "/academy?acaIdx=" + acaIdx;
	            
	           
	            },
	            error: function (request, status, error) {
	                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	
	            }
	        })
				}
		}) 
    
    
   
    
});


function NoMultiChk(chk){
	 var obj = document.getElementsByName("box");
	console.log(obj);
}
		      
    	 
     
     
		            
             
        
            
            
 


</script>
<!-- <body>
 <div id="container" style="width: 30%; height: 80px; 
 margin-left: 30%; margin-top: 10%;">
 <form class="form-signin" id="form">
     <h2 class="form-signin-heading">로그인</h2>
     <label for="inputEmail" class="sr-only">Email address</label>
     <input type="text" name="ACA_ASNUM" id="inputEmail" class="form-control" required autofocus>
     <label for="inputPassword" class="sr-only">Password</label>
     <input type="text" name="ACA_NM" id="inputPassword" class="form-control"  required>
     <label for="inputEmail" class="sr-only">subject</label>
     <input type="text" name="" id="inputEmail" class="form-control" required autofocus>
     <div>
         <label>

         </label>
     </div>
     <button class="btn btn-lg btn-primary btn-block" id="submit" type="button">Sign in</button>
 </form>
 </div>
</body>
 -->
 <body>
    <div id="container">
    <form class="form-enroll" id="form">
            <div class="enroll-name-wrap ">
                <h1>학원 등록하기</h1>
                <div>
                    
                    <div class="enroll-name-tit" >
                       <h3>학원명*</h3>
                       <p>(실제 학원명을 입력해주세요.)</p>
                    </div>
                    <div class="enroll-name " >
                        <input type="text" name="ACA_NM" id="inputName" style="width:50%;" >
                    </div>

           
                    
                    <div class="enroll-phone-tit" >
                        
                        <h3>학원 전화번호</h3>
                        
                    </div>
                    <div class="enroll-phone" >
                        <input type="text" name="ACA_NM" id="inputTel" style="width:50%;">
                    </div>
                    
                    <div class="enroll-area-tit" >
                        <h3>지역</h3>
                    </div>
                    <div class="enroll-area " >
                        <input type="text" name="ACA_NM" id="inputArea" style="width:50%;" placeholder="" >
                    </div>

                    <div class="enroll-adress-tit" >
                        <h3>학원 상세주소</h3>
                    </div>
                    <div class="enroll-adress " >
                        <input type="text" name="ACA_NM" id="inputAdress" style="width:50%;" placeholder="" >
                    </div>

                    <div class="enroll-intro-tit" >
                        <h3>학원 소개</h3>
                    </div>
                   <div class="enroll-intro" >
                    <input type="text" name="ACA_NM" id="inputContent" style="width:50%; height:100px;" placeholder="학원을 간단하게 소개하십쇼.">
                   </div>
                </div> 
                 
            
                <div class="enroll-wrap row col-md-6">
                     <label for="box"> 초딩
            	<input name="box" type="checkbox" value="1" class="초등학생" >
        			</label> 
                    
                </div>  
                <div class="enroll-btn">
               
                    <button  style="width:100px; padding: 10px;" id="reg" type="button">등록하기</button>
                    <button  style="width:100px; padding: 10px;" id="cancel">취소하기</button>
                </div>
            </div>

            
    </form>
    
</div> 
</body>