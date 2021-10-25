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
<link rel="stylesheet" href="assets/css/main1.css" />
</head>
<body class="left-sidebar is-preload">

<% 
			memberVO vo = (memberVO)session.getAttribute("vo");
									
		%>


	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">UR Color</a>
				</h1>

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
		<div class="container">
			<div class="row">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				<form action="http://172.30.1.25:8095/measure" method="post">
					<table class="table table-striped"
						style="background-color: white; width: 1160px; margin-left: 26px; text-align: center; border: 10px solid #dddddd">
						
							<th colspan="2"
								style="background-color: salmon; text-align: center;"><h2
									style="color: white; margin-top: 0.5em; margin-bottom: 0.5em;">�۽����÷�
									�����ϱ�</h2></th>

							<tr>
								<td colspan="2">
									<h3 style="margin-top: 3em;"><b>1. ����� �Ǻλ��� ��� ������?<br>(������
										��������� ��Ȯ�� ���󺸴ٴ� ������ ���ּ���!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/skin_img1.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box1"
									style="margin-left: 2.5em;">A : ���ο� ���̽��� ������ ������ <br>
									<p style="margin-left: 2.5em;">��ų� �븣������ �� Ȥ�� ������ ���� ��ϴ�.</p> <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/skin_img4.jpg"
									style="height: 200px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box1"
									style="margin-left: -9em;">B : ��ü�� ��� ���� ���̸�<br>
									<p style="margin-left: -9em;">�޺��� ����Ǹ� �Ӱ� �޾ƿ����� ��찡 �����ϴ�.</p> <br>
								</td>
							</tr>
							<tr>
								<td><img src="images/skin_img2.jpg"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box1"
									style="margin-left: 2.5em;">C : �븣�����ϰ� ������ ������ ���ϴ�. <br>
								</td>
								<td><img src="images/skin_img3.jpg"
									style="height: 200px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="D" name="box1"
									style="margin-left: -9em;">D : â���ϰų� ������ �Ǻ� �Ǵ� <br>
									<p style="margin-left: -9em;">�Ź������ϰų� ���� ��������� ��谡 Ȯ���մϴ�.</p> <br>
								</td>
							</tr>

							<tr>
								<td colspan="2">
									<h3 style="margin-top: 3em; margin-bottom: 2em;"><b>2. �����
										�Ǻδ� ����ʿ� ������?</b></h3>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="radio" value="A,C"
									name="box2" style="margin-bottom: 1em;">A,C : �����Ǻο� ������
									<br> <input type="radio" value="B,D" name="box2">B,D
									: �Ǽ��Ǻο� ������.</td>
							</tr>

							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 2em;"><b>3. �Ǻΰ�
										�޺��Ʒ��� ���� ������ �����?</b></h3>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="radio" value="A,C"
									name="box3" style="margin-bottom: 1em;">A,C : �޺��� ��������
									�Ǻΰ� �� ź��. <br> <input type="radio" value="B,D"
									name="box3">B,D : �޺��� ����Ǹ� �Ӱ� ���ߴٰ� ���� ���� �Ǻλ����� ���ư���.</td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>4. �Ӹ�ī��
										������ ��Ѱ���?(������ ��������� ��Ȯ�� ���󺸴ٴ� ������ ���ּ���!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/hair_img3.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box4"
									style="margin-left: 2.5em;">A :�������� ���� ���Ⱑ ���� �����Ÿ��ϴ�. <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/hair_img4.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box4"
									style="margin-left: -9em;">B : �氥���̳� ȸ�����Դϴ�. <br>
								</td>
							</tr>
							<tr>
								<td><img src="images/hair_img2.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box4"
									style="margin-left: 2.5em;">C : ���� �����Դϴ�. <br></td>
								<td><img src="images/hair_img1.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;"">
									<br> <input type="radio" value="D" name="box4"
									style="margin-left: -9em;">D : Ǫ������ ���� �氥���̳� �������� ��ϴ�.
									<br></td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>5. �����
										������ ���� ��Ѱ���? (������ ��������� ��Ȯ�� ���󺸴ٴ� ������ ���ּ���!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/eye_img1.png"
									style="height: 100px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box5"
									style="margin-left: 2.5em;">A : ���� ������ ��� ��찡 ����. <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/eye_img3.png"
									style="height: 100px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box5"
									style="margin-left: -9em;">B : �����̳� �帲, ȸ������ ���̵� <br>
									<p style="margin-left: -9em;">�׷��� ���� ���� ���</p> <br></td>
							</tr>
							<tr>
								<td><img src="images/eye_img2.png"
									style="height: 100px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box5"
									style="margin-left: 2.5em;">C : �Ӱų� £�� ������ ��� ��찡 ���� <br>
								</td>
								<td><img src="images/eye_img4.png"
									style="height: 100px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="D" name="box5"
									style="margin-left: -9em;">D : �������� Ǫ���� �����ڴ� £�� <br>
									<p style="margin-left: -9em;">�����ϸ� ������ �ִ� ���̴�</p> <br></td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>6. � ����
										�Ǽ��縮�� �� �߾�︮����?<br>(������ ��������� ��Ȯ�� ���󺸴ٴ� ������ ���ּ���!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/acc_img1.PNG"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box6"
									style="margin-left: 2.5em;">A : ��¦�̴� �ݼ��� �Ǽ����� <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/acc_img3.PNG"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box6"
									style="margin-left: -9em;">B : ������ ���̳� ��ݼ��� �Ǽ����� <br>
								</td>
							</tr>
							<tr>
								<td><img src="images/acc_img2.PNG"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box6"
									style="margin-left: 2.5em;">C : ������ �ݼ��� �Ǽ����� <br>
								</td>
								<td><img src="images/acc_img4.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;">
									<br> <input type="radio" value="D" name="box6"
									style="margin-left: -9em;">D : ��¦�̴� ���̳� ��ݼ��� �Ǽ����� <br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em;"><b>7. �ڽſ��� �� ��︮�� ������ ����ּ���.</b></h3> <br>
									<h3 style="margin-bottom: 3em;"><b>7-1. ����� �迭 (ȭ�鿡 ���� �����ð�
										���� ��︮�� ���� ����ּ���)</b></h3>
								</td>
							</tr>
							<tr>
								<td colspan="2"><img src="images/plam.png" style="height: 300px; width: 400px; margin-top: 10px;"><img src="images/color_img2.jpg"
									style="height: 300px; width: 400px; margin-top: 10px;"> <br><br>
									<input type="radio" value="A" name="box7">A <input
									type="radio" value="B" name="box7"
									style="margin-left: 3em;">B <input type="radio"
									value="C" name="box7" style="margin-left: 3em;">C <input
									type="radio" value="D" name="box7"
									style="margin-left: 3em;">D</td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>7-2. �Ķ���
										�迭 (ȭ�鿡 ���� �����ð� ���� ��︮�� ���� ����ּ���)</b></h3>
								</td>
							</tr>
							<tr>
								<td colspan="2"><img src="images/plam.png" style="height: 300px; width: 400px; margin-top: 10px;"><img src="images/color_img1.jpg"
									style="height: 300px; width: 400px; margin-top: 10px;"> <br><br>
									<input type="radio" value="A" name="box8">A<input
									type="radio" value="B" name="box8"
									style="margin-left: 3em;">B <input type="radio"
									value="C" name="box8" style="margin-left: 3em;">C <input
									type="radio" value="D" name="box8"
									style="margin-left: 3em;">D</td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="�����ϱ�"
									style="margin-top: 100px; margin-bottom: 50px; color: white; background-color: salmon;">

								</td>
							</tr>
					</table>			
				</form>
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