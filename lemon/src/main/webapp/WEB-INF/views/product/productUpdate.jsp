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
			<h1>글수정</h1>
		</div>
		<div>
			<form id="frm" action="productUpdate.do" method="post">
				<div>
					<table>
						<tr>
							<th>거래유형 선택</th>
							<!-- 	select tag쓰고 싶어요 -->
							<td><input type="text" id="productInfo" name="productInfo"
								required="required"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" id="productTitle" name="productTitle"
								required="required"></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${product.productWriter }</td>
						</tr>
						<tr>
							<th>판매 가격</th>
							<td><input type="number" id="productPrice"
								name="productPrice" required="required"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input type="text" id="productSubject"
								name="productSubject" required="required"></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>