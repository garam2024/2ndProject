<%@page import="com.VO.boardVO"%>
<%@page import="com.DAO.boardDAO"%>
<%@page import="com.VO.memberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Telephasic by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<%
	int idx = 1;
String title = "hh";
String writer = "jj";
String regdate = "2222";
String con = "sssss";
%>
</head>
</head>
<body class="no-sidebar is-preload">
	
	<%memberVO vo = (memberVO)session.getAttribute("vo"); %>
	
	<div id="page-wrapper">
	
		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">Your Color</a>
				</h1>

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
		<title>JSP 게시판 웹 사이트</title>
		
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				
					<div style="display:block;text-align:center;position:relative;top:10px"><h2>UR Color 회원목록</h2>
					</div>
			
				<div class="container">
							
					<div class="row">
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
						
						<table class="table table-striped"
							style="text-align: center; border: 10px solid #dddddd;position:relative; top:30px;">
							<thead>
								<tr>
									<th style="background-color: #eeeeee; text-align: center;">번호</th>
									<th style="background-color: #eeeeee; text-align: center;">이메일</th>
									<th style="background-color: #eeeeee; text-align: center;">닉네임</th>
									<th style="background-color: #eeeeee; text-align: center;">핸드폰 번호</th>
									<th style="background-color: #eeeeee; text-align: center;">비고</th>
									
									
								</tr>
							</thead>

							<%
								memberDAO dao = new memberDAO();
							
							ArrayList<memberVO> arr = dao.SelectMember();

							for (int i = 0; i < arr.size(); i++) {
								out.print("<tbody>");
								out.print("<tr>");
								out.print("<td>" + (i+1) + "</td>");
								out.print("<td>" + arr.get(i).getEmail() + "</td>");
								out.print("<td>" + arr.get(i).getNick() + "</td>");
								out.print("<td>" + arr.get(i).getTel() + "</td>");
								out.print("<td><a href='DeleteMember.do?email=" + arr.get(i).getEmail() + "'>회원삭제</a></td>");
								out.print("</tr>");
								out.print("</tbody>");
							}
							%>



						</table>
							
						
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