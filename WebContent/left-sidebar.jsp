<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Telephasic by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">
		
		<% 
			memberVO vo = (memberVO)session.getAttribute("vo");
									
		%>
		
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
											<li><a href="Login.html">회원가입</a></li>
											
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
											<li><a href="#">회원 목록</a></li>
											<li><a href="LogoutService.do">로그아웃</a></li>														
										</ul></li>
									<%}else{ %>
														
									<li>
									
										<a href="#">나의 정보</a>
										<ul>
											<li><a href="#">마이페이지</a></li>
											<li><a href="#">개인정보수정</a></li>
											<li><a href="LogoutService.do">로그아웃</a></li>														
										</ul></li>
									
									<%} %>
									
															
										
									<li><a href="left-sidebar.jsp">퍼스널 컬러 진단하기</a></li>
									<li class="break"><a href="right-sidebar.jsp">나만의 의상 추천받기</a></li>
									<li><a href="no-sidebar.jsp">퍼스널 컬러 커뮤니티</a></li>
								</ul>
							</nav>
							<%} %>
					</div>
				</div>

			<!-- Main -->
				<div class="wrapper">
					<div class="container" id="main">
						<div class="row gtr-150">
							<div class="col-4 col-12-narrower">

								<!-- Sidebar -->
									<section id="sidebar">
										<section>
											<header>
												<h3><font style="font-weight:bolder">퍼스널 컬러란?</font></h3>
											</header>
											<p> 개인이 가진 신체색을 인지하고,
											어울리는 컬러를 찾아<br> 패션, 뷰티 등에서
											조화롭게 <br>색을 사용할 수 있도록 한 <br>시스템입니다.
											</p>
											
										</section>
										<section>
											
											<header>
												<h3><font style="font-weight:bolder">퍼스널 컬러의 기준</font></h3>
											</header>
											<p style="margin-bottom:5em;">퍼스널 컬러는 <br>개인이 가진 신체  컬러,<br>
											즉, 피부색, 머리카락 색, 눈동자 색을  기준으로
											인간이 가진 색을 2가지, 3가지, 4가지, 16가지 등<br>
											연구자 각자의 기준에 따라 <br>분류하고
											어울리는 컬러를 추천하는 것</p>
											<a href="#" class="image featured"><img src="images/img2.png" alt="" /></a>
											
										</section>
									</section>

							</div>
							<div class="col-8 col-12-narrower imp-narrower">

								<!-- Content -->
									<article id="content">
									<article id="content">
										
										
										<center>
										<header>
											<h2 style="margin-bottom:1em;">퍼스널 컬러 측정</h2>
											<img src="images/123124.png" alt="" />
											
										<ul class="actions">
												<li><a href="test.jsp" class="button" style="background-color:Salmon; margin-bottom:1em; margin-top:1em;"><font style="color:white;  font-weight:bolder;">측정하러가기</font></a></li>
											</ul></center>
										</header></a>
										<a href="#" class="image featured"><img src="images/image1.png" alt="" /></a>
										
									</article>

							</div>
						</div>
						
						</div>
					</div>
				</div>
		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>