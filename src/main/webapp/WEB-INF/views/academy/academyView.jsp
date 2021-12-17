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
	
	console.log(acaIdx);
	
	$.ajax({
    url : contextPath+ "/api/academy?acaIdx=" +acaIdx ,
    method : "get",
    dataType : "json",
    success: function(json) {
    console.log(json);
     
    
    $("#title").append(json.acaAsnum);
   	$("#tel").append(json.acaNm);
   	$("#adress").append(json.faRdnma);
	$("#introduce").append(json.estblDate);
	$("#area").append(json.adminDistName);
    
	
	}
		

	})
		
		
$("#cancel").on('click', function(){
	window.location.href = contextPath + "/academy";	
});
	

		
	
$("#delete").on('click', function(){
	
	var conf = confirm("ㄹㅇ로 삭 제하시 겠습니까?");
	if(conf){
		
		var acaIdx = "${acaIdx}";
		
		console.log(acaIdx);

		$.ajax({
	    url : contextPath + "/api/academy?acaIdx=" + acaIdx,
	    method : "delete",
	    dataType : "json",
	    success: function(json) {
	    
	    	alert("삭 제 ㅇㅋ");
	    	window.location.href = contextPath + "/academy";
	},
		error: function(){
		alert("조졋다");
	}
	
})	
	}

});
});

</script>
<style>
.enroll-name-wrap {
display:flex;
justify-content:center;
}
#acapage tr,#acapage td,#acapage th{
border:1px solid #000 !important;}
</style>
<body>
	<section id="introLA">
		<div id="container">
			<form class="form-enroll" id="form" style="max-width:40%;">
				
				<table class="table col-sm-9" id="acapage">
					<thead>
						<tr>
							<div class="acaImg">
								<img></img>	<!-- 학원 대표이미지 오면 좋을듯? -->
							</div>
						</tr>
						<tr>
							<td colspan="2" ">XXX학원님 안녕하세요!</td>
						<tr>	
					</thead>
					<tbody>
						<tr>
							<th class="col-sm-2">학원명</td>
							<td class="col-sm-7 enroll-name-tit" id="title"></td>
						</tr>
						<tr>
							<th>전화번호</td>
							<td class="enroll-phone-tit" id="tel"></td>
						</tr>
						<tr>
							<th>지역</td>
							<td class="enroll-area-tit" id="area"></td>
						</tr><tr>
							<th>학원소개</td>
							<td class="enroll-intro-tit" id="introduce"></td>
						</tr>
					</tbody>
				</table>
			</form>
            
			<button id="delete" class="btn btn-danger" >수정</button>
			<button id="cancel" class="btn btn-primary">홈으로돌아가기</button>
			<button id="lecture" class="btn btn-info">강의목록 보기</button>
		</div>
	</section>   
</body>
</html>
<%@include file="/WEB-INF/views/footer.jsp"%>