<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
 <c:set var="lectureIdx" value="<%=request.getAttribute(\"lectureIdx\")%>" /> 

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/static/css/academy/style.css">
<link rel="stylesheet" href="/static/css/academy/bootstrap.css">
<link rel="stylesheet" href="/static/css/academy/main.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->


<!-- js -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="/static/js/academy/academySearch.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<meta charset="UTF-8">
<script>
    $(function() {
    	
    	/*
    	private String userEmail;
	private String userName;

	private String userBirth;
	private String userDiv;
	private String userEdu;
	private int userGrade;
	private Role userRole;
    	*/
    		var lectureIdx = "${lectureIdx}"
    		console.log("${lectureIdx}");
    		console.log(lectureIdx);
    		var lal;
    		
        var lectureIdx ;
        var lectureTimeArr = "";

        var fullLectureList = "";
        
        var lectureLength;
        var list = "";
        $.ajax({
            url: "${contextPath}/api/lectureList/",
            method: "get",
            dataType: "json",
            success: function(json) {
                console.log(json);
              lectureLength = json.length;
                console.log(json[0])
              
                for (i = 0; i < lectureLength; i++) {
                var data = json[i].lectureIdx;
                console.log("json idx data===>"+ data)
              
                
	                	if (json[i].lectureIdx == lectureIdx){
	                
	                	var arr = JSON.parse("[" + data+ "]")
					console.log("success arr===>"+ arr)
	   	 
	     
					console.log("lectureIdx===>"+lectureIdx)
	     
					list = json[i].lectureTimeArr + ",";
					console.log("list====>"+ list)
	       
	        
					var listArray = list.split(',');
					console.log("listArray===>" +listArray)
					listArray.splice(-1, 1);
					console.log("listArray splice===>" + listArray)
	     
	     
					
					lal = listArray.length;
					console.log("lal===> " +lal);
	                	}
	                	else{
	                	console.log("fail")
                	
                	
                		}
                
               
                
                }
           		
              
                for (i = 0; i <lectureLength; i++) {
                	
                    var lecTime = listArray.splice(0, 1);
             		console.log(lecTime)
                    lt = Number(lecTime);
                 
                    switch (lt) {

                        case 1:
                            $("#col1").css("background-color", "red");
                            break;
                        case 2:
                            $("#col2").css("background-color", "red");
                            break;
                        case 3:
                            $("#col3").css("background-color", "red");
                            break;
                        case 4:
                            $("#col4").css("background-color", "red");
                            break;
                        case 5:
                            $("#col5").css("background-color", "red");
                            break;
                        case 6:
                            $("#col6").css("background-color", "red");
                            break;
                        case 7:
                            $("#col7").css("background-color", "red");
                            break;
                        case 8:
                            $("#col8").css("background-color", "red");
                            break;
                        case 9:
                            $("#col9").css("background-color", "red");
                            break;
                        case 10:
                            $("#col10").css("background-color", "red");
                            break;
                        case 11:
                            $("#col11").css("background-color", "red");
                            break;
                        case 12:
                            $("#col12").css("background-color", "red");
                            break;
                        case 13:
                            $("#col13").css("background-color", "red");
                            break;
                        case 14:
                            $("#col14").css("background-color", "red");
                            break;
                        case 15:
                            $("#col15").css("background-color", "red");
                            break;
                        case 16:
                            $("#col16").css("background-color", "red");
                            break;
                        case 17:
                            $("#col17").css("background-color", "red");
                            break;
                        case 18:
                            $("#col18").css("background-color", "red");
                            break;
                        case 19:
                            $("#col19").css("background-color", "red");
                            break;
                        case 20:
                            $("#col20").css("background-color", "red");
                            break;
                        case 21:
                            $("#col21").css("background-color", "red");
                            break;
                        case 22:
                            $("#col22").css("background-color", "red");
                            break;
                        case 23:
                            $("#col23").css("background-color", "red");
                            break;
                        case 24:
                            $("#col24").css("background-color", "red");
                            break;
                        case 25:
                            $("#col25").css("background-color", "red");
                            break;
                        case 26:
                            $("#col26").css("background-color", "red");
                            break;
                        case 27:
                            $("#col27").css("background-color", "red");
                            break;
                        case 28:
                            $("#col28").css("background-color", "red");
                            break;
                        case 29:
                            $("#col29").css("background-color", "red");
                            break;
                        case 30:
                            $("#col30").css("background-color", "red");
                            break;
                        case 31:
                            $("#col31").css("background-color", "red");
                            break;
                        case 32:
                            $("#col32").css("background-color", "red");
                            break;
                        case 33:
                            $("#col33").css("background-color", "red");
                            break;
                        case 34:
                            $("#col34").css("background-color", "red");
                            break;
                        case 35:
                            $("#col35").css("background-color", "red");
                            break;
                        case 36:
                            $("#col36").css("background-color", "red");
                            break;
                        case 37:
                            $("#col37").css("background-color", "red");
                            break;
                        case 38:
                            $("#col38").css("background-color", "red");
                            break;
                        case 39:
                            $("#col39").css("background-color", "red");
                            break;
                        case 40:
                            $("#col40").css("background-color", "red");
                            break;
                        case 41:
                            $("#col41").css("background-color", "red");
                            break;
                        case 42:
                            $("#col42").css("background-color", "red");
                            break;
                        case 43:
                            $("#col43").css("background-color", "red");
                            break;
                        case 44:
                            $("#col44").css("background-color", "red");
                            break;
                        case 45:
                            $("#col45").css("background-color", "red");
                            break;
                        case 46:
                            $("#col46").css("background-color", "red");
                            break;
                        case 47:
                            $("#col47").css("background-color", "red");
                            break;
                        case 48:
                            $("#col48").css("background-color", "red");
                            break;
                        case 49:
                            $("#col49").css("background-color", "red");
                            break;
                    };
                }
            }
        });
    });
