<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<meta charset="UTF-8">

<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">

window.onload = function(){
    CKEDITOR.replace('content',{
         width: "1200px",
            height: "500px"
    });
 };
	

	$(function() {

		var contextPath = "${contextPath}";
		var notIdx = "${notIdx}";

		$.ajax({
			url : contextPath + "/api/notice?notIdx=" + notIdx,
			method : "get",
			dataType : "json",
			success : function(json) {

				console.log(json);
				console.log(json.notTitle);
				console.log(json.notContent);
				$("textarea#title").empty();
				$("textarea#content").empty();

				$("textarea#title").append(json.notTitle);
				$("textarea#content").append(json.notContent);
				
				//CKEDITOR.instances.content.setData(json.notContent);
				CKEDITOR.instances.content.setData();
				
				setTimeout(function() {
					CKEDITOR.instances.content.document.getBody().setHtml(json.notContent);
					// html 코드를 정상적으로 에디터에 추가하기 위한 방법
				}, 200);
			}
		});

		// 수정 버튼
		$("#modify").on('click', function() {
			var conf = confirm("수정하시겠습니까?");
			if (conf) {

				var data = {
					notTitle : $("#title").val(),
					notContent : CKEDITOR.instances.content.getData()

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
						alert("에러.");
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

<%@include file="/WEB-INF/views/header.jsp"%>
	<section id="introLA">
		<div id="page-wrapper">
			<!-- 본문 -->
			<div class="main">
				<h1 class="text-center">공지사항</h1>
				<div class="col-md-6 col-sm-12" id="contents">
					<div class="form">


						<div class="form-group">
							<label>제목</label>
							<textarea rows="1" type="text" id="title" class="form-control"></textarea>
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea rows="10" cols="500" name="content" id="content" class="form-control">
                     		</textarea>
						</div>


						<div id="btn">
							<button id="modify" class="btn btn-primary">수정</button>
							<button id="cancel" class="btn btn-primary">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>

<%@include file="/WEB-INF/views/footer.jsp"%>