<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

	
<style>
table, th, td {
	border: 1px solid;
	border-collapse: collapse;
	padding: 5px 10px;
}
</style>
</head>
<body>

<<<<<<< HEAD
=======
<section class="ftco-section">

		<div class="container">
			<div class="row justify-content-between">
				<div class="col">
					<a class="navbar-brand" href="./"><img
						src="<%=request.getContextPath()%>/resources/img/logo1.png"
						width="200"></a>
				</div>
				<div class="col d-flex justify-content-end">
					<div class="login">
                  <p class="mb-0 d-flex">
                     <c:if test ="${sessionScope.loginId == null}">
                     <a href="loginForm" class="login"><span>로그인</span></a>
                     <a href="joinForm" class="login"><span>회원가입</span></a>
                     </c:if>
                     <c:if test ="${sessionScope.loginId != null}">
                     안녕하세요 ${sessionScope.loginId} 님
                     <a href="logout">로그아웃</a>
                     &nbsp;&nbsp;/&nbsp;&nbsp; 
                     </c:if>
                     
                  </p>
               </div>
					<div class="social-media">
						<p class="mb-0 d-flex"><!-- MypageDetail -->
							<a href="MypageDetail?id=${sessionScope.loginId}"
								class="d-flex align-items-center justify-content-center"><span>
									<img
									src="<%=request.getContextPath()%>/resources/img/mypage.png"
									width="30">
							</span></a> 
							<a href="map"
								class="d-flex align-items-center justify-content-center"><span>
									<img src="<%=request.getContextPath()%>/resources/img/map.png"
									width="30">
							</span></a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="container">

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span> Menu
				</button>
				<form action="#" class="searchform order-lg-last">
					<div class="form-group d-flex">
						<input type="text" class="form-control pl-3" placeholder="Search">
						<button type="submit" placeholder="" class="form-control search">
							<span class="fa fa-search"></span>
						</button>
					</div>
				</form>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav mr-auto">
						
						<li class="nav-item"><a href="#" class="nav-link">여행지 정보</a></li>
						<li class="nav-item"><a href="review" class="nav-link">여행지 후기</a></li>
						<li class="nav-item"><a href="#" class="nav-link">여행지 경로</a></li>
						<li class="nav-item"><a href="#" class="nav-link">공지</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END nav -->
		</section>
>>>>>>> origin/master
<table>
		<a href="MyreviewBridge?id=${detail.id}">나의 후기글 리스트</a>
		<br>
		<a href="MyrouteBridge?id=${detail.id}">나의 경로글 리스트</a>
		<tr>
			<th>아이디</th>
			<td>${detail.id}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${detail.user_name}</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>${detail.gender}</td>
		</tr>
		<tr>
			<th>나이</th>
			<td>${detail.age}</td>
		</tr>
		<tr>
			<th>EMAIL</th>
			<td>${detail.email}</td>
		</tr>
		<tr>
			<th colspan="2"><a href="MypageUpdateForm?id=${detail.id}">회원정보 수정</a></th>
		</tr>
		<tr>
			<th colspan="2"><a href="withdraw?id=${detail.id}">회원 탈퇴</a></th>
		</tr>

	</table>


</body>
<script>
var msg="${msg}";
if(msg != ""){
	alert(msg);
	location.href='./';
}
</script>
</html>