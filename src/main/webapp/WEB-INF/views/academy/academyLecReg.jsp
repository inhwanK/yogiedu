<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
    
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<%@include file="/WEB-INF/views/header.jsp"%>

  <script>
    
function gradeChange(e) {
  var ele = ["1", "2", "3", "4", "5", "6"];
  var mid = ["1", "2", "3"];
  var high = ["1", "2", "3"];
  var target = document.getElementById("grade");

  if(e.value == "a") var d = ele;
  else if(e.value == "b") var d = mid;
  else if(e.value == "c") var d = high;

  target.options.length = 0;

  for (x in d) {
      var opt = document.createElement("option");
      opt.value = d[x];
      opt.innerHTML = d[x];
      target.appendChild(opt);
  }   
}
  </script>
  <script>
    $("select[name=school]").change(function(){
      //console.log($(this).val());
      console.log($("select[name=school] option:selected").text());
      
    })
    $("select[name=grade]").change(function(){
      //console.log($(this).val());
      console.log($("select[name=grade] option:selected").text());
    })
    $("select[name=subject]").change(function(){
      //console.log($(this).val());
      console.log($("select[name=subject] option:selected").text());
    })
    
    const getValueInput = () =>{
      let inputValue1 =document.querySelector("#school").value;
      let inputValue2 =document.querySelector("#grade").value;
      let inputValue3 =document.querySelector("#subject").value;
      let inputValue4 =document.getElementById("lecInput").innerText=lecInput;
      document.querySelector("#valueInput").innerHTML=`${inputValue1} ${inputValue2}학년 ${inputValue3}과목 ${lecInput}강의 개설`;
    }
  </script>
  <script>
    $(document).ready(function(){
      $('#send').click(function(){
        let sendData = "학교="+$('input[name=school]').val();
      $.ajax({
        type:'post',
        url:'acaLec.jsp',
        data:sendData,
        dataType:'json',
        success:function(data){
          $('#valueInput').html(data);
        }
      });
      });
    });
  </script>
  
	<section id="intro">
	    <div class="container">
	    	<h1>강의등록하기</h1>
		</div>
	</section>
  <main id="main">
    <div class="container"style="float: none; margin:0 auto;">
      <div class="btn-wrap row col-sm-12 justify-content-md-center"style="float: none; margin:0 auto;">
        <div class="form-group col-sm-3">
          <label for="school">학교</label>
          <select class="form-control" id="school" name="school" onchange="gradeChange(this)">
            <option value="none">학년을 선택해주세요</option>
            <option value="a">초등학생</option>
            <option value="b">중학생</option>
            <option value="c">고등학생</option>
          </select>
        </div>
        <div class="form-group col-sm-3">
          <label for="grade">학년</label>
          <select class="form-control" id="grade" name="grade">
            <option>선택해주세요.</option>
          </select>
        </div>
        <div class="form-group col-sm3">
          <label for="subject">과목</label>
          <select name="subject" id="subject" class="form-control">
            <option>과목을 선택해주세요</option>
            <option value="ko">국어</option>
            <option value="en">영어</option>
            <option value="ma">수학</option>
            <option value="etc">예체능</option>
          </select>
        </div>

        <div class="form-group">
          <input id="lecInput" class="form-control col" type="text" placeholder="강좌명을 입력해주세요" >
        </div>
        <button type="button" class="btn btn-success" id="send" onclick="getValueInput()">완료</button>
        <button type="button" class="btn btn-warning" id="cancel" onclick="javascript:history.back()">취소</button>
      </div>
      <p id="valueInput"></p>
    <div class="list-wrap" style="padding-top:30px;">
      <Table>
        <thead>
          <td>#</td>
          <td>학원이름</td>
          <td>과목</td>
          <td>학년</td>
          <td>시간</td>

        </thead>
        <tbody>
          <colgroup>
            <td id=""></td>
            <td id="out_school"></td>
            <td>3</td>
            <td>4</td>
            <td id='lecName'></td>
          </colgroup>
          <colgroup>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
          </colgroup>
        </tbody>
      </Table>

    </div>
  </div>

  </main>

</body>
<%@include file="/WEB-INF/views/footer.jsp"%>