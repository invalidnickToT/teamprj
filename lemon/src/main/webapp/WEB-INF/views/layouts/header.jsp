<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-xs-2">
					<div id="fh5co-logo">
						<a href="main.do">LemonMarket</a>
					</div>
				</div>
				<div class="col-md-6 col-xs-6 text-center menu-1">
					<ul>
						<li class="has-dropdown"><a href="productList.do">의류</a>
							<ul class="dropdown">
								<li><a href="single.html">Single Shop</a></li>
							</ul></li>
						<li><a href="#">뷰티</a></li>
						<li class="has-dropdown"><a href="#">전자</a>
							<ul class="dropdown">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">eCommerce</a></li>
								<li><a href="#">Branding</a></li>
								<li><a href="#">API</a></li>
							</ul></li>
						<li><a href="#">인테리어</a></li>
						<li><a href="#">식품</a></li>
						<li><a href="#">잡화</a></li>
						<li><a href="#">기타</a></li>
						<li><a href="noticeMain.do">공지사항</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
					<ul>
						<li class="search">
							<div class="input-group">
								<input type="text" placeholder="Search.."> <span
									class="input-group-btn">
									<button class="btn btn-primary" type="button">
										<i class="icon-search"></i>
									</button>
								</span>
							</div>
						</li>
						<c:if test="${empty id }">
							<li><a href="memberInsertForm.do">회원가입</a></li>
							<li><a href="memberLoginForm.do">로그인</a></li>
						</c:if>
						<c:if test="${not empty id }">
							<c:choose>
								<c:when test="${grade == 'A' }">
									<li><a href="adminMypage.do">${name}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="mypage.do">${name}</a></li>
								</c:otherwise>
							</c:choose>
							<li><a href="memberLogout.do">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>

		</div>
	</nav>
</body>
</html>