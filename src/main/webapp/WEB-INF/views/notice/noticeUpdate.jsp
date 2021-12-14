<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() {
		var notIdx = "${notIdx}";
		var contextPath = "${contextPath}";
		
		// 수정 버튼
		$("#modify").on('click', function() {
			var conf = confirm("수정하시겠습니까?");
			if (conf) {
				
				
				var data = {
						notTitle: $("#title").val(),
						notContent:$("#content").val()
				}
				
				console.log(data);
				
				$.ajax({
					url : contextPath + "/api/notice?notIdx=" + notIdx,
					type : "put",
					dataType : "json",
					data : JSON.stringify(data),
					contentType : "application/json; charset=utf-8",
					success : function(json) {
						alert("수정이 완료되었습니다.");
						window.location.href = contextPath + "/noticeList";
					},
					error : function() {
						alert("뭔가 잘못된 것이 분명합니다.");
					}
				});
			}
		});
		// 취소 버튼
		$("#cancel").on('click', function() {
			window.location.href = contextPath + "/noticeList";
		});
		});
</script>
<body>
	
	<div id="page-wrapper">
		<!-- 본문 -->
		<div class="main">
			<h1 class="text-center">공지사항</h1>
			<div class="col-md-6 col-sm-12" id="contents">
				<div class="form">
				
						
						<div class="form-group">
							<label>제목</label> <input type="text" id="title"
								class="form-control">
						</div>
						<div class="form-group" >
							<label>내용</label>
							<textarea rows="10" cols="500" id="content" class="form-control">
                     		</textarea>
						</div>
						

						<div id="btn">
							<button id="modify" class="btn btn-primary" >수정</button>
							<button id="cancel" class="btn btn-primary" >취소</button>
						</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>