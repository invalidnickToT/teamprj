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
		<div><h1>회원 탈퇴</h1></div>
		
		<p>탈퇴하시려면 비밀번호를 입력해주세요</p>
		<div>
			<form id="frm" action="memberDelete.do" method="post">
				<input type="hidden" id="memberId" name="memberId" value="${id}">
				<div>
					<table>
						<tr>
							<td>아이디</td>	
							<td>
								<input type="text" id="memberId" name="memberId" value="${id}" disabled>
							</td>
						</tr>
			            <tr>
			                <td>비밀번호</td>
			                <td><input type="password" id="memberPw" name="memberPw"  placeholder="비밀번호를 입력하세요." required="required"></td>
			            </tr>
			            	
			        </table><br> 
		        </div>
		        <div>       	
		        	<input type="submit" value="탈퇴" onclick="fnCheck()"/>&nbsp;&nbsp;
		        	<input type="button" value="취소" onclick="javascript:window.location='mypage.do'">

		        </div>
	        </form>
	        
		</div>
	</div>
	
	<script type="text/javascript">
		function fnCheck(){
			let frm = document.getElementById("frm");
			<%= session.getId()%>
			let sessionPw = <%=(String)session.getAttribute("pw")%>
			console.log(sessionPw);
			if(frm.memberPw.value != sessionPw){
				alert("비밀번호가 일치하지 않습니다.");
				frm.memberPw.value ="";
				frm.memberPw.focus();
				return false;
			} else{
				return frm.checkPw.value = "yes";
				confirm()
			} 
		}
		
// 		function fnDelete(){
// 			if() {
// 				if(frm.checkPw.value != "yes"){
// 					alert("비밀번호를 확인해주세요.");
// 					return false;
// 				}
// 				return true;	
// 			}
// 			return false;
// 		}
		
		
// 		function fnDelete() {
			
// 			let frm = document.getElementById("frm");			
// 			String sessionPw= (String)session.getAttribute("pw");
// 			alert(sessionPw);
// 	        String pw = request.getParameter("memberPw");
// 	        alert(pw);
// 			if(sessionPw.equals(pw)){	
// 				return false;			
// 			} else{
// 				alert("비밀번호가 일치하지 않습니다.");
// 				frm.memberPw.value ="";
// 				frm.memberPw.focus();
// 				return false;
// 			}
// 		}

// 			if(sessionPw != pw){
// 				alert("비밀번호가 일치하지 않습니다.");
// 				frm.memberPw.value ="";
// 				frm.memberPw.focus();
// 				return false;
// 			} else{
// 				return true;
// 			}	
	</script>	
</body>	
</html>