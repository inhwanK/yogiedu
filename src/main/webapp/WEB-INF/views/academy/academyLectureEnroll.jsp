<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
    
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<%@include file="/WEB-INF/views/header.jsp"%>
  <body>
  <script type="text/javascript">
  
  $(function(){
					
				

	    	 $('#send').on("click",function () {
	    		    
					var contextPath = "${contextPath}";
					var acaIdx = "${acaIdx}";
					var lectureIdx = "${lectureIdx}";
					
					console.log("acaIdx값===>"+ $("acaIdx"));
					
					var conf = confirm("강의를 등록하시겠습니까?");
					if(conf){
		
	     			var data={
			 					"acaIdx": acaIdx,
		     				  "lectureName": $("#lecInput").val(),
		     				  "teacherName": $("#school").val(),
		     				  
	   							};
	 				console.log(data);
	      		
	 			
		        $.ajax({
		            type: "post",
		            url: contextPath + "/api/lecture",
		            data: JSON.stringify(data),
		            dataType: 'json',
		            contentType:"application/json; charset=utf-8",
		            success: function (data) {
		              
		            	alert("success");
		            	
		                console.log("데이터 post 성공===>" +data);
		           
		               console.log($("#lecInptut").val());
		            
		           
		          					 },
		            			error: function () {
		              
								alert("실패")
		            			}
		            
		          
		      		  })
				}
		}) 
		
		
	    
	    
	   
	    
	});
		 
  
  </script>
  <section id="introLA" class="clearfix">
    <div class="container">
      <h1>강의 등록하기</h1>
    </div>
  </section>
  <!-- #intro -->
  <main id="main">
<!-- Example single danger button -->
    <div class="container"style="float: none; margin:0 auto;">
      <div class="btn-wrap row col-sm-12 justify-content-md-center"style="float: none; margin:0 auto;">
        <div class="form-group col-sm-3">
          <label for="school">학생</label>
          <select class="form-control" id="school" name="school" >
            <option value="none">학년을 선택해주세요</option>
            <option value="초등학생">초등학생</option>
            <option value="중학생">중학생</option>
            <option value="고등학생">고등학생</option>
          </select>
        </div>
        
        <div class="form-group col-sm3">
          <label for="subject">과목</label>
          <select name="subject" id="lectureName" class="form-control">
            <option>과목을 선택해주세요</option>
            <option value="국어">국어</option>
            <option value="영어">영어</option>
            <option value="수학">수학</option>
            <option value="예체능">예체능</option>
          </select>
        </div>

        <div class="form-group">
          
        </div>
        <button type="button" class="btn btn-success" id="send" onclick="getValueInput()">완료</button>
        <button type="button" class="btn btn-warning" id="cancel" onclick="javascript:history.back()">취소</button>
      </div>
      <p id="valueInput"></p>
    <div class="list-wrap" style="padding-top:30px;">
      <Table id="lectureIns">
        <thead>
          <tr>
            <th>#</th>
            <th>학년</th>
            <th>과목</th>
            <th>학년</th>
            <th>시간</th>
          </tr>
        </thead>
        <tbody id="newLec">

        </tbody>
      </Table>

    </div>
     <input type="text" id="teacherName">
  </div>

  </main>
 <script type="text/javascript">
 function getValueInput(e){
     var html=""
     var total =0;

     var school=$("#school").val();        // dropbox에서 입력한값 받는곳
     var subject=$("#subject").val();
     var lecInput=$("#lecInput").val();
     console.log("입력한 드랍박스 및 컨텐츠값===>" +school,subject,lecInput);

      
      html += '<colgroup>';
      html += '<tr id="abc">';              //받은걸 table형식으로 넣어주는거
     
      html += '<td>' + school +'</td>';
      html += '<td>' + subject + '</td>';
      html += '<td>' + lecInput + '</td>';
      html += '<td><button onclick="tableDelete()">'+'삭제하기'+'</button></td>';
      html += '</tr>';
      html += '</colgroup>';
   
      $("#newLec").append(html);        //table형식으로 받은걸 삽입

      $("#school").val('');           //삽입했으니 초기화
      $("#subject").val('');
      $("#lecInput").val(''); 
 }
  </script>
  <script>
    function tableDelete(){     //해당줄 삭제
     
    	var conf =confirm("삭제할거야?");
    	if(conf){
    		
    		$('#abc').remove();
    	      console.log("#abc");
    	}
    	else {
    		history.back();
    	}
    
    }
  </script>
 
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>