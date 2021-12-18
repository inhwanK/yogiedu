<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />


<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $(function() {
        $("textarea").empty(); // 왠지 모르겠지만 페이지 띄울 때 textarea가 띄어쓰기가 되어있음.

        var contextPath = "${contextPath}";


        $("#regist").on('click', function() {

            if ($("#title").val() == "") {
                alert("제목을 입력하세요.");
                return;
            } else if ($("#content").val() == "") {
                alert("내용을 입력하세요.");
                return;
            }

            var conf = confirm("등록하시겠습니까?");
            if (conf) {

                var data = {
                    notTitle: $("#title").val(),
                    notContent: $("#content").val(),
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
</script>dd

<body>
    <div id="page-wrapper">
        <!-- 본문 -->
        <div class="main">
            <h1 class="text-center">공지사항</h1>
            <div class="col-md-6 col-sm-12" id="contents">
                <div class="form">

                    <div class="form-group">
                        <label>제목</label>
                        <input type="text" id="title" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>내용</label>
                        <textarea rows="10" cols="500" id="content" class="form-control">
                           </textarea>
                    </div>

                    <div id="btn">
                        <button id="regist" class="btn btn-primary">등록</button>
                        <button id="cancel" class="btn btn-primary">취소</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>