<%@page import="com.VO.commentVO"%>
<%@page import="com.DAO.commentDAO"%>
<%@page import="com.VO.boardVO"%>
<%@page import="com.DAO.boardDAO"%>
<%@page import="com.VO.memberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#title {
	width: 350px;
}

#id {
	width: 350px;
}

#con {
	width: 350px;
}


</style>
<title>Telephasic by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />



</head>
<body class="no-sidebar is-preload">
		<%memberVO memberVO = (memberVO)session.getAttribute("vo"); 
			
			
		
		
		
		
		
		
		
		
		
		
		%>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">UR Color</a>
				</h1>

				<!-- Nav -->
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
											<li><a href="Mypage.jsp">����������</a></li>
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
		</div>
			
	</div>
	
	<%		
	
			request.setCharacterEncoding("utf-8");
			String updatetitle = (String)request.getAttribute("updatetitle");
			System.out.print(updatetitle);
			boardVO vo = null;
			if (updatetitle==null){	
	
			String title = request.getParameter("title");
			System.out.println(title);
			
			boardDAO dao = new boardDAO();
			dao.clicknum(title);
			vo = dao.showboard(title);}else{
				
				boardDAO dao = new boardDAO();
				vo = dao.showboard(updatetitle);
			}
					
			 %>
	
	<div style="display:inline-block;
		position: absolute;
		width:1400px;
		top: 150px;
		text-align: center;
		left: 10%;
		right: 15%;
		margin: 0;
		clear:both;
		">
				
		<div style="width: 100%; height:50px; color: white;
       box-sizing: border-box;border:1px solid black;text-align: center; margin-left: auto; margin-right: auto; background: linear-gradient(to left,pink,white,PeachPuff,pink,white,PeachPuff);font-size:40px;font-weight:bolder;margin-left: auto; margin-right: auto;">COMMUNITY
		 <img src="images/men.png"width="35px"; height="35px";> <img src="images/comm2.png"width="35px"; height="35px"></div>
		<div style="width: 10%; height:90px; float:left; background-color:white;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;font-weight:bolder">�Խñ� ��ȣ<hr><%=vo.getNum() %></div>
		<div style="width: 35%; height:90px; float:left; background-color:white;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;font-weight:bolder">����<hr><%=vo.getTitle() %></div>
		<div style="width: 20%; height:90px; float:left; background-color:white;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;font-weight:bolder">�ۼ���<hr><%=vo.getNick() %></div>
		<div style="width: 25%; height:90px; float:left; background-color:white;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;font-weight:bolder">�ۼ���<hr><%=vo.getDate() %></div>
		 <div style="width: 10%; height:90px; float:left; background-color:white;
		 box-sizing: border-box;border:1px solid black;margin-left: auto; margin-right: auto;font-weight:bolder">��ȸ��<hr><%=vo.getColorGroup()%></div>
		<div style="width: 100%;border:1px solid black; height:200px; clear:both; background-color:white;
		 box-sizing: border-box;margin-left: auto; margin-right: auto;font-weight:bolder"><%=vo.getContent() %></div>

		
	
		
		<div style="width:15%;height:50px;float:left;padding:0;text-align: center">
			<a href="#" style="position:relative;top:20%"></a></div>
		<div style="width:15%;height:50px;float:left;padding:0;text-align: center">
			<a href="#" style="position:relative;top:20%"></a></div>
		<div style="width:15%;height:50px;float:left;padding:0;text-align: center">
			<a href="#" style="position:relative;top:20%"></a></div>
		<div style="width:10%;height:50px;float:left;padding:0;text-align: center">
			</div>
								
		
			<%
		if(memberVO!=null){
			
		
		String nick = memberVO.getNick();
		String nick2 = vo.getNick();
		if(nick.equals(nick2)){
		%>		
		
		<button name="button" onclick="location.href='UpdateBoard.jsp?boardvvoo=<%=vo.getTitle()%>'" style="background:white; font-weight:bold;float:right;width:10%;height:50px;"><h style="margin-left:10px;">����</h>
		<img src="images/pen2.png" width="20px" height="20px" style="margin-left:10px" ></button>
     	<button name="button" onclick="location.href='DeleteBoardService.do?boardvvoo=<%=vo.getTitle()%>'" style="background:white; font-weight:bold;float:right;width:10%;height:50px;"><h style="margin-left:10px;">����</h>
     	<img src="images/tr.png" width="20px" height="20px" style="margin-left:10px"></button>
		<%}else{}}%>
		
		
		</div>
		
		
			<div style="
				display:inline-block;
				position: relative;
				width:1400px;
				top: 500px;
				text-align: center;
				left: 10%;
				right: 15%;
				margin: 0 auto;
		">
		
			<button name="button" onclick="location.href='no-sidebar.jsp'" style="background:white; font-weight:bold;float:center;width:11%;height:50px;"><h style="margin-left:5px;">�ڷΰ���</h>
		<img src="images/arr.jpg" width="20px" height="20px" style="margin-left:10px;" ></button>
     	<button name="button" onclick="location.href='Writing.jsp'" style="background:white; font-weight:bold;float:center;width:11%;height:50px;"><h style="margin-left:10px;">�۾���</h>
     	<img src="images/wr.png" width="20px" height="20px" style="margin-left:10px"></button>
		
		
		</div>
		
		<div style=
		
		"
		display:inline-block;
		position: relative;
		width:1400px;
		top: 600px;
		
		left: 10%;
		right: 15%;
		margin: 0 auto;
		font-weight:bolder;">
		���<hr>
		
		
		<%
		commentDAO commentDAO = new commentDAO();
		ArrayList<commentVO> arr_comment = commentDAO.showcomment(vo.getTitle());
		
		
		for(int i=0; i<arr_comment.size();i++){
			out.print("<div style='width: 10%; height:40px; float:left;box-sizing: border-box;margin-left: auto; margin-right: auto;'>"+ (i+1) + "</div>");
			out.print("<div style='width: 50%; height:40px; float:left;box-sizing: border-box;margin-left: auto; margin-right: auto;'>" +arr_comment.get(i).getContent() + "</div>");
			out.print("<div style='width: 10%; height:40px; float:left;box-sizing: border-box;margin-left: auto; margin-right: auto;'>"+arr_comment.get(i).getNick()+"</div>");
			out.print("<div style='width: 20%; height:40px; float:left;box-sizing: border-box;margin-left: auto; margin-right: auto;''>"+arr_comment.get(i).getDate()+"</div>");
			out.print("<div style='width: 10%; height:40px; float:left;box-sizing: border-box;margin-left: auto; margin-right: auto;'><a href='DeleteComment.do?num=" + arr_comment.get(i).getNum() +"&title="+arr_comment.get(i).getTitle()+"'>����</a></div>");
			
		}
		
		%>
		
		
		<form action='commentService.do?title=<%=vo.getTitle()%>' method="post">
		<div style="width: 87%; height:50px; float:left;
		 box-sizing: border-box;margin-left: auto; margin-right: auto;">
		 <input type="text" name="content" placeholder="��� ������ �Է����ּ���" style="width:100%;height: 50px;float:center"></div>
		 <div style="width: 3%; height:40px; float:left; 
		 box-sizing: border-box;margin-left: auto; margin-right: auto;"></div>
		<div style="width: 10%; height:50px; float:left; 
		 box-sizing: border-box;margin-left: auto; margin-right: auto;">
		 <input type="submit" value="��� �ۼ��ϱ�" style="width:100%;height: 50px;text-align:center;padding:10px 10px 10px 10px;background:PapayaWhip; font-weight:bolder;float:center"></div>
		</form>
		
		
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