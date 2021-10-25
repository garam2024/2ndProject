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
									<a href="#">나의 정보</a>
										<ul>
											<li><a href="Mypage.jsp">마이페이지</a></li>
											<li><a href="MemberUpdate.jsp">개인정보수정</a></li>
											<li><a href="LogoutService.do">로그아웃</a></li>
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
											<li><a href="Mypage.jsp">마이페이지</a></li>
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
									str="봄 웜톤";
								}else if(result.equals("1")){
									str="여름 쿨톤";
								}else if(result.equals("2")){
									str="가을 웜톤";
								}else{
									str="겨울 쿨톤";
								}
								
								
								
								
								
								
								
							%>
							
							<th colspan="3"
								style="background: linear-gradient(to left,pink,white,PeachPuff,pink,white,PeachPuff); border: 2px; text-align: center;"><h2
									style=" margin-top: 0.5em; margin-bottom: 0.5em;">퍼스널컬러
									 측정결과</h2></th>
							<tr style="border: 2px;">
								<td colspan="3">
									<p style="margin-top:3em; margin-bottom:3em;">당신의 퍼스널 컬러는 
									<strong style="font-size:2em;">
									<%if(str.equals("봄 웜톤")){%>
										"<font style="color:salmon;"><%=str %></font>"
									<%}else if(str.equals("여름 쿨톤")){%>
										"<font style="color:#4169E1;"><%=str %></font>"
									<%}else if(str.equals("가을 웜톤")){%>
										"<font style="color:#A52A2A;"><%=str %></font>"
									<%}else{ %>
										"<font style="color:#191970;"><%=str %></font>"
									<%} %></strong>입니다!</p>
								</td>
							</tr>
							<tr style="border: 2px;">
								
								
								<%if(str.equals("봄 웜톤")){%>
								<td>
									<img src="images/springchar1.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/springchar2.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/springchar3.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<%}else if(str.equals("여름 쿨톤")){%>
								<td>
									<img src="images/summerchar1.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/summerchar2.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<td>
									<img src="images/summerchar3.png" height="300px;" style="margin-top:-10px; margin-bottom:20px;"/>
								</td>
								<%}else if(str.equals("가을 웜톤")){%>
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
								<%if(str.equals("봄 웜톤")){%>
									<p style="color:salmon; font-weight:bolder;">봄 웜톤 컬러차트</p>
								<%}else if(str.equals("여름 쿨톤")){%>
									<p style="color:#4169E1; font-weight:bolder;"><font>여름 쿨톤</font> 컬러차트</p>
								<%}else if(str.equals("가을 웜톤")){%>
									<p style="color:#A52A2A; font-weight:bolder;"><font>가을 웜톤</font> 컬러차트</p>
								<%}else{%>
									<p style="color:#191970; font-weight:bolder;"><font>겨울 쿨톤</font> 컬러차트</p>
								<%} %>
								</td>
							</tr>
							<tr>
								
									<%if(str.equals("봄 웜톤")){%>
									<td>
										<img src="images/springwarm1.png" height="400px;"/>
									</td>
									<td>
										<img src="images/springwarm2.png" height="400px;"/>
									</td>
									<td>
										<img src="images/springwarm3.png" height="400px;"/>
									</td>
									
									<%}else if(str.equals("여름 쿨톤")){%>
									<td>
										<img src="images/summercool1.png" height="400px;"/>
									</td>
									<td>
										<img src="images/summercool2.png" height="400px;"/>
									</td>
									<td>
										<img src="images/summercool3.png" height="400px;"/>
									</td>
									<%}else if(str.equals("가을 웜톤")){%>
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
							<%if(str.equals("봄 웜톤")){ %>
							<button onclick="location.href='springPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">옷 색깔 추천 받기</button>
							<%}else if(str.equals("여름 쿨톤")){ %>
							<button onclick="location.href='summerPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">옷 색깔 추천 받기</button>
							<%}else if(str.equals("가을 웜톤")){ %>
							<button onclick="location.href='autumnPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">옷 색깔 추천 받기</button>
							<%}else{ %>
							<button onclick="location.href='winterPallete.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">옷 색깔 추천 받기</button>
							<%} %>
							<button onclick="location.href='no-sidebar.jsp'" style="background-color:salmon; color:white; margin-top:50px; margin-bottom:50px;">커뮤니티</button>
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