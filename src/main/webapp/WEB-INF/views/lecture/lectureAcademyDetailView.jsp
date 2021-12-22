<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">

<script type="text/javascript">

var length;
$(function(){
      
      
      var lectureIdx = "${lectureIdx}";
      var contextPath = "${contextPath}";
      var acaIdx = "${acaIdx}";
         
    
            $.ajax({
                   url : contextPath+ "/api/lecture/academy?acaIdx=" +acaIdx ,
                   method : "get",
                   dataType : "json",
                   success: function(json) {
                      console.log("됐다.");
                      console.log(json);
                      
                         var list= "";
                         length = json.length;
                         
                         for(i=0; i <json.length; i++){
                            
                            console.log("Idx 체크 >" + json[i].lectureIdx);
                            console.log(json[i].lectureName);
                            
                            
                            list += '<tr>';
                            list += '<th class="subject_grade col-md-3" value='+json[i].lectureIdx +'>'+ json[i].lectureGrade +'</th>';
                            list += '<th class="subject_name_detail col-md-3">' + json[i].lectureName +'</th>';
                            list += '<th class="subject_time col-md-3">' + json[i].lectureTimeStr +'</th>';
                            list += '<th class="subject_teacher col-md-3 "> ' + json[i].teacherName +' <th>' ;
                            list += '<th><button type="button" id="add" title="과목 담기" class="btn_add">'+ '과목담기' + '</button></th>'     ;        
                            list += '</tr>';
                         }

                            $("#lectureList").append(list);
                              
                                   
                   }
        

                })
          //수정 필
               $(document).ready(function(){
                  
                  var idx ="";
                  var li = "" ;   
                  var tagSub;
                  
                  $(this).on('click', '[id=add]', function(){
                    
                  var tagSub = "";
                  var td = $(this).parent();
                     
                    console.log("1==>"+ td.parent().text(),"2=="+ td.children().text(),"3=="+ td.siblings().text(), "4=="+  td.prevAll().text());
                     
                    //idx = $(this).parent().siblings().first().value;
                    
                    //console.log(" idx 들어오는지 확인 > "+idx);
                    //idx = $(this).parent().siblings().first().value();
                    //console.log(" idx 들어오는지 확인 > "+idx);

                   	 var idx = $(this).parent().siblings().first().attr('value');
                   	 console.log("각각의 idx값==>"+idx)
                    	a = $(this).parent().siblings().first().text();
                    	console.log(" value값 확인 ==> "+idx);
                    	 
                    	 	data= {
                    	 		
                    	 		lectureIdx : idx
                    	 	}
                    	$.ajax({
                             url : contextPath+ "/api/lecture/academy",
                             method : "get",
                             dataType : "json",
                             success: function(json) {
                                console.log("됐다.");
                           
                                   window.location.href= contextPath+ "/academyLectureTable";
                                                  },
                  

                             })
                    	window.location.href= contextPath + '/academyLectureTable/2'
					
                /*     	  idx = $(this).parent().siblings().first().attr('value');
                    	  console.log("idx===>"+idx)

                     li = $(this).parent().siblings().first().text(); //대상
                     li1 = $(this).parent().siblings().first().next().text(); //강의이름
                     li2 =  $(this).parent().siblings().first().next().next().text(); // 강의시간
                     li3 =  $(this).parent().siblings().first().next().next().next().text(); // 강의시간

                  	
                     ///이쪽부분
                     tagSub += '<tr align="center" class="good1" value="'+ idx +'" name= "a">';

                     tagSub += '<td>' + li + '</td>';
                     tagSub += '<td>' + li1 + '</td>';
                     tagSub += '<td>' + li2 + '</td>';
                     tagSub += '<td>' + li3 + '</td>';

                     tagSub += '<td><button type="button" title="삭제" class="' + idx +' " id="del">' + "삭제" + '</button></td>';
                     tagSub += '</tr>';
                  
                     
                 console.log("제발=>"+idx)
                     $("#lectureWish > tbody").append(tagSub); */
                     
                 
     
                  });
 

               });      
            
            
             $(this).on('click','[id=send]',function(){

            
            	 var arr1 = document.getElementsByClassName('good1');
          		console.log("제발===>"+arr1)
          		
			      for(i = 0; i < arr1.length ; i++ ){
				
			       	 var arr = document.getElementsByClassName('idx');
			     	console.log(arr1[i])
	        	
		          	console.log(arr1[i].className)
		    
		       
			        		console.log(arr[i].attr('value'))
				        
             }  
            	    
      
           


               data = {
                     
                     "lectureIdx" : lectureIdx
               }   

         

               /*
               $.ajax({
                   url : contextPath+ "/api/lecture/academy?acaIdx=" + acaIdx,
                   method : "get",
                   dataType : "json",
                   success: function(json) {
                      console.log("됐다.");
                 
                         window.location.href= contextPath+ "/academyLectureTable";
                                        },
        

                   })*/
                  
            }); 
               
            
               
               
               
            
            
            
            
            
               $(this).on('click', '[id=del]',function() {
                    var tagSub;
                  var tr = $(this).parent().siblings().text();
                  console.log(/* "1==>"+ tr.text(),"2=="+ tr.children().text(),"3=="+ tr.siblings().text(), "4=="+  tr.prevAll().text(), */ "5==="+ tr);
               
                     
               $(".good1").remove();
                  
               });
               
               
            
                  
            
         
            
            
      
                
   })
   

