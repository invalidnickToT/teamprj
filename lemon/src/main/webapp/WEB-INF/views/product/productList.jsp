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
	<div>
		<h1>팝니다</h1>
	</div>
	<div>
		<table>
			<thead>

			</thead>
			<tbody>
				<c:forEach items="${products }" var="n">
					<tr onmouseover='this.style.background="#9fff80";'
						onmouseleave='this.style.background="#FFFFFF";'
						onclick="productChois(${p.productId })">
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

</body>
</html>