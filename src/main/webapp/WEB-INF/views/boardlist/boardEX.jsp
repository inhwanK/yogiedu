<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/header.jsp"%>
	<script type="text/javascript">
	
	$(function(){
		var contextPath = "${contextPath}";
		$.ajax({
			url:contextPath+"/api/noticelist", //noticelist에 있는 모든 데이터 정보를 사용하겠다
			type:"get", //데이터의 연동방식 (get or post)
			contextType:"apllication/json; charset=utf-8",
			dataType: "json", //로드된 데이터의 형태, 문자열은 string
			success: function(json) { //succeess 데이터 로드가 완료되면 호출하는 함수
				var list = "";
				var dataLength = json.length; // noticelist에 있는 json 데이터의 모든 데이터의 총 갯수(length 함수)를 변수 형태로 지정(var anything).
				for (i = 0; i < dataLength; i++) {
					list += "<tr>"; // 첫번째 반복문이 돌아갈 떄의 예
					list += "<td>"; + json[i].notIdx + "</td>"; //json의 데이터에 배열값 중 0번쨰 데이터의 notIdx property라는 값을 불러온다
					list += "<td><a href='${contextPath}/api/notice/"
							+ json[i].notIdx + "'>" + json[i].notTitle
							+ "</a></td>";
					list += "<td>" + json[i].redDate + "</td>";
					list += "<tr>"
				} // 실제 여기서 사용되는 notIdxm regDate, notTitle같은 데이터는 실제로 쿼리문에 있는 데이터의 정보임
				$("tbody").append(list); // append 는 jquery문법으로 선택한 확장집합의 요소 자식중에 가장 끝에 있는 매개변수를 추가한다는 뜻. 쉽게 생각하면 위에 list라는 변수 만들었고 tbody(html단)의 클래스안에 list의 정보들을 뿌려주는 것.
				
			}
		});
	});
	
	</script>
	<body>
		<section id="introN" class="clearfix">
			<div class="container">
				<div class="table-responsive-sm">
					  <table border="1">
						<tr>
							<th bgcolor="" width="50">no</th>
							<th bgcolor="" width="200">제목</th>
							<th bgcolor="" width="150">작성자</th>
							<th bgcolor="" width="150">작성일</th>
							<th bgcolor="" width="100">조회수</th>
						</tr>
						<c:choose>
							<c:when test="${!empty boardEXList}">
								<c:forEach items="${boardEXList }" var="boardEX">
									<tr>
										<td>${boardEX.idx }</td>
										<td align="left"><a href="boardEXDetail.do?idx=${boardEX.idx }">${boardEX.title }</a></td>
										<td>${boardEX.writerIdx }</td>
										<td>${boardEX.sysregdate }</td>
										<td>${boardEX.viewCnt }</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5">등록된 글이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
					<br>
					<a href="boardEXInsert.do">글 쓰기</a>
				</div>
			</div>
		</section>
	</body>
	<%@include file="/WEB-INF/views/footer.jsp"%>