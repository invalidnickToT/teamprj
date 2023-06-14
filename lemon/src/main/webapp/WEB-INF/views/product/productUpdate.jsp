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
		<div>
			<h1>글수정</h1>
		</div>
		<div>
			<form id="frm" action="productUpdate.do" method="post">
				<div>
					<table>
						<tr>
							<th>거래유형 선택</th>
							<td>
								<select id= "productInfo" name="productInfo">
										<option value="삽니다">삽니다</option>
										<option value="팝니다">팝니다</option>
							</select>
								</td>
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