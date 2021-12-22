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

    	$("textarea").empty(); // 왠지 모르겠지만 페이지 띄울 때 textarea가 띄어쓰기가 되어있음.
        var contextPath = "${contextPath}";

        
        
        
        $("#regist").on('click', function() {
/*
            if ($("#title").val() == "") {
                alert("제목을 입력하세요.");
                return;
            } else if ($("#content").val() == "") {
                alert("내용을 입력하세요.");
                return;
            }
*/
            var conf = confirm("등록하시겠습니까?");
            if (conf) {

                var data = {
                    notTitle: $("#title").val(),
                    notContent: CKEDITOR.instances.content.getData(),
                    regDate: new Date(),
                    writer: "dafsfddf"

                };

                console.log(JSON.stringify(data));

                // 공지사항 등록.
                $.ajax({
                    url: contextPath + "/api/notice",
                    type: "post", //게시글 insert
                    dataType: "json",
                    data: JSON.stringify(data),
                    contentType: "application/json; charset=utf-8",
                    success: function(json) {
                        alert("등록이 완료되었습니다.");
                        window.location.href = contextPath + '/noticeList';
                        console.log();
                    },
                    error: function() {
                        alert("error");
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
							<textarea rows="1" type="text" id="title" class="form-control" placeholder="공지사항 제목을 입력해주세요"></textarea>
	                    </div>
	                    <div class="form-group">
	                        <label>내용</label>
	                        <textarea rows="10" cols="1000" name="content"  id="content" class="form-control" placeholder="공지할 내용을 입력해주세요">
	                        </textarea>
	                    </div>
	
	                    <div id="btn">
	                        <button id="regist" class="btn btn-primary">등록</button>
	                        <button id="cancel" class="btn btn-danger">취소</button>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </section>
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>