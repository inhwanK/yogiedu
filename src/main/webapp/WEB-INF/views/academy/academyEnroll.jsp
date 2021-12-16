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
	
	 $("#grade").on("click",function(){
			
         var a = $("#grade").is(":checked");
         if(a){
          $("#grade").prop('checked', true);
             var a = $("#grade").val();
             console.log(a)
         } 
         else{

          $("#grade1").prop('checked', false);
         
           var a= null;
           console.log(a);
             }
        })
        $("#grade1").on("click",function(){
		
        var a = $("#grade1").is(":checked");
        if(a){
         $("#grade1").prop('checked', true);
            var a = $("#grade1").val();
            console.log(a)
        } 
        else{

         $("#grade1").prop('checked', false);
        
          var a= null;
          console.log(a);
            }
       })
       $("#grade2").on("click",function(){
		
        var a = $("#grade2").is(":checked");
        if(a){
         $("#grade2").prop('checked', true);
            var a = $("#grade2").val();
            console.log(a)
        } 
        else{

         $("#grade2").prop('checked', false);
        
          var a= null;
          console.log(a);
            }
       })
       $("#grade3").on("click",function(){
		
        var a = $("#grade3").is(":checked");
        if(a){
         $("#grade3").prop('checked', true);
            var a = $("#grade3").val();
            console.log(a)
        } 
        else{

         $("#grade3").prop('checked', false);
        
          var a= null;
          console.log(a);
            }
       })

	
	
    $('#reg').on("click",function () {

        var contextPath = "${contextPath}";

            var data={
            		 "ACA_ASNUM" : $("#inputName").val(),
   				  "ACA_NM" : $("#inputTel").val(),
   				  "FA_RDNMA":$("#inputAdress").val(),
   				  "ESTBL_YMD": $("#inputContent").val(),
   				  "ADMST_ZONE_NM" :$("#inputArea").val()
   				  
            };
        		console.log(data);
        $.ajax({
            type: "post",
            url: contextPath + "/api/academy",
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
    
  
}); 

 $(function(){
	 $("#grade").on("click",function(){
		 var a= $("#grade").val();
		 if( a.is("checked") == true);
		 console.log("hi");
	 })
	 	 $("#grade1").on("change",function(){
		 var b= $("#grade1").val();
		 console.log(b);
		
	 })
		 
	
 })


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
                    <div class="enroll-grade-wrap col-md-3">
                    <h1>대상</h1>
                    <div class="wrap">
                        <input id="grade" type="checkbox"  value="초등학생" >
                        <label for="grade1">
                        <span>초등학생</span>
                        </label>
                    </div>
                    <div class="wrap">
                        <input id="grade2" type="checkbox"  value="중학생" >
                        <label for="grade2">
                        <span>중학생</span>
                        </label>
                    </div>
                    <div class="wrap">
                        <input id="grade2" type="checkbox"  value="대학생" >
                        <label for="grade2">
                        <span>고등학생</span>
                        </label>
                    </div>
                    <div class="wrap">
                            <input id="grade3" type="checkbox" value="일반인" >
                            <label for="grade3">
                            <span>일반인</span>
                            </label>
                    </div>
                    
                    </div>  
                    
                </div>  
                <div class="enroll-btn">
               
                    <button  style="width:100px; padding: 10px;" id="reg" type="button">등록하기</button>
                    <button  style="width:100px; padding: 10px;" id="cancel">취소하기</button>
                </div>
            </div>

            
    </form>
    
</div> 
</body>