<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>제품등록</h1>
	</div>
	<div>
		<form action="frm" action="productInsert.do"
			onsubmit="return formCheck()" method="post">

			<div>
				<table border="1">
					<tr>
						<th>* 상품 분류</th>
						<!-- 	select tag쓰고 싶어요 -->
						<td><input type="text" id="productCategory"
							name="productCategory" required="required"></td>
					</tr>
					<tr>
						<th>거래유형 선택</th>
						<td>
							<select id="productInfo" name="productInfo">
									<option value="삽니다">삽니다</option>
									<option value="팝니다">팝니다</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>* 제목</th>
						<td><input type="text" id="productTitle" name="productTitle"
							required="required"></td>
					</tr>
					<tr>
						<th>* 상품 가격</th>
						<td><input type="number" id="productPrice"
							name="productPrice" required="required"></td>
					</tr>
					<tr>
						<th>* 내용</th>
						<td><input type="text" id="productSubject"
							name="productSubject" required="required"></td>
					</tr>
				</table>
			</div>
			<div>
				<input type="submit" value="저장">&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='productList.do'">
			</div>
		</form>
	</div>
</body>
</html>