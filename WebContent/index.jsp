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
											<li><a href="ClientSelect.jsp">ȸ�� ���</a></li>
											<li><a href="LogoutService.do">�α׾ƿ�</a></li>														
										</ul></li>
									<%}else{ %>
														
									<li>
									
										<a href="#">���� ����</a>
										<ul>
											<li><a href="Mypage.jsp">����������</a></li>
											<li><a href="MemberUpdate.jsp">������������</a></li>
											<li><a href="LogoutService.do">�α׾ƿ�</a></li>														
										</ul></li>
									
									<%} %>
									
															
										
									<li><a href="left-sidebar.jsp">�۽��� �÷� �����ϱ�</a></li>
									<li class="break"><a href="springPallete">������ �ǻ� ��õ�ޱ�</a></li>
									<li><a href="no-sidebar.jsp">�۽��� �÷� Ŀ�´�Ƽ</a></li>
								</ul>
							</nav>
							<%} %>

					</div>

					<!-- Hero -->
					
						<section id="hero" class="container">
							<header>
					<%if(vo==null){ %>
								<h2>UR Color�� �Բ� ������ ��, <br>������ �ǻ��� Ȯ���غ���
								
								</h2>
								<%}else{ %>
								<h2>
									<%=vo.getNick()%>�� ���õ� �Բ��ؼ� �ݰ�����!
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
									<h2>�۽��� �÷�(Personal Color)
									<br>�� �����ΰ���?</h2>
								</header>
								<font face="���� ���" size="3"><p> ���۽��� �÷��� �� <b>�ڽ��� �����̰� �ϴ� Ư���� ������ ����</b>�� �ǹ��ϸ�<br> 
								�۽��� �÷� ������ �ڽ��� <font color="blue">��ü�� Ư¡(�Ǻλ�, �����ڻ� ��)</font>�� �ľ��Ͽ�<br> 
								<font color="green">���� �˸��� ���� ���� ������ ã�ư��� ����</font>�Դϴ�.<hr>


									</font></p>
								<ul class="actions">
									<li><a href="#" class="button">���� �۽��� �÷� �˾ƺ���</a></li>
								</ul>
							</section>
							<section class="col-6 col-12-narrower feature">
								<div class="image-wrapper">
									<a href="#" class="image featured"><img src="images/cloth2.jpg" alt="" /></a>
								</div>
								<header>
									<h2>�۽��� �÷�(Personal Color)
									<br>�� ��� �̿��ϳ���?</h2>
								</header>
								<font face="���� ���" size="3"><p>�۽��� �÷��� �� �� �����ϸ� ���� �ٲ��� �ʰ� 
								�ڽ��� <font color="blue">�۽��� �÷��� �̿��Ͽ� ��, ȭ��ǰ ���� ��</font>�ٸ�
								�ڽ��� ������ �ŷ��� �� �츱 �� �ִ� <b><font color="purple">�̹��� ��ȭ�� ����</font></b>�ϰ�, 
								<font color="green">�������� ������ ������ �� �ʿ䰡 ���� ������</font>�̱⵵ �մϴ�.<hr>
								</font></p>
								<ul class="actions">
									<li><a href="#" class="button">�۽��� �÷��� �´� ������ �ǻ� ��õ�ޱ�</a></li>
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