<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center"></div>
		<div><h1>회원 탈퇴</h1></div>
		<p>탈퇴하시려면 비밀번호를 입력해주세요</p>
		<div>
			<form id="frm" action="memberDelete.do" onsubmit="return fnDelete()">
				<table>
		            <tr>
		                <td>비밀번호</td>
		                <td><input type="password" id="memberPw" name="memberPw" required="required"></td>
		            </tr>
		        </table><br> 
		        <div>       	
		        	<input type="submit" value="탈퇴"/> 
		        	<input type="button" value="취소" onclick="javascript:window.location='mypage.jsp'">
		        </div>
	        </form>
		</div>

	<script type="text/javascript">

	
		function fnDelete() {
			let frm = document.getElementById("frm");			
			String sessionPw= (String)session.getAttribute("pw"); 			
	        String pw = request.getParameter("memberPw");
	        
			if(sessionPw.equals(pw)){
				if(confirm("정말 탈퇴하시겠습니까?")) {
					return true;
				}
				return false;			
			} else{
				alert("비밀번호가 일치하지 않습니다.");
				frm.memberPw.value ="";
				frm.memberPw.focus();
				return false;
			}
		}
		
	</script>	
</body>	
</html>