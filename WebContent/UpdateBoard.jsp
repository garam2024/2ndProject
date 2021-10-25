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
									<a href="#">로그인</a>
										<ul>
											<li><a href="Login.html">로그인</a></li>
											<li><a href="Login.html">회원가입</a></li>
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
									<%if(memberVO.getEmail().equals("admin")){ %>
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
											<li><a href="#">마이페이지</a></li>
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
		 box-sizing: border-box;border:1px solid black;text-align: center;margin-left: auto; margin-right: auto;">커뮤니티 글</div>
		<div style="width: 10%; height:106px; float:left;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">게시글 번호<hr><%=vo.getNum() %></div>
		<div style="width: 40%; height:106px; float:left;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">제목<hr style="margin:9.333px 0 0 0">
		 <input type="text" required name=titleupdate placeholder=<%=vo.getTitle() %>></div>
		<div style="width: 20%; height:106px; float:left;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">작성자<hr><%=vo.getNick() %></div>
		<div style="width: 30%; height:106px; float:left; 
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;">작성일<hr><%=vo.getDate() %></div>
		<div style="width: 100%;border:1px solid black; height:215px; clear:both; 
		 box-sizing: border-box;margin-left: auto; margin-right: auto;">
		 <textarea required name="contentupdate" placeholder=<%=vo.getContent() %> rows="6px"></textarea></div>
		 
		 
		 <div style="background-color:red;width:10%;height:50px;float:right;padding:0;text-align: center">
		<a href="show.jsp?title=<%=vo.getTitle() %>" style="position:relative;top:20%">뒤로가기</a></div>
		 <div style="background-color:red;width:10%;height:50px;float:right;padding:0;text-align: center">
		
		
		<input type="submit" value="수정하기" style="width:100%;height:50px;padding:0;border:0">
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