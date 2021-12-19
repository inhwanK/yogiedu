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
					
	  $("#save").on("click",function(){
				var confsub = confirm("과목을 담으시겠습니까?")
				//강의를 등록할때 저장여부를 확인
				if(confsub){
					//강의가 같은 내용을 담을때 중복에 대한 기능이 없음. 
					var list = "";
				    console.log("subject=====>"+$("#subject option:selected").val()); //과목
				    console.log("lectureName======>"+$("#lectureName").val()); //강의 이름
				    console.log("teacherName======>" + $("#teacherName").val()); // 강사명
				    
							
				 
				    list += "" + $("#lectureTimeStrMon option:selected").val();
				    list += "," + $("#lectureTimeStrTue option:selected").val();
				    list += "," + $("#lectureTimeStrWed option:selected").val();
				    list += "," + $("#lectureTimeStrThu option:selected").val();
				    list += "," + $("#lectureTimeStrFri option:selected").val();
				    list += "," + $("#lectureTimeStrSat option:selected").val();
				    list += "," + $("#lectureTimeStrSun option:selected").val();
				    //강의시간에 대한 문자열처리 (98프로 구현)
				    var lectureTimeStr = list.replace(/,0|/gi,"");
				    console.log("lectureTimeStr====>"+lectureTimeStr); 
					 
				    //받은걸 table형식으로 넣어주는거 + list 초기화
				    var list_save = "";
				 
				      list_save += '<tr id="abc">';             
				      list_save += '<td>' +  $("#subject option:selected").val() +'</td>';
				      list_save += '<td>' + $("#lectureName").val() +'</td>';
				      list_save += '<td>' + $("#teacherName").val() + '</td>';
				      list_save += '<td>' + lectureTimeStr + '</td>';
				      list_save += '<td><button onclick="tableDelete()">'+'삭제하기'+'</button></td>';
				      list_save += '</tr>'; 
				   	
				     /*  if($("#abc td") === $("#subject option:selected").val()|| $("#lectureName").val() ||  lectureTimeStr){
				    	 
				      } */
				    
				      $("#newLec").append(list_save); 
				      console.log("테이블에 있는 정보들===> "+ $("#abc td"))
				      console.log("저장된 강의에 대한 정보====>"+list_save);
				  
				    // 과목에 대해서 string값으로 변환할때 0이되는 값들을 모두 소거
				    //이 방식대로 하면 월요일이 0일때 처리하지 못하고, ,0과 0,을 둘다 소거하면 20,30 이라는 숫자에 0,값이 소거되어 230으로 나옴
				    //아마 나중에 첫번째 선택자에 0일때만 처리할 거 같긴한데..    
					
				} 
		    		//이까지 강의 리스트를 담는 코드
		   
		    		
		    		///send시에 실제로 강의 리스트의 정보를 담아서 데이터 보냄
				
		    		
			
			 $('#send').on("click",function () {
	    		    
					
	    			var contextPath = "${contextPath}";
					var acaIdx = "${acaIdx}";
					var lectureIdx = "${lectureIdx}";

					console.log("acaIdx값===>"+ $("acaIdx"));
					
				//실제 테이블에 있는 key값과 일치시켜서 보냄 api경로로 더미 강의 리스트 참고
	     			var data={
			 					"acaIdx": acaIdx,
		     				  "lectureName": $("#lectureName").val(),
		     				  "teacherName": $("#teacherName").val(),
		     					"lectureTimeStr": lectureTimeStr,
		     					 "subject": $("#subject option:selected").val()
	   							};
	 				console.log(data);
	      		
	 			//강의 리스트에 담긴과목정보들 보냄
		        $.ajax({
		            type: "post",
		            url: contextPath + "/api/lecture",
		            data: JSON.stringify(data),
		            dataType: 'json',
		            contentType:"application/json; charset=utf-8",
		            success: function (data) {
		              
		            	alert("success");
		            	
		                console.log("데이터 post 성공===>" +data);
		           
		                console.log("subject=====>"+$("#subject option:selected").val()); //과목
		    		    console.log("lectureName======>"+$("#lectureName").val()); //강의 이름
		    		    console.log("teacherName======>" + $("#teacherName").val()); // 강사명
		    		    console.log("lectureTimeStr====>"+lectureTimeStr); 
		           
		          					 },error: function () {
		          			              
		 								alert("실패")
		 		            			}
		            			
		            	          
		      		  })
		      		  
		      	
				
		}) 
		    
		})	
