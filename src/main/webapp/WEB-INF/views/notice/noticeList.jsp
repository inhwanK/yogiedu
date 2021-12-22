<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<meta charset="UTF-8">

<style>
.pagination-wrapper{
	display:flex;
}

.pageBtn{
	display: flex;
    align-content: stretch;
    padding: 10px;
    justify-content: center;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $(function() {
    	
        var contextPath = "${contextPath}";
        
        // page default 값
        var page = 0;
        var list;
        
        $.ajax({
            url: contextPath + "/api/noticelist?page=" + page, //noticelist에 있는 모든 데이터 정보를 사용하겠다
            type: "get", //데이터의 연동방식 (get or post)
            contextType: "apllication/json; charset=utf-8",
            dataType: "json", //로드된 데이터의 형태, 문자열은 string
            success: function(json) { //succeess 데이터 로드가 완료되면 호출하는 함수
            	
            	list = "";

            	console.log("이게 size 다 > " + json.size);
        		for(i=0; i < json.size ; i++){
	
					list += "<tr>"; // 첫번째 반복문이 돌아갈 떄의 예
					list += "<td>" + json.content[i].notIdx + "</td>"; //json의 데이터에 배열값 중 0번쨰 데이터의 notIdx property라는 값을 불러온다
					list += "<td><a href='${contextPath}/notice?notIdx=" + json.content[i].notIdx + "'>" + json.content[i].notTitle + "</a></td>";
					list += "<td>" + json.content[i].writer + "</td>";
					list += "<td>" + json.content[i].regDate + "</td>";
					list += "<tr>"
        		}
        		 
        		$("tbody").append(list);
        		
        		var pageBtn = "";
        		
        		for(var pageNo = 0; pageNo < json.totalPages; pageNo++){
        			pageBtn += "<li>";
        			pageBtn += "<button id=\"btn_write\" class=\"btn_write btn btn-primary btn-floating\" onclick=\"page("+ (pageNo+1) +")\">"+(pageNo+1)+"</button>";
        			pageBtn += "</li>";
        			//pageBtn +="<li class=\"pageBtn\">" + pageNo + "</li>";
        		}
        		
        		$("ul#pages").append(pageBtn);
               
            }
        });
        
    });
    
    function page(pageNo){
    	console.log("페이지 번호 > "+pageNo);
    	
    	
    	$.ajax({
            url:"/api/noticelist?page=" + (pageNo-1), //noticelist에 있는 모든 데이터 정보를 사용하겠다
            type: "get", //데이터의 연동방식 (get or post)
            contextType: "apllication/json; charset=utf-8",
            dataType: "json", //로드된 데이터의 형태, 문자열은 string
            success: function(json) { //succeess 데이터 로드가 완료되면 호출하는 함수
            	
            	list = "";

            	console.log("이게 size 다 > " + json.size);
        		for(i=0; i < json.numberOfElements ; i++){
	
					list += "<tr>"; // 첫번째 반복문이 돌아갈 떄의 예
					list += "<td>" + json.content[i].notIdx + "</td>"; //json의 데이터에 배열값 중 0번쨰 데이터의 notIdx property라는 값을 불러온다
					list += "<td><a href='${contextPath}/notice?notIdx=" + json.content[i].notIdx + "'>" + json.content[i].notTitle + "</a></td>";
					list += "<td>" + json.content[i].writer + "</td>";
					list += "<td>" + json.content[i].regDate + "</td>";
					list += "<tr>"
        		}
        		$("tbody").empty(); 
        		$("tbody").append(list);
            }
        });
    }
</script>
<%@include file="/WEB-INF/views/header.jsp"%>
<body>
    <section id="introN" class="clearfix" style="background:none;">
        <div class="container" style="margin-top:20px;">
            <div>
                <h1 class="mb-4" style="font-weight:400;">YOGIEDU에서 알려드립니다</h1>
            </div>
            <div class="table-responsive-sm">
                <table class="table board-list">
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:20%;">
                        <col style="width:20%;">
                        <col style="width:40%;">
                    </colgroup>
                    <thead>
                        <tr style="border-top:2px solid #000; background-color:#f6f7fb">
                            <th scope="col">글 번호</th>
                            <th scope="col">글 제목</th>
                            <th scope="col">글쓴이</th>
                            <th scope="col">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
									
                    </tbody>
                </table>
            </div>
            
           <button id="btn_write" type="button" class="btn_write btn btn-primary btn-floating" onclick="location.href= '${contextPath}/noticeReg'" style="margin:20px 0;">글작성</button>
        </div>
       		
       	<div class="pagination-wrapper clearfix">
			<ul class="pagination float--right" id="pages">
				
			</ul>
		</div>	
    </section>
</body>
<style>
    tbody td,
    th,
    tr {
        padding: 10px;
        border: 1px solid #dee2e6;
        border-left: none;
        border-right: none;
    }

    tbody tr:last-child {
        border-bottom: 2px solid #000;
    }
</style>

<%@include file="/WEB-INF/views/footer.jsp"%>