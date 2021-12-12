<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function(){
		var contextPath = "${contextPath}";
		var apiKey = "82a08de35a9d4dee805fbeb9a29f1ba5";
		var zone = "남구";
		
		$.ajax({
			url:"https://open.neis.go.kr/hub/acaInsTiInfo?KEY="+apiKey+"&Type=json&ATPT_OFCDC_SC_CODE="+zone,
			type:"get",
			contentType:"application/json; charset=utf-8",
			dataType: "json",
			success: function(json){
				console.log(json);
			}
		});
	});

</script>
<title>insert api</title>
</head>
<body>

</body>
</html>