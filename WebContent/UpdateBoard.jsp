<%@page import="com.VO.boardVO"%>
<%@page import="com.DAO.boardDAO"%>
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
	
	<% memberVO memberVO = (memberVO)session.getAttribute("vo"); 
		
	%>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">Your Color</a>
				</h1>

				<!-- Nav -->
				
				<%if(memberVO==null){%>
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
									<%if(memberVO.getEmail().equals("admin")){ %>
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
		
		<%		request.setCharacterEncoding("euc-kr");
			String title = request.getParameter("boardvvoo");
			System.out.println(title);
			
			boardDAO dao = new boardDAO();
			boardVO vo = dao.showboard(title);
					
			 %>
	
		<div style=
			
		"
		display:inline-block;
		position: absolute;
		width:1400px;
		top: 150px;
		text-align: center;
		left: 15%;
		right: 15%;
		margin: 0 auto;
		">
		
		<form action="UpdateContent.do?title=<%=vo.getTitle() %>" method="post">
		<div style="width: 100%; height:50px; clear:both;
		 box-sizing: border-box;border:1px solid black;text-align: center;margin-left: auto; margin-right: auto;">Ŀ�´�Ƽ ��</div>
		<div style="width: 10%; height:106px; float:left;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">�Խñ� ��ȣ<hr><%=vo.getNum() %></div>
		<div style="width: 40%; height:106px; float:left;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">����<hr style="margin:9.333px 0 0 0">
		 <input type="text" required name=titleupdate placeholder=<%=vo.getTitle() %>></div>
		<div style="width: 20%; height:106px; float:left;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">�ۼ���<hr><%=vo.getNick() %></div>
		<div style="width: 30%; height:106px; float:left; 
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">�ۼ���<hr><%=vo.getDate() %></div>
		<div style="width: 100%;border:1px solid black; height:215px; clear:both; 
		 box-sizing: border-box;margin-left: auto; margin-right: auto;">
		 <textarea required name="contentupdate" placeholder=<%=vo.getContent() %> rows="6px"></textarea></div>
		 
		 
		 <div style="background-color:red;width:10%;height:50px;float:right;padding:0;text-align: center">
		<a href="show.jsp?title=<%=vo.getTitle() %>" style="position:relative;top:20%">�ڷΰ���</a></div>
		 <div style="background-color:red;width:10%;height:50px;float:right;padding:0;text-align: center">
		
		
		<input type="submit" value="�����ϱ�" style="width:100%;height:50px;padding:0;border:0">
		</div>
		 	
		</form>
		 </div>
		
		
		
		
		
		
	

		
			

	<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>



		
</body>
</html>