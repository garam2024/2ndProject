<%@page import="com.VO.memberVO"%>
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
					<a href="index.jsp">UR color</a>
				</h1>

				<!-- Nav -->
				<%
					if (vo == null) {
				%>
				<nav id="nav">
					<ul>
						<li><a href="#">�α���</a>
							<ul>
								<li><a href="Login.html">�α���</a></li>
								<li><a href="Login.html">ȸ������</a></li>
							</ul></li>
						<li><a href="left-sidebar.jsp">�۽��� �÷� �����ϱ�</a></li>
						<li class="break"><a href="right-sidebar.jsp">������ �ǻ� ��õ�ޱ�</a></li>
						<li><a href="no-sidebar.jsp">�۽��� �÷� Ŀ�´�Ƽ</a></li>
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
						<li><a href="#">ȸ�� ����</a>
							<ul>
								<li><a href="#">ȸ�� ���</a></li>
								<li><a href="LogoutService.do">�α׾ƿ�</a></li>
							</ul></li>
						<%
							} else {
						%>

						<li><a href="#">���� ����</a>
							<ul>
								<li><a href="#">����������</a></li>
								<li><a href="#">������������</a></li>
								<li><a href="LogoutService.do">�α׾ƿ�</a></li>
							</ul></li>

						<%
							}
						%>



						<li><a href="left-sidebar.jsp">�۽��� �÷� �����ϱ�</a></li>
						<li class="break"><a href="right-sidebar.jsp">������ �ǻ� ��õ�ޱ�</a></li>
						<li><a href="no-sidebar.jsp">�۽��� �÷� Ŀ�´�Ƽ</a></li>
					</ul>
				</nav>
				<%
					}
				%>

			</div>
		</div>
		<form action="WriteCheck.do" method="post">
			<div
				style="display: inline-block; position: absolute; width: 1400px; top: 150px; text-align: center; left: 15%; right: 15%; margin: 0 auto;">



				<div
					style="width: 100%; height: 50px; color: white; box-sizing: border-box; border: 1px solid black; text-align: center; margin-left: auto; margin-right: auto; background: linear-gradient(to left, pink, white, PeachPuff, pink, white, PeachPuff); font-size: 40px; font-weight: bolder; margin-left: auto; margin-right: auto;">
					COMMUNITY <img src="images/men.png" width="35px" ; height="35px";>
					<img src="images/comm2.png" width="35px" ; height="35px">
				</div>
				<div
					style="width: 100%; float: left; box-sizing: border-box; border: 1px solid black; margin-left: auto; margin-right: auto;">

					<p style="margin: 5px 0 0 0; font-weight: bolder">�� ����</p>
					<input type="text" name="title">
				</div>

				<div
					style="width: 100%; border: 1px solid black; height: 200px; clear: both; box-sizing: border-box; margin-left: auto; margin-right: auto; position: relative;">



					<p
						style="box-sizing: border-box; margin: 5px 0 0 0; font-weight: bolder">����</p>
					<textarea name="content"></textarea>
				</div>
				<br>


				<button name="button" onclick="goSubmit()"
					style="background: white; font-weight: bold; float: center; width: 11%; height: 50px;">
					<h style="margin-left:10px;">�۾���</h>
					<img src="images/wr.png" width="20px" height="20px"
						style="margin-left: 10px">
				</button>
		</form>



		<button onclick="location.href='no-sidebar.jsp'"
			style="background: white; font-weight: bold; float: center; width: 11%; height: 50px;">
			<h style="margin-left:5px;">�ڷΰ���</h>
			<img src="images/arr.jpg" width="20px" height="20px"
				style="margin-left: 10px;">
		</button>







	</div>





	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>



</body>
</html>