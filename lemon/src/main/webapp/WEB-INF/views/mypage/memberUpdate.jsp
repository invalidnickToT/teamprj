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
		<div><h1>회원 정보 수정</h1></div>
		
		<div>
			<form id="frm" action="memberUpdate.do" method="post" onsubmit="return fnSubmit()" onreset="return fnReset()">		
				<input type="hidden" id="memberId" name="memberId" value="${id}">
				<div>
					<table border="1">
						<tr>
							<td>아이디</td>	
							<td>
								<input type="text" id="memberId" name="memberId" value="${id}" disabled>
							</td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td>
								<input type="password" id="memberPw" name="memberPw" value="${memberPw }">
							</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td>
								<input type="text" name="memberTel" value="${memberTel }">
							</td>
						</tr>
					</table><br>
				</div>
				<div>
					<input type="submit" value="수정">
					<input type="reset" value="초기화">
				</div>
			</form>
			<div><a href="memberDeleteForm.do">회원탈퇴</a></div>
		</div>
	</div>	
	
	<script type="text/javascript">
		function fnSubmit() {
			if(confirm("정말 수정하시겠습니까?")) {
				return true;
			}
			return false;
		}
		
		function fnReset() {
			if(confirm("정말 초기화하시겠습니까?")) {
				return true;
			}
			return false;
		}
	</script>
</body>


</html>