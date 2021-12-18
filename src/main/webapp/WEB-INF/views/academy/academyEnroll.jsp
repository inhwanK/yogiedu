<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />


<meta charset="UTF-8">
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
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
	console.log(" 되냐?")
	$('#reg').on("click",function () {
		var contextPath = "${contextPath}";
		
		console.log("이건 되?");

		if($("#inputName").val() == "" || $("#inputArea").val() == "" || $("#inputAdress").val() == ""){		
			alert("안돼 돌아가");
			return;
		}
		
		
		
		console.log("하 시발..");
		var conf = confirm("등록하시겠습니까?");
		if(conf){
			console.log("하 시발..");
			//	"ACA_NM" :$("#inputArea").val(),
			var data={

					"ACA_ASNUM" : $("#inputName").val(),
					"ACA_NM" : $("#inputTel").val(),
					"ESTBL_YMD": "ㅎ"//$("#inputContent").val()		
			};
		
			console.log($("#inputName").val());
			console.log(data);

			var acaIdx = "${acaIdx}";
			
			console.log(acaIdx);
			
			$.ajax({
		        type: "post",
		        url: contextPath + "/api/academy",
		        data: JSON.stringify(data),
		        dataType: 'json',
		        contentType:"application/json; charset=utf-8",
		        success: function (data) {
          
		        	alert("success");
		            console.log(data);
		            
		      		window.location.href =contextPath+ "/academy?acaIdx="+acaIdx;
		            
		        },
		        error: function () {
		        	console.log("fail");
		        }
		     });

		}
		
		
		
		else{
			 console.log("시발럼이...");
		 }
	}); 
});

     
     
		            
             
        
            
            
 


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
<!--  <body>

 <section id="introLA">
    <div id="container">
    <form class="form-enroll form-horizontal col-sm-12" id="form" role="form"> -->
    <!--
            <div class="enroll-name-wrap ">
                <h1 style="font-weight:600;">학원 등록하기</h1>
                 <div>
                    
                    <div class="enroll-name-tit form-group" style="display:flex; justify-content:center;align-items: flex-end; margin-bottom:15px;" >
                       <h3 style="margin-bottom:0 ;">학원명*</h3>
                       <p style="margin-bottom:0 ;">(실제 학원명을 입력해주세요.)</p>
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

             -->
             <!-- 1. input에 name이 전부다 ACA_NM으로 통일되어 있어서 안건드리고 냅둠.
             	  2. id/class는 최대한 비슷하게 해놓음
             	  3. area부분은 따로 뿌리는거랑 합쳐서 뿌리는게 따로 필요함
             	  4. area부분에서 시/도가 변함에 따라 그에맞게 군/구의 값이 변하는게 좋지않을까 생각함
             	   -->
             	   
         <body>

 			<section id="introLA">
    			<div id="container">
    			<form class="form-enroll form-horizontal col-sm-12" id="form" role="form">
             <h2>학원 등록하기</h2>
                <div class="form-group">
                    <label for="enroll-name" class="enroll-name-tit col-sm-3 control-label">학원명</label>
                    <div class="enroll-name col-sm-9">
                        <input type="text" id="inputName" name="ACA_NM" placeholder="실제 학원명을 입력해주세요" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="enroll-phone" class="enroll-phone-tit col-sm-3 control-label">전화번호</label>
                    <div class="enroll-phone col-sm-9">
                        <input type="text" id="inputTel" placeholder="학원전화번호를 입력해주세요" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">	<!-- 여기가 젤 문제인 부분 city/town/area_sepc을 합쳐서 주소로 보여줘야 하고, 등록은 따로 되야됨 -->
                    <label for="enroll-area" class="enroll-area-tit col-sm-3 control-label">지역</label>
                    <div class="enroll-area col-sm-9" style="display:flex; ">
	                    <div>
	                        <input list="city" placeholder="시/도를 골라주세요">
	                        	<datalist id=city>
	                        		<option value="서울">
	                        		<option value="부산">
	                        		<option value="대구">
	                        		<option value="광주">
	                        		<option value="울산">
	                        		<option value="인천">
	                        	</datalist>
	                    </div>
	                    <div>
	                        <input list="town" placeholder="군/구를 골라주세요">
	                        	<datalist id="town">
	                        		<option value="중구">
	                        		<option value="동구">
	                        	</datalist>
	                    </div>
						<div>
	                        <input type="text" id="area_sepc" placeholder="상세주소를 입력해주세요" class="form-contrl" autofocus>
						</div>
					</div>
                </div>
                <div class="form-group">
                    <label for="enroll-intro" class="enroll-intro-tit col-sm-3 control-label">학원소개</label>
                    <div class="enroll-intro col-sm-9">
                        <textarea type="text" id="inputContent" placeholder="당신의 학원을 소개해주세요" class="form-control" rows="5">
                        </textarea>
                    </div>
                </div>
                
                
              <!--   <div class="form-group enroll-wrap row col-md-9">
					<span>대상학년(중복체크가능) :</span>
                    <div class="form-check">
            			<label for="ele">
            				<input id="ele" name="box" type="checkbox" value="1" class="초등학생" >
            				<span>초등학생</span>
            			</label>
        			</div>
        			<div class="form-check">
        				<label for="mid">
	        			 	<input id = "mid" name="box" type="checkbox" value="2" class="중학생">
							<span>중학생</span>
						</label>
        			</div>
        			<div class="form-check">
        			 	<label for="high">
	        			 	<input id = "high" name="box" type="checkbox" value="2" class="고등학생">
							<span>고등학생</span>
						</label>
                    </div>
				</div>  --> 
                <div class="enroll-btn">
					<input class="btn btn-primary" type="button" id="reg" value="등록하기">
               		<input class="btn btn-danger" type="button" id="cancel" value="취소하기">
                </div>
                
                
    </form>
    
</div> 
</section>
</body>
    <%@include file="/WEB-INF/views/footer.jsp"%>