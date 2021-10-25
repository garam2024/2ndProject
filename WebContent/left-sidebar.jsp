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

			<!-- Main -->
				<div class="wrapper">
					<div class="container" id="main">
						<div class="row gtr-150">
							<div class="col-4 col-12-narrower">

								<!-- Sidebar -->
									<section id="sidebar">
										<section>
											<header>
												<h3><font style="font-weight:bolder">�۽��� �÷���?</font></h3>
											</header>
											<p> ������ ���� ��ü���� �����ϰ�,
											��︮�� �÷��� ã��<br> �м�, ��Ƽ ���
											��ȭ�Ӱ� <br>���� ����� �� �ֵ��� �� <br>�ý����Դϴ�.
											</p>
											
										</section>
										<section>
											
											<header>
												<h3><font style="font-weight:bolder">�۽��� �÷��� ����</font></h3>
											</header>
											<p style="margin-bottom:5em;">�۽��� �÷��� <br>������ ���� ��ü  �÷�,<br>
											��, �Ǻλ�, �Ӹ�ī�� ��, ������ ����  ��������
											�ΰ��� ���� ���� 2����, 3����, 4����, 16���� ��<br>
											������ ������ ���ؿ� ���� <br>�з��ϰ�
											��︮�� �÷��� ��õ�ϴ� ��</p>
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
											<h2 style="margin-bottom:1em;">�۽��� �÷� ����</h2>
											<img src="images/123124.png" alt="" />
											
										<ul class="actions">
												<li><a href="test.jsp" class="button" style="background-color:Salmon; margin-bottom:1em; margin-top:1em;"><font style="color:white;  font-weight:bolder;">�����Ϸ�����</font></a></li>
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