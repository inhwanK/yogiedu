<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	   	console.log(json.length);
	   
	   	console.log(json[0].lectureTimeStr);
	    console.log("success");
	    console.log(json[0].lectureTimeArr[1]);
	    		var list = '';
	    	
	    		for(i = 0; i <json.length ; i++){
	    		
	    		list += '<tr>';
                list += '<td>' + json[i].lectureName + '</td>';
                list += '<td>' + json[i].teacherName + '</td>';
                list += '</tr>';
                
	    	}
	    	
				 		for(i=0 ; i<json.length ; i++){
	    		
	    		for(j = 0; j <json[i].lectureTimeArr.length; j++){
	 				
	             
	 				console.log(json[i].lectureTimeArr[j]);
           
	             }
	    	} 

	    	$("#subjectList").append(list);	
	   	 },
	    		error: function(){
					console.log("fail");
		}
	   	 
	   	 
			
		});
		//강의 만들기 클릭시	
	$("#lecture").on("click",function(){
			
		window.location.href= contextPath + "/academyLectureEnroll/" + acaIdx;
				
			})
		
  });
  </script>  
<%@include file="/WEB-INF/views/header.jsp"%>
	    
	<section id="introLA">
	 <div id="container">
     	<form class="form-enroll col-sm-4" id="form">
          <div class="my-table-subject-wrap"> 
          <div class="my-table-subject">
            <table class="my-table-subject-list table">
              <thead class="my-table-subject-list-head">
                <tr>
                  <th>수강학원</th>
                  <th>선생님</th>
               			
                </tr>
              </thead>
              <tbody class="my-table-subject-list-body" id="subjectList">
            
               
              </tbody>
            </table>
          </div>
        </div>
          </form>
         		
         		<div class="button-group">
							<button id="delete" class="btn btn-danger" >삭제</button>
							<button id="cancel" class="btn btn-warning">돌아가기</button>
							<button id="lecture" class="btn btn-primary">강의 만들기</button>
				</div>
							
    </div>
	</section>      		
</body>

<style>
.button-group button{
	margin:0 10px;
}
thead{
 border: 1px solid #dee2e6;
 border-left:none;
 border-right:none;
 border-top:2px solid #000;
}	

#introLA .my-table-subject-list td,
#introLA .my-table-subject-list th,
#introLA .my-table-subject-list tr {
        padding: 10px;
        border: 1px solid #dee2e6;
        border-left: none;
        border-right: none;
    }

#introLA .my-table-subject-list tbody tr:last-child {
        border-bottom: 2px solid #000;
    }
</style>
    <%@include file="/WEB-INF/views/footer.jsp"%>
