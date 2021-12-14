<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />

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
		     
		    
		    $("p#title").append(json.notTitle);
		   	$("#regdate").append(json.redDate);
		    $("div#content").append(json.notContent);
	
	    	}
				
		
			})
				
				
		$("#cancel").on('click', function(){
			window.location.href = contextPath + "/noticeList";	
		});
			
		$("#modify").on('click', function() {
				window.location.href = contextPath + "/noticeUpdate?notIdx="+ notIdx;
				
			});
		
		$("#delete").on('click', function(){
			
			var conf = confirm("ㄹㅇ로 삭 제하시 겠습니까?");
			if(conf){
				
				var notIdx = "${notIdx}";
				
				console.log(notIdx);
		
				$.ajax({
			    url : contextPath + "/api/notice?notIdx=" + notIdx,
			    method : "delete",
			    dataType : "json",
			    success: function(json) {
			    
			    	alert("삭 제 ㅇㅋ");
			    	window.location.href = contextPath + "/noticeList";
			},
				
				error: function(){
				alert("조졋다");
			}
			
		})	
			}
		
		});
});
				
		
</script>  
<body>
<section>
    
    <div id="title-wrap">
        <div class="title">
            <a href="noticeList" style="font-weight: 900; color: #222;">공지사항</a>
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
                
                </div>
                <div class="line next" title="다음">
                  
                </div>
            </div>
            <div class="btn-group pt40">
                <a href="${contextPath}/noticeList" class="button large listBtn"
                    title="">목록</a>
             
			<div id="btn">
							<button id="modify" class="btn btn-primary" >수정</button>
							<button id="delete" class="btn btn-primary" >삭제</button>
							<button id="cancel" class="btn btn-primary">돌아가기</button>
			</div>       
            </div>
            
        </div>
    </div>
   

</section>
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>