<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<c:set var="userName" value="<%=request.getAttribute(\"userName\")%>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(function(){
	var contextPath = "${contextPath}";
	var userName = "${userName}";
	
	console.log("contextPath > "+contextPath);
	console.log("userName > "+userName);
});

</script>
<title>Insert title here</title>

</head>
<body>

Logged in as: <span id="user">${userName}</span>
<a href="/logout" class="btn btn-info active" role="button">Logout</a>

<a href="/oauth2/authorization/google" class="btn btn-success active" role="button">GoogleLogin</a>
</body>
</html>