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
			    console.log("얘 뭐냐")
			   	console.log(json.length);
			   
			   	console.log(json.lectureTimeStr);
			    console.log("success");
		 
		    	var list = '';
	    	
	    		for(i = 0; i <json.length ; i++){
	    		
		    		list += '<tr>';
	                list += '<td>' + json[i].lectureName + '</td>';
	                list += '<td>' + json[i].teacherName + '</td>';
	                list += '<td>' + json[i].lectureTimeStr + '</td>';
	                list += '</tr>';
    
	            	console.log("강의 리스트 수 =====>"+json[i].lectureTimeStr);            	
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
		});
		
			/* $("#cancel").on('click', function(){
			     window.location.href = contextPath + "/academy?acaIdx=" + acaIdx;
			  }); */
});
  
  
  </script>  
	    
  <body style='padding-top: 100px;'>
	 <div id="container">
     <form class="form-enroll" id="form">
          <div class="my-table-subject-wrap"> 
          <div class="my-table-subject">
            <table class="my-table-subject-list">
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
         		
							<button id="delete" class="btn btn-primary" >삭제</button>
							<button id="cancel" class="btn btn-primary">돌아가기</button>
							<button id="lecture" class="btn">강의 만들기</button>
							
							
    </div>
                		
</body>
  
