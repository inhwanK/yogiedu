<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />


<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(function(){
    $('#submit').on("click",function () {

    	var contextPath = "${contextPath}";

    		var data={
    				ACA_ASNUM : $("#inputEmail"),
    				ACA_NM: $("#inputPassword")
    				
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
    
  
});
</script>
<body>
 <div id="container" style="width: 30%; height: 80px; margin-left: 30%; margin-top: 10%;" >
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
