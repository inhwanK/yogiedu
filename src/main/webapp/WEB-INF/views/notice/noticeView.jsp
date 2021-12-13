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

	        var contextPath = "${contextPath}";
			var notIdx = "${notIdx}";
	
			console.log(notIdx);
	
			$.ajax({
		    url : contextPath + "/api/notice?notIdx=" + notIdx,
		    method : "get",
		    dataType : "json",
		    success: function(json) {
		    console.log(json);
		     
		    //var dateForm = getFormatDate(json.regDate);
		    
		    
		    $("p#title").append(json.notTitle);
		    //$("span#regdate").append(dateForm);
		    $("div#content").append(json.notContent);
		
	    	}
				
		
			})
		
		});

</script>  
<body>
<section>
    
    <div id="title-wrap">
        <div class="title">
            <a href="noticelist" style="font-weight: 900; color: #222;">공지사항</a>
        </div>
        
    </div>

    <div id="notice-detail-wrap">
        <div id="contents">
            <div class="table-wrap">
                <div class="board-view">
                    <div class="tit-area">
                        <p class="tit" id="title"></p>
                    </div>

                    <div class="info">
                        <p>
                            <span class="tit">등록일</span> <span class="txt" id="regdate"></span>
                           
                            </span>
                        </p>
                        
                        
                    </div>

                    <div class="cont" id="content"></div>
                </div>
            </div>

            <div class="prev-next">
                <div class="line prev" title="이전">
                <!-- 	<p class="tit" title="이전">이전</p>
                    <p class="link" title="이전">이전글 제목</p>
                    글 존재하면 a태그 존재하지 않으면 p 태그  -->
                </div>
                <div class="line next" title="다음">
                    <!-- <p class="tit" title="다음">다음</p>
                    <p class="link" title="다음">다음글 제목</p>
                    <a href="#" class="link moveBtn" data-no="10348" title="다음">
                        다음글 제목 </a> -->
                </div>
            </div>
            <div class="btn-group pt40">
                <a href="${contextPath}/noticelist" class="button large listBtn"
                    title="">목록</a>
            </div>
        </div>
    </div>
   

</section>
</body>