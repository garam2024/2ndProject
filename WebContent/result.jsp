<%@page import="com.DAO.memberDAO"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="right-sidebar is-preload">
		<div id="page-wrapper">


<%		memberVO vo = (memberVO)session.getAttribute("vo");			 %>
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
									<a href="#">���� ����</a>
										<ul>
											<li><a href="Mypage.jsp">����������</a></li>
											<li><a href="MemberUpdate.jsp">������������</a></li>
											<li><a href="LogoutService.do">�α׾ƿ�</a></li>
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
				<!-- main -->
				<div class="container">
					<div class="row">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
							
					
							<table style="text-align: center; background-color:white; border: 2px; margin-top: 3em;">
							<%

								String result = request.getParameter("predict");
								String str = "";
								
								if(result.equals("0")){
									str="�� ����";
								}else if(result.equals("1")){
									str="���� ����";
								}else if(result.equals("2")){
									str="���� ����";
								}else{
									str="�ܿ� ����";
								}
								
								
								
								
								
								
								
							%>
							
							<th colspan="3"
								style="background: linear-gradient(to left,pink,white,PeachPuff,pink,white,PeachPuff); border: 2px; text-align: center;"><h2
									style=" margin-top: 0.5em; margin-bottom: 0.5em;">�۽����÷�
									 �������</h2></th>
							<tr style="border: 2px;">
								<td colspan="3">
									<p style="margin-top:3em; margin-bottom:3em;">����� �۽��� �÷��� 
									<strong style="font-size:2em;">
									<%if(str.equals("�� ����")){%>
										"<font style="color:salmon;"><%=str %></font>"
									<%}else if(str.equals("���� ����")){%>
										"<font style="color:#4169E1;"><%=str %></font>"
									<%}else if(str.equals("���� ����")){%>
										"<font style="color:#A52A2A;"><%=str %></font>"
									<%}else{ %>
										"<font style="color:#191970;"><%=str %></font>"
									<%} %></strong>�Դϴ�!</p>
								</td>
							</tr>
							<tr style="border: 2px;">
								
								
								<%if(str.equals("�� ����")){%>
								<td>
									<img src="images/springchar1.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/springchar2.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/springchar3.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<%}else if(str.equals("���� ����")){%>
								<td>
									<img src="images/summerchar1.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/summerchar2.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/summerchar3.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<%}else if(str.equals("���� ����")){%>
								<td>
									<img src="images/fallchar1.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/fallchar2.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/fallchar3.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<%}else{%>
								<td>
									<img src="images/winterchar1.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/winterchar2.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/winterchar3.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<%} %>
								
							</tr>
							
							<tr style="border: 2px;">
								
								<td colspan="3">
								<%if(str.equals("�� ����")){%>
									<p style="color:salmon; font-weight:bolder;">�� ���� �÷���Ʈ</p>
								<%}else if(str.equals("���� ����")){%>
									<p style="color:#4169E1; font-weight:bolder;"><font>���� ����</font> �÷���Ʈ</p>
								<%}else if(str.equals("���� ����")){%>
									<p style="color:#A52A2A; font-weight:bolder;"><font>���� ����</font> �÷���Ʈ</p>
								<%}else{%>
									<p style="color:#191970; font-weight:bolder;"><font>�ܿ� ����</font> �÷���Ʈ</p>
								<%} %>
								</td>
							</tr>
							<tr>
								
									<%if(str.equals("�� ����")){%>
									<td>
										<img src="images/springwarm1.png" height="400px;"/>
									</td>
									<td>
										<img src="images/springwarm2.png" height="400px;"/>
									</td>
									<td>
										<img src="images/springwarm3.png" height="400px;"/>
									</td>
									
									<%}else if(str.equals("���� ����")){%>
									<td>
										<img src="images/summercool1.png" height="400px;"/>
									</td>
									<td>
										<img src="images/summercool2.png" height="400px;"/>
									</td>
									<td>
										<img src="images/summercool3.png" height="400px;"/>
									</td>
									<%}else if(str.equals("���� ����")){%>
									<td>
										<img src="images/fallwarm1.png" height="400px;"/>
									</td>
									<td>
										<img src="images/fallwarm2.png" height="400px;"/>
									</td>
									<td>
										<img src="images/fallwarm3.png" height="400px;"/>
									</td>
									<%}else{%>
									<td>
										<img src="images/wintercool1.png" height="400px;"/>
									</td>
									<td>
										<img src="images/wintercool2.png" height="400px;"/>
									</td>
									<td>
										<img src="images/wintercool3.png" height="400px;"/>
									</td>
									<%} %>
							</tr>
							
							<tr>
							<td colspan="3">
							<%if(str.equals("�� ����")){ %>
							<button onclick="location.href='springPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">�� ���� ��õ �ޱ�</button>
							<%}else if(str.equals("���� ����")){ %>
							<button onclick="location.href='summerPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">�� ���� ��õ �ޱ�</button>
							<%}else if(str.equals("���� ����")){ %>
							<button onclick="location.href='autumnPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">�� ���� ��õ �ޱ�</button>
							<%}else{ %>
							<button onclick="location.href='winterPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">�� ���� ��õ �ޱ�</button>
							<%} %>
							<button onclick="location.href='no-sidebar.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">Ŀ�´�Ƽ</button>
							</td>
							</tr>
							
							
							</table>
							
			</div>
			
				<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
			
</body>
</html>