/*
 function add(){
    console.log("hi")
    var $tagGood;
    var total;
    
    
    
     if($("btn_add")){

        $tagGood= $('<tr align="center" class="good1"></tr>')
          .append('<td>'  '</td>')
          .append('<td><button type="button" title="삭제" class="btn_del">삭제</button></td>');
     
          total= total + 1;
        }
     $('#cart .basic').append( $tagGood );
    $('#show_total').empty().append( "총 수강 개수:" + total + "개"  );
      }*/
    
   
   
   
            
               



/* $(document).ready(function(e) {
  var total = 0;
 
 //상품 담기 리스트
 
 $('.subject_teacher > button').click(function(e) {
  var btnName =  $(this).get(0).className;
  
  onsole.log(btnName);
  
  var $tagGood;
   
  switch (btnName) {
    case "btn_add1" :
      $tagGood = $('<tr align="center" class="good1"></tr>')
      .append('<td>'+ json[i].lectureName + '</td>')
      console.log(json[i].lectureName)
      .append('<td>김인환</td>')
      .append('<td>고3</td>')
      .append('<td>1</td>')
      .append('<td><button type="button" title="삭제" class="btn_del"">삭제</button></td>');
      
      total = total +1;
      
    break;
  }   
  $('#cart .basic').append( $tagGood );
  $('#show_total').empty().append( "총 수강 개수:" + total + "개"  );
  
  });
  //삭제 기능
  $('.basic').click(function(e) {
    if (e.target.className == 'btn_del') {
      var good = $(e.target).parents('tr');
      switch (good.get(0).className) {
        case "good1":
          total = total - 1;
        break;
        case "good2":
          total = total - 1;
        break;
        case "good3":
          total = total - 1;
        break;
        case "good4":
          total = total - 1;
        break;
      }
      good.remove();
      
      $('#show_total').empty().append(  "총 수강 개수:" + total + "개"  );
    }
  });

  $('#btn_buy').click(function(e) {
    var sale;
    alert("수강꾸러미에 담으시겠습니까?");
    
  });

}); */
     

</script>
 
<body>

    <div id="dialog" style="padding-top:100px;" >
     
        <div class="col-md-12 col-sm-7">
            <div class="product-page">
              <div class="row">
          
                <div class="intro-academy col-md-12 col-sm-10">
                  
                  <div>#고3 전문 </div>
                  <h1>a학원</h1>

                </div>
                  
               </div>
              </div>
                  
                 
                 
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li  ><a href="#Description" data-toggle="tab">강의검색</a></li>
                    <li><a href="#Information" data-toggle="tab">강사소개</a></li>
                    <li ><a href="#Reviews" data-toggle="tab">리뷰 (2)</a></li>
                  </ul>
              
                    <div class="tab-pane fade" id="Description">
                  
                     
                     
                        
                       
                        <!-- 상품 진열대 -->
                        <div class="academy-lecture-wrap row col-md-12" id="Description">
                          <div id="goods" class="col-md-8">
                            
                            <div class="#">
                              <table class="col-md-12" bgcolor="#C8E3FF" >
                              <th class="col-md-3" >과목</th>
                              <th  class="col-md-3">과목명</th>
                              <th class="col-md-3">시간</th>
                              <th class="col-md-3">강사명</th>
                              <th scope="col">&nbsp;</th>
                            </table> 
                            <table class="col-md-12" id="lectureList">
                                 
                              </table>
                            </div>
                            
                          </div>
                          
                          
                          <!-- 장바구니 -->
                          
                          <div id="cart" class="col-md-4">
                            <table id="lectureWish" class="basic col-md-12" border="0" cellspacing="0" cellpadding="0">
                            <thead>
                            <tr bgcolor="#C8E3FF">
                              <th scope="col">과목</th>
                              <th scope="col">강의명</th>
                              <th scope="col">시간</th>
                              <th scope="col">강사</th>
                              <th scope="col">&nbsp;</th>
                             </tr>
                            </thead>
                            <tbody class="list">
                            
                            </tbody>
                            </table>
                          
                      
                          <div id="show_total">
                          
                          </div>
                          <div id="buy">
                            <button type="button" title="구매하기" id="send">수강 시간표 넣기</button>
                          </div>
                          </div>
                          
                        </div>
                        
                        
                        <!-- 총금액 -->
                      
                      
                   
                      </div>
                    
                    <div class="tab-pane fade" id="Information">
                      </div>
                    <div class="tab-pane fade" id="Reviews">
                      <!--<p>There are no reviews for this product.</p>-->
                      <div class="review-item clearfix">
                        <div class="review-item-submitted">
                          <strong>Bob</strong>
                          <em>30/12/2013 - 07:37</em>
                          <div class="rateit" data-rateit-value="5" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                        </div>                                              
                        <div class="review-item-content">
                            <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p>
                        </div>
                      </div>
                      
                      <!-- BEGIN FORM-->
                      <form action="#" class="reviews-form" role="form">
                        <h2>Write a review</h2>
                        <div class="form-group">
                          <label for="name">Name <span class="require">*</span></label>
                          <input type="text" class="form-control" id="name">
                        </div>
                        
                        <div class="form-group">
                          <label for="review">Review <span class="require">*</span></label>
                          <textarea class="form-control" rows="8" id="review"></textarea>
                        </div>
                        <div class="form-group">
                          <label for="email">Rating</label>
                          <input type="range" value="4" step="0.25" id="backing5">
                          <div class="rateit" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                          </div>
                        </div>
                        <div class="padding-top-20">                  
                          <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                      </form>
                      <!-- END FORM--> 
                    </div>
                  </div>
        </div>

                      
</body>


  