/* 
	    	 $('#send').on("click",function () {
	    		    
				
	    			var contextPath = "${contextPath}";
					var acaIdx = "${acaIdx}";
					var lectureIdx = "${lectureIdx}";
					
					
					
					
					console.log("acaIdx값===>"+ $("acaIdx"));
					
					var conf = confirm("강의를 등록하시겠습니까?");
					if(conf){
		
	     			var data={
			 					"acaIdx": acaIdx,
		     				  "lectureName": $("#lectureName").val(),
		     				  "teacherName": $("#teacherName").val(),
		     				
		     					 "subject": $("#subject option:selected").val()
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
		})  */
	    
	});
  function tableDelete(){     //저장된 강의 삭제기능
	   
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
  <section id="introLA" class="clearfix">
    <div class="container">
      <h1>강의 등록하기</h1>
    </div>
  </section>
  <!-- #intro -->
  <main id="main">
   <div class="container"style="float: none; margin:0 auto;">
      <div class="btn-wrap row col-sm-12 justify-content-md-center"style="float: none; margin:0 auto;">
        
        <div class="subject col-sm-4">
          <label for="subject" value="">과목</label>
          <select name="subject" id="subject" class="form-control">
            
            <option value="국어">국어</option>
            <option value="영어">영어</option>
            <option value="수학">수학</option>
      
          </select>
         
        </div>
        <div class="lectureName col-sm-4">
            <label for="lectureName">강의명</label>
                <input type="text" name="lectureName" id="lectureName" class="form-control" placeholder="상세 강의명을 적어주세요"> 
            
        </div>
        <div class="teacherName col-sm-4">
            <label for="teacher">강사명</label>
                <input type="text" name="teacher" id="teacherName" class="form-control" placeholder="강사의 이름을 적어주세요"> 
            
        </div>
        
        <div class="time-wrap row col-md-12">
            <div class="left col-md-6" style="padding-top:20px;">
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">월요일</label>
                    <select name="time" id="lectureTimeStrMon" class="form-control">
                      <option value="0" >시간을 선택해주세요</option>
                      <option value="1">3-4</option>
                      <option value="2">4-5</option>
                      <option value="3">5-6</option>
                      <option value="4">6-7</option>
                      <option value="5">7-8</option>
                      <option value="6">8-9</option>
                      <option value="7">9-10</option>
                    </select>
                </div>
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">화요일</label>
                    <select name="time" id="lectureTimeStrTue" class="form-control">
                      <option value="0">시간을 선택해주세요</option>
                      <option value="8">3-4</option>
                      <option value="9">4-5</option>
                      <option value="10">5-6</option>
                      <option value="11">6-7</option>
                      <option value="12">7-8</option>
                      <option value="13">8-9</option>
                      <option value="14">9-10</option>
                    </select>
                </div>
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">수요일</label>
                    <select name="time" id="lectureTimeStrWed" class="form-control">
                      <option value="0">시간을 선택해주세요</option>
                      <option value="15">3-4</option>
                      <option value="16">4-5</option>
                      <option value="17">5-6</option>
                      <option value="18">6-7</option>
                      <option value="19">7-8</option>
                      <option value="20">8-9</option>
                      <option value="21">9-10</option>
                    </select>
                </div>
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">목요일</label>
                    <select name="time" id="lectureTimeStrThu" class="form-control">
                      <option value="0">시간을 선택해주세요</option>
                      <option value="22">3-4</option>
                      <option value="23">4-5</option>
                      <option value="24">5-6</option>
                      <option value="25">6-7</option>
                      <option value="26">7-8</option>
                      <option value="27">8-9</option>
                      <option value="28">9-10</option>
                    </select>
                </div>
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">금요일</label>
                    <select name="time" id="lectureTimeStrFri" class="form-control">
                      <option value="0">시간을 선택해주세요</option>
                      <option value="29">3-4</option>
                      <option value="30">4-5</option>
                      <option value="31">5-6</option>
                      <option value="32">6-7</option>
                      <option value="33">7-8</option>
                      <option value="34">8-9</option>
                      <option value="35">9-10</option>
                    </select>
                </div>
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">토요일</label>
                    <select name="time" id="lectureTimeStrSat" class="form-control">
                      <option value="0">시간을 선택해주세요</option>
                      <option value="36">3-4</option>
                      <option value="37">4-5</option>
                      <option value="38">5-6</option>
                      <option value="39">6-7</option>
                      <option value="40">7-8</option>
                      <option value="41">8-9</option>
                      <option value="42">9-10</option>
                    </select>
                </div>
                <div class="form-group col-md-12">
                    <label for="time" class="col-md-4">일요일</label>
                    <select name="time" id="lectureTimeStrSun" class="form-control">
                      <option value="0">시간을 선택해주세요</option>
                      <option value="43">3-4</option>
                      <option value="44">4-5</option>
                      <option value="45">5-6</option>
                      <option value="46">6-7</option>
                      <option value="47">7-8</option>
                      <option value="48">8-9</option>
                      <option value="49">9-10</option>
                    </select>
                </div>
            </div>
            <div class="right col-md-6">
                <div class="list-wrap col-md-12" style="padding-top:30px;">
                    <Table id="lectureIns">
                      <thead>
                        <tr>
                          <th>과목</th>
                          <th>강의이름</th>
                          <th>강사명</th>
                          <th>시간</th>
                        </tr>
                      </thead>
                      <tbody id="newLec">
              				
                      </tbody>
                    </Table>
              
                  </div>
            </div>
  
        </div>

        <div class="form-group">
         
        </div>
        <button type="button" class="btn btn-save" id="save">과목담기</button>
        <button type="button" class="btn btn-success" id="send" >완료</button>
        <button type="button" class="btn btn-warning" id="cancel" onclick="javascript:history.back()">취소</button>
      </div>
 </div>
  
</main>
 
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>