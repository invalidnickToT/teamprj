<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">

		<div>
			<h1>게시글 목록</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th >게시물 번호</th>
						<th >제목</th>
						<th >작성일자</th>
						<th >제품가격</th>
						<th >조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${notices }" var="n">
						<tr onmouseover='this.style.background="#9fff80";'
							onmouseleave='this.style.background="#FFFFFF";'
							onclick="noticeChois(${n.noticeId })">
							<td align="center">${n.noticeId }</td>
							<td align="center">${n.noticeWriter }</td>
							<td>${n.noticeTitle }</td>
							<td align="center">${n.noticeWdate }</td>
							<td align="center">${n.noticeHit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<c:if test="${not empty id }">
				<button type="button" onclick="location.href='noticeInsertForm.do'">새글작성</button>
			</c:if>
		</div>
		<div>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeId" name="noticeId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function noticeChois(id) {
//		let url = 'noticeSelect.do?noticeId='+ id;
//		location.href = url;
		let frm = document.getElementById("frm");
		frm.noticeId.value = id;
		frm.submit();
	}
</script>
</body>
</html>