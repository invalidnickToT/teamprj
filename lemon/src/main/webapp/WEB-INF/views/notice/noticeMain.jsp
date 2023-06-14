<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>순번</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${notices}" var="n">
				<tr onclick="noticeChoice(${n.noticeId})"
				onmouseover='this.style.background="#9fff80"'
				onmouseleave='this.style.background="#FFFFFF"'>
					<td>${n.noticeId }</td>
					<td>${n.noticeTitle }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<c:if test="${grade eq 'A'}">
	<button type="button" onclick="location.href='noticeInsertForm.do'">
	공지작성
	</button>
	</c:if>
	
	<script>
	function noticeChoice(noticeId){
		let url="noticeSelect.do?noticeId="+noticeId;
		location.href=url;
	}

	</script>


</body>
</html>