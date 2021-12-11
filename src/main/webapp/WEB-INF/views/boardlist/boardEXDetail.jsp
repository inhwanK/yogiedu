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
					<h1>boardEXDetail</h1>
					<hr>
					<form action="updateboardEX.do" method="post">
						<input name="idx" type="hidden" value="${boardEX.idx}" />
						<table border="1">
							<tr>
								<td bgcolor="orange" width="70">제목</td>
								<td align="left"><input name="title" type="text"
									value="${boardEX.title }" /></td>
							</tr>
							<tr>
								<td bgcolor="orange">작성자</td>
								<td align="left">${boardEX.writerIdx }</td>
							</tr>
							<tr>
								<td bgcolor="orange">파일</td>
								<c:choose>
									<c:when test="${!empty fileItemList}">
										<td align="left"><c:forEach items="${fileItemList }" var="fileItem">
												<a href="download?fileNm=${fileItem.fileNm }&orgNm=${fileItem.orgNm }">
													${fileItem.orgNm}
												</a>
											</c:forEach></td>
									</c:when>
									<c:otherwise>
										<td align="left">등록된 파일이 없습니다.</td>
									</c:otherwise>
								</c:choose>
							</tr>
							<tr>
								<td bgcolor="orange">내용</td>
								<td align="left"><textarea name="content" cols="40" rows="10">${boardEX.content }</textarea></td>
							</tr>
							<tr>
								<td bgcolor="orange">등록일</td>
								<td align="left">${boardEX.sysregdate }</td>
							</tr>
							<tr>
								<td bgcolor="orange">조회수</td>
								<td align="left">${boardEX.viewCnt }</td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="글 수정" /></td>
							</tr>
						</table>
					</form>
					<hr>
				</div>
			</div>
		</section>
	</body>
	<%@include file="/WEB-INF/views/footer.jsp"%>