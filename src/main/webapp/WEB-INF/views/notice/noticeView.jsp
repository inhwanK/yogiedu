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
		   	$("#regdate").append(json.regDate);
		    $("div#content").append(json.notContent);
			$("div#writer").append(json.writer);	
		    
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
<body style="padding-top:100px;">
<section id=introLA>
    
    <div id="title-wrap">
        <div class="title">
            <a href="noticeList" style="font-size:3rem;font-weight: 900; color: #222;"><p class= "tit" id="title"></p></a>
        </div>
        
    </div>

    <div id="notice-detail-wrap">
        <div id="contents">
            <div class="table-wrap">
                <div class="container col-sm-9">
                	<table class="table">
                		<thead>
                			<td class="info" style="border-top:none;"><span class="tit">등록일 : </span><span class="txt" id="regdate"></span></td>
                			<td class="" style="display:flex;"><span>작성자 : </span><div class="writer" id="writer"></div></td>
                		</thead>
                		<tbody>
                			
                			<td colspan="2"><div class="cont" id="content"></div></td>
                		</tbody>
                	</table>
                </div>	
            </div>

            <div class="prev-next">
                <div class="line prev" title="이전">
                
                </div>
                <div class="line next" title="다음">
                  
                </div>
            </div>
            
             
			<div id="btn">
							<button id="modify" class="btn btn-primary" >수정</button>
							<button id="delete" class="btn btn-primary" >삭제</button>
							<button id="cancel" class="btn btn-primary">돌아가기</button>
			</div>       
            
            
        </div>
    </div>
   

</section>
</body>
<%@include file="/WEB-INF/views/footer.jsp"%>