</script>
<%@include file="/WEB-INF/views/header.jsp"%>

<section id="introLA">
    <div class="search-right col-md-9">

        <div class=" search-table-wrap row col-md-12">
            <!--강의시간표 이름-->
            <div class="search-table-title">
                <h1>시간표 보기</h1>
            </div>
            <!-- 강의시간표-->
            <table class="search-table col-md-12">
                <thead>
                    <tr>
                        <th></th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                        <th>일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="time">
                            3-4
                        </td>
                        <td id="col1"></td>
                        <td id="col8"></td>
                        <td id="col15"></td>
                        <td id="col22"></td>
                        <td id="col29"></td>
                        <td id="col36"></td>
                        <td id="col43"></td>
                    </tr>
                    <tr>
                        <td class="time">
                            4-5
                        </td>
                        <td id="col2"></td>
                        <td id="col9"></td>
                        <td id="col16"></td>
                        <td id="col23"></td>
                        <td id="col30"></td>
                        <td id="col37"></td>
                        <td id="col44"></td>
                    </tr>
                    <tr>
                        <td class="time">
                            5-6
                        </td>
                        <td id="col3"></td>
                        <td id="col10"></td>
                        <td id="col17"></td>
                        <td id="col24"></td>
                        <td id="col31"></td>
                        <td id="col38"></td>
                        <td id="col45"></td>
                    </tr>
                    <tr>
                        <td class="time">
                            6-7
                        </td>
                        <td id="col4"></td>
                        <td id="col11"></td>
                        <td id="col18"></td>
                        <td id="col25"></td>
                        <td id="col32"></td>
                        <td id="col39"></td>
                        <td id="col46"></td>
                    </tr>
                    <tr>
                        <td class="time">
                            7-8
                        </td>
                        <td id="col5"></td>
                        <td id="col12"></td>
                        <td id="col19"></td>
                        <td id="col26"></td>
                        <td id="col33"></td>
                        <td id="col40"></td>
                        <td id="col47"></td>
                    </tr>
                    <tr>
                        <td class="time">
                            8-9
                        </td>
                        <td id="col6"></td>
                        <td id="col13"></td>
                        <td id="col20"></td>
                        <td id="col27"></td>
                        <td id="col34"></td>
                        <td id="col41"></td>
                        <td id="col48"></td>
                    </tr>
                    <tr>
                        <td class="time">
                            9-10
                        </td>
                        <td id="col7"></td>
                        <td id="col14"></td>
                        <td id="col21"></td>
                        <td id="col28"></td>
                        <td id="col35"></td>
                        <td id="col42"></td>
                        <td id="col49"></td>
                    </tr>
                </tbody>

            </table>
        </div>
    </div>
</section>

</body>
<%@include file="/WEB-INF/views/footer.jsp"%>