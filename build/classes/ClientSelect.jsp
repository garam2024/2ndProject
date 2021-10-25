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
									<a href="#">�α���</a>
										<ul>
											<li><a href="Login.html">�α���</a></li>
											<li><a href="Login.html">ȸ������</a></li>
										</ul>
																			
									</li>
									<li><a href="left-sidebar.jsp">�۽��� �÷� �����ϱ�</a></li>
									<li class="break"><a href="right-sidebar.jsp">������ �ǻ� ��õ�ޱ�</a></li>
									<li><a href="no-sidebar.jsp">�۽��� �÷� Ŀ�´�Ƽ</a></li>
								</ul>
							</nav>
						<% }else{%>
							<nav id="nav">
								<ul>
									<%if(vo.getEmail().equals("admin")){ %>
									<li>
									
										<a href="#">ȸ�� ����</a>
										<ul>
											<li><a href="#">ȸ�� ���</a></li>
											<li><a href="LogoutService.do">�α׾ƿ�</a></li>														
										</ul></li>
									<%}else{ %>
														
									<li>
									
										<a href="#">���� ����</a>
										<ul>
											<li><a href="#">����������</a></li>
											<li><a href="#">������������</a></li>
											<li><a href="LogoutService.do">�α׾ƿ�</a></li>														
										</ul></li>
									
									<%} %>
										
									<li><a href="left-sidebar.jsp">�۽��� �÷� �����ϱ�</a></li>
									<li class="break"><a href="right-sidebar.jsp">������ �ǻ� ��õ�ޱ�</a></li>
									<li><a href="no-sidebar.jsp">�۽��� �÷� Ŀ�´�Ƽ</a></li>
								</ul>
							</nav>
							<%} %>
				
			</div>
		</div>
		<title>JSP �Խ��� �� ����Ʈ</title>
		
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				
					<div style="display:block;text-align:center;position:relative;top:10px"><h2>UR Color ȸ�����</h2>
					</div>
			
				<div class="container">
							
					<div class="row">
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
						
						<table class="table table-striped"
							style="text-align: center; border: 10px solid #dddddd;position:relative; top:30px;">
							<thead>
								<tr>
									<th style="background-color: #eeeeee; text-align: center;">��ȣ</th>
									<th style="background-color: #eeeeee; text-align: center;">�̸���</th>
									<th style="background-color: #eeeeee; text-align: center;">�г���</th>
									<th style="background-color: #eeeeee; text-align: center;">�ڵ��� ��ȣ</th>
									<th style="background-color: #eeeeee; text-align: center;">���</th>
									
									
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
								out.print("<td><a href='DeleteMember.do?email=" + arr.get(i).getEmail() + "'>ȸ������</a></td>");
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