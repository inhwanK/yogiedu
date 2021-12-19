<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<c:set var="userName" value="<%=request.getAttribute(\"userName\")%>" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	
	
	<script type="text/javascript">
	$(function(){
		var contextPath = "${contextPath}";
		var userName = "${userName}";
		
		console.log("contextPath > "+contextPath);
		console.log("userName > "+userName);
		
		
		Swal.fire({				// Alert창 디자인 sweetalert2
            icon : 'success',
            title: '로그인이 필요한 서비스입니다.'
        }).then((result) => {
			if (result.isConfirmed) { 
				window.location.href = contextPath + "/login";
			}
        });
	});
	
	</script>
	<script type="text/javascript">
	
	
	</script>
	<%@include file="/WEB-INF/views/header.jsp"%>
	
	<section id="introLA">
		<div class="container" >
		
			<div id="no-log">
				
				안됬을때
			</div>
			<div id="yes-log">
				<span id="user">${userName} 님이 로그인 하셨습니다</span> 
			</div>
			
			<div>
				<a href="/logout" class="btn btn-info active" role="button">Logout</a>
			</div>
			
			<div>
				<a href="/oauth2/authorization/google" class="btn btn-success active" role="button">GoogleLogin</a>
			</div>
		</div>
	</section>

</body>
<%@include file="/WEB-INF/views/footer.jsp"%>