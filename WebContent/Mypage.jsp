<%@page import="com.VO.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.VO.memberVO"%>



    
<!DOCTYPE html>
<html>
	<head>
		<title>UR Color</title>
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
				<div id="header-wrapper" style="padding:70px">
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp">Your Color</a></h1>

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
											<li><a href="MemberUpdate.jsp">������������</a></li>
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
</div></div>
					<!-- Hero -->
					<div style=
		
		"
		display:inline-block;
		position: relative;
		width:1400px;
		top: 50px;
		text-align: center;
		left: 15%;
		right: 15%;
		margin: 0 auto;
		">
		<div style="width: 100%; height:50px; color: white;
       box-sizing: border-box;border:1px solid black;text-align: center; margin-left: auto; margin-right: auto; background: linear-gradient(to left,pink,white,PeachPuff,pink,white,PeachPuff);font-size:40px;font-weight:bolder;margin-left: auto; margin-right: auto;">My Page
		 <img src="images/men.png"width="35px"; height="35px";></div>
		<div style="width: 100%; height:160px; float:left; background-color:white;
		 box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder">
		 	<div style="width: 100%; height:40px;border:1px solid black; float:left; background-color:white;
		 	box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;clear:both">ȸ������</div>
		 		<div style="width: 50%;border:1px solid black; height:40px; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left"><img src="images/Email.jpg" width="25px" height="25px">���� �̸���:</div>
		 		<div style="width: 50%;border:1px solid black; height:40px; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left"><%=vo.getEmail() %></div>
		 	
		 		<div style="width: 50%;border:1px solid black; height:40px; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left"><img src="images/nick.jpg" width="25px" height="25px">���� �г���:</div>
		 		<div style="width: 50%;border:1px solid black; height:40px; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left"><%=vo.getNick() %></div>
		 
		 		
		 		<div style="width: 50%;border:1px solid black; height:40px; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left"><img src="images/tel.jsp.jpg" width="25px" height="25px">���� ��ȭ��ȣ:</div>
		 		<div style="width: 50%;border:1px solid black; height:40px; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left"><%=vo.getTel() %></div>
		 	 	
		 </div>
		
		 <div style="width: 100%; height: 50px; float:left; 
		 box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder"></div>
		 
		 <div style="width: 100%; height: 50px; float:left; background-color:white;
		 box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;margin-bottom:10px">
		 		<div style="width: 100%; height:50px;border:1px solid black; float:left;color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;clear:both;background: linear-gradient(to left,pink,white,PeachPuff,pink,white,PeachPuff);font-size:40px;font-weight:bolder;margin-left: auto; margin-right: auto;">My writings<img src="images/pen2.png"width="35px"; height="35px";></div>
		 		
		 		<div style="width:15%; height:40px;border:1px solid black; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left">��ȣ</div>
		 		<div style="width:50%; height:40px;border:1px solid black; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left">�� ����</div>
		 		<div style="width:20%; height:40px;border:1px solid black; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left">�ۼ� ��¥</div>
		 		<div style="width:15%; height:40px;border:1px solid black; float:left; background-color:white;
		 		box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left">���</div>
		 	
		 		
		 	<% boardDAO boardDAO = new boardDAO();
		 		ArrayList<boardVO> arr = boardDAO.userSelect(vo.getNick());
		 		
		 		for(int i=0;i<arr.size();i++){
		 			out.print("<div style='width:15%; height:40px;border:1px solid black; float:left; background-color:white;box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left'>"+ (i+1) +"</div>");
		 			out.print("<div style='width:50%; height:40px;border:1px solid black; float:left; background-color:white;box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left'>"+ arr.get(i).getTitle() +"</div>");
		 			out.print("<div style='width:20%; height:40px;border:1px solid black; float:left; background-color:white;box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left'>"+ arr.get(i).getDate() +"</div>");
		 			out.print("<div style='width:15%; height:40px;border:1px solid black; float:left; background-color:white;box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder;float:left'><a href='DeleteBoardService2.do?title="+ arr.get(i).getTitle() +"'>����</a></div>");
		 				 			
		 		}
		 		
		 	%>
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