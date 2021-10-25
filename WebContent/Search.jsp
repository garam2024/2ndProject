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

<style>
</style>

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
<body class="no-sidebar is-preload">

	<%
		memberVO vo = (memberVO) session.getAttribute("vo");
	%>

	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">UR Color</a>
				</h1>

				<!-- Nav -->

				<%
					if (vo == null) {
				%>
				<nav id="nav">
					<ul>
						<li><a href="#">로그인</a>
							<ul>
								<li><a href="Login.html">로그인</a></li>
								<li><a href="Login.html">회원가입</a></li>
							</ul></li>
						<li><a href="left-sidebar.jsp">퍼스널 컬러 진단하기</a></li>
						<li class="break"><a href="right-sidebar.jsp">나만의 의상 추천받기</a></li>
						<li><a href="no-sidebar.jsp">퍼스널 컬러 커뮤니티</a></li>
					</ul>
				</nav>
				<%
					} else {
				%>
				<nav id="nav">
					<ul>
						<%
							if (vo.getEmail().equals("admin")) {
						%>
						<li><a href="#">회원 관리</a>
							<ul>
								<li><a href="#">회원 목록</a></li>
								<li><a href="LogoutService.do">로그아웃</a></li>
							</ul></li>
						<%
							} else {
						%>

						<li><a href="#">나의 정보</a>
							<ul>
								<li><a href="#">마이페이지</a></li>
								<li><a href="#">개인정보수정</a></li>
								<li><a href="LogoutService.do">로그아웃</a></li>
							</ul></li>

						<%
							}
						%>

						<li><a href="left-sidebar.jsp">퍼스널 컬러 진단하기</a></li>
						<li class="break"><a href="right-sidebar.jsp">나만의 의상 추천받기</a></li>
						<li><a href="no-sidebar.jsp">퍼스널 컬러 커뮤니티</a></li>
					</ul>
				</nav>
				<%
					}
				%>

			</div>
		</div>
		<title>JSP 게시판 웹 사이트</title>



		<div
			style="display: block; text-align: center; position: relative; top: 10px">
			<p>
				<span
					style="border-radius: 15px 15px 15px 0; top: 10px; margin-top: 5px; border: 3px solid #FFAD5B; text-align: center; position: relative; padding: 0.5em 0.6em; color: #FF8000; font-weight: bolder; font-size: 30px;">
					<img src="images/men.png" width="50px" ; height="50px"
					; style="margin-top: 20px;">UR Color Community<img
					src="images/wo.png" width="50px" ; height="50px"
					;style="margin-top: 20px;">
				</span>
			</p>
		</div>

		<div class="container">

			<div class="row">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

				<table class="table table-striped"
					style="text-align: center; background-color: white; border: 2px solid black; margin: 0; position: relative; top: 30px; margin-bottom: 30px">
					<thead>
						<tr>
							<th style="background-color: PeachPuff; text-align: center;">번호</th>
							<th style="background-color: PeachPuff; text-align: center;">제목</th>
							<th style="background-color: PeachPuff; text-align: center;">작성일</th>
							<th style="background-color: PeachPuff; text-align: center;">작성자</th>


						</tr>
					</thead>

					<%
						request.setCharacterEncoding("euc-kr");
					String search = request.getParameter("search");
					boardDAO dao = new boardDAO();

					ArrayList<boardVO> arr = dao.searchService(search);

					for (int i = 0; i < arr.size(); i++) {
						out.print("<tbody>");
						out.print("<tr>");
						out.print("<td>" + (i + 1) + "</td>");
						out.print("<td><a href='show.jsp?title=" + arr.get(i).getTitle() + "'>" + arr.get(i).getTitle() + "</a></td>");
						out.print("<td>" + arr.get(i).getDate() + "</td>");
						out.print("<td>" + arr.get(i).getNick() + "</td>");
						out.print("</tr>");
						out.print("</tbody>");
					}
					%>



				</table>
				<div style="width: 100%; padding: 0px; position: relative">

					<div>

						<form action="SearchService.do" method="post"
							style="float: left; padding: 0">
							<input type="text" name="search" placeholder="검색할 단어를 입력해주세요"
								style="float: left; background: white; font-weight: bold; width: 400px; height: 50px; padding: 0; text-align: center">
							<button name="button" onclick="goSubmit()"
								style="background: white; font-weight: bold; width: 100px; height: 50px; float: left; padding: 0; text-align: center">
								<h style="margin-left:10px;">검 색</h>
								<img src="images/pen2.png" width="20px" height="20px"
									style="margin-left: 10px">
							</button>


						</form>




						<button name="button" onclick="location.href='Writing.jsp'"
							style="background: white; font-weight: bold; width: 10%; height: 50px; padding: 0; text-align: center; position: absolute; right: 0px;">
							<h style="margin-left:10px;">글쓰기</h>
							<img src="images/wr.png" width="15px" height="15px"
								style="margin-left: 10px; margin-bottom: 3px">
						</button>



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