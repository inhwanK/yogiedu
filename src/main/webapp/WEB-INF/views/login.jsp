<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
</head>
<body>
	<div>
		<div>
			<div>
				<div>
					<div>
						<input type="text" id="username" autofocus="autofocus" placeholder="ID">
					</div>
					<div >
						<input type="password" id="password" placeholder="Password">
					</div>
					<div>
						<input type="hidden" id="token" data-token-name="${_csrf.headerName}" placeholder="Password" value="${_csrf.token}">
					</div>
					<div >
						<div >
							<div >
								<button id="login-button">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>

$(function(){
	$("#login-button").click(function(){
		login();
	})		
})

/**
* 로그인 
*/
function login(){
	$.ajax({
		url:""/user/login/result",
		type :  "POST",
		dataType : "json",
		data : {
			memberId : $("#username").val(),
			memberPassword : $("#password").val()
		},
		beforeSend : function(xhr)
		{
			//이거 안하면 403 error
			//데이터를 전송하기 전에 헤더에 csrf값을 설정한다
			var $token = $("#token");
			xhr.setRequestHeader($token.data("token-name"), $token.val());
		},
		success : function(response){
			if(response.code == "200"){
				// 정상 처리 된 경우
				window.location = response.item.url;	//이전페이지로 돌아가기
			} else {
				alert(response.message);
			}
		},
		error : function(a,b,c){
			console.log(a,b,c);
		}
		
	})
	
}

</script>

</html>