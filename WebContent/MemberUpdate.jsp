<%@page import="com.VO.memberVO"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<title>Telephasic by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />



</head>
<body class="no-sidebar is-preload">
	<div id="page-wrapper">


<% 	memberVO vo = (memberVO)session.getAttribute("vo");
 %>
		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">UR Color</a>
				</h1>

				<!-- Nav -->
					<%if(vo==null){%>
							<nav id="nav">
								<ul>
									<li>
									<a href="#">�α���</a>
										<ul>
											<li><a href="Login.html">�α���</a></li>
											<li><a href="JoinService.html">ȸ������</a></li>
											
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
											<li><a href="Mypage.jsp">����������</a></li>
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

		<div style="width: 100%; background-color: white;">
			<fieldset
				style="border: 3px solid PeachPuff; width: 45%; margin: 0 auto; background-color: white;">
				<legend align="center">
					<span
						style="border-bottom: 12px solid PeachPuff; padding: 0 0 0 0.2em; margin-left: 0em; margin-top: 10em; text-align: center; position: relative; font-weight: bolder; font-size: 30px;">����
						���� ����<img src="images/crd.png" width="50px" ; height="50px"
						;style="margin-top: 20px;">
					</span>
				</legend>
				<div style="width: 100%; margin-top: 5%">
					<div style="width: 50%; text-align: center; float: left;"></div>
					<img src="images/ma2.png" width="200px" height="200px"
						style="margin-left: 50px; margin-top:30px; margin-right: 30px; margin-bottom: 20px;"
						align="left">
					<br>
					<p>�г���<input type="text" name="title" style="width: 210px; height: 30px; float:right; margin-right:50px;"></p>

					<p>�޴���ȭ<input type="text" name="title" style="width: 210px; height: 30px; float:right; margin-right:50px;"></p>

					<p>��й�ȣ<input type="text" name="title" style="width: 210px; height: 30px; float:right; margin-right:50px;"></p>

					<p>��й�ȣȮ��<input type="text" name="title" style="width: 210px; height: 30px; float:right; margin-right:50px;"></p>


					<div style="width: 50%; float: left;"></div>
					
				</div>
				

			</fieldset>
				<center><div
						style="width: 100%; height: 100px; clear: both; background-color: white;">
						<button name="button" onclick="location.href='Mypage.jsp'"
							style="background: white; font-weight: bold;margin-top:20px;">
							<h style="margin-left:10px;">�ڷΰ���</h>
							<img src="images/tr.png" width="20px" ; height="20px"
								; style="margin-left: 10px;">
						</button>
						<button name="button" onclick="location.href='Mypage.jsp'"
							style="background: white; font-weight: bold; margin-top:20px;">
							<h style="margin-left:10px;">�����Ϸ�</h>
							<img src="images/che.png" width="20px" ; height="20px"
								; style="margin-left: 10px;">
						</button></center>

					</div>
		</div>


	</div>
	
	
	<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
	
	
	</body>
	
	
	