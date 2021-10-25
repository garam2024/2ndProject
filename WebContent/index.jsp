<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.VO.memberVO"%>



    
<!DOCTYPE html>
<html>
	<head>
		<title>Your Color</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css"/>
	</head>
	<body class="homepage is-preload">
		<% 
			memberVO vo = (memberVO)session.getAttribute("vo");
									
		%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp">UR Color</a></h1>

						<!-- Nav -->
							<%if(vo==null){%>
							<nav id="nav">
								<ul>
									<li>
									<a href="#">로그인</a>
										<ul>
											<li><a href="Login.html">로그인</a></li>
											<li><a href="JoinService.html">회원가입</a></li>
											
										</ul>
																			
									</li>
									<li><a href="left-sidebar.jsp">퍼스널 컬러 진단하기</a></li>
									<li class="break"><a href="right-sidebar.jsp">나만의 의상 추천받기</a></li>
									<li><a href="no-sidebar.jsp">퍼스널 컬러 커뮤니티</a></li>
								</ul>
							</nav>
						<% }else{%>
							<nav id="nav">
								<ul>
									<%if(vo.getEmail().equals("admin")){ %>
									<li>
									
										<a href="#">회원 관리</a>
										<ul>
											<li><a href="ClientSelect.jsp">회원 목록</a></li>
											<li><a href="LogoutService.do">로그아웃</a></li>														
										</ul></li>
									<%}else{ %>
														
									<li>
									
										<a href="#">나의 정보</a>
										<ul>
											<li><a href="Mypage.jsp">마이페이지</a></li>
											<li><a href="MemberUpdate.jsp">개인정보수정</a></li>
											<li><a href="LogoutService.do">로그아웃</a></li>														
										</ul></li>
									
									<%} %>
									
															
										
									<li><a href="left-sidebar.jsp">퍼스널 컬러 진단하기</a></li>
									<li class="break"><a href="springPallete">나만의 의상 추천받기</a></li>
									<li><a href="no-sidebar.jsp">퍼스널 컬러 커뮤니티</a></li>
								</ul>
							</nav>
							<%} %>

					</div>

					<!-- Hero -->
					
						<section id="hero" class="container">
							<header>
					<%if(vo==null){ %>
								<h2>UR Color와 함께 나만의 색, <br>나만의 의상을 확인해봐요
								
								</h2>
								<%}else{ %>
								<h2>
									<%=vo.getNick()%>님 오늘도 함께해서 반가워요!
								</h2>
								<%} %>
							</header>
							
						</section>
						
				</div>

			<!-- Features 1 -->
				<div class="wrapper">
					<div class="container">
						<div class="row">
							<section class="col-6 col-12-narrower feature">
								<div class="image-wrapper first">
									<a href="#" class="image featured first"><img src="images/personal3.jpg" alt="" /></a>
									
								</div>
								<header>
									<h2>퍼스널 컬러(Personal Color)
									<br>는 무엇인가요?</h2>
								</header>
								<font face="맑은 고딕" size="3"><p> ‘퍼스널 컬러’ 란 <b>자신을 돋보이게 하는 특정한 색들의 조합</b>을 의미하며<br> 
								퍼스널 컬러 진단은 자신의 <font color="blue">신체적 특징(피부색, 눈동자색 등)</font>을 파악하여<br> 
								<font color="green">가장 알맞은 본인 만의 색깔을 찾아가는 과정</font>입니다.<hr>


									</font></p>
								<ul class="actions">
									<li><a href="#" class="button">나의 퍼스널 컬러 알아보기</a></li>
								</ul>
							</section>
							<section class="col-6 col-12-narrower feature">
								<div class="image-wrapper">
									<a href="#" class="image featured"><img src="images/cloth2.jpg" alt="" /></a>
								</div>
								<header>
									<h2>퍼스널 컬러(Personal Color)
									<br>를 어떻게 이용하나요?</h2>
								</header>
								<font face="맑은 고딕" size="3"><p>퍼스널 컬러는 한 번 진단하면 쉽게 바뀌지 않고 
								자신의 <font color="blue">퍼스널 컬러를 이용하여 옷, 화장품 등을 고른</font>다면
								자신의 고유한 매력을 잘 살릴 수 있는 <b><font color="purple">이미지 변화가 가능</font></b>하고, 
								<font color="green">여러가지 색상을 시험해 볼 필요가 없어 경제적</font>이기도 합니다.<hr>
								</font></p>
								<ul class="actions">
									<li><a href="#" class="button">퍼스널 컬러에 맞는 오늘의 의상 추천받기</a></li>
								</ul>
							</section>
						</div>
					</div>
				</div>

			<!-- Promo -->
				
			<!-- Features 2 -->
			

			<!-- Footer -->
				
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>