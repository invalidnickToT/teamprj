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
	<div align="center">
		<div><h1>판매내역</h1></div>
		<div>				
			<c:forEach items="${sellList}" var="s">
				<div>
					<table>
						<tr>
							<td>${s.productCategory}</td>
							<td><a href="#">${s.productTitle}</a></td>
							<td>${s.productState}</td>
							<td>${s.productWdate}</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>