<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Response.Write("
	<script>
		alert('삭제되었습니다.');
	</script>
	"); Response.Write("
	<script>
		location.href = 'productList.jsp';
	</script>
	");
</body>
</html>