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
									style="color: white; margin-top: 0.5em; margin-bottom: 0.5em;">퍼스널컬러
									측정하기</h2></th>

							<tr>
								<td colspan="2">
									<h3 style="margin-top: 3em;"><b>1. 당신의 피부색은 어디에 가까운가요?<br>(사진은
										참고용으로 정확한 색상보다는 느낌을 봐주세요!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/skin_img1.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box1"
									style="margin-left: 2.5em;">A : 옐로우 베이스의 따뜻한 색으로 <br>
									<p style="margin-left: 2.5em;">희거나 노르스름한 톤 혹은 복숭아 빛을 띕니다.</p> <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/skin_img4.jpg"
									style="height: 200px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box1"
									style="margin-left: -9em;">B : 대체로 희고 붉은 편이며<br>
									<p style="margin-left: -9em;">햇빛에 노출되면 붉게 달아오르는 경우가 많습니다.</p> <br>
								</td>
							</tr>
							<tr>
								<td><img src="images/skin_img2.jpg"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box1"
									style="margin-left: 2.5em;">C : 노르스름하고 건조한 느낌이 납니다. <br>
								</td>
								<td><img src="images/skin_img3.jpg"
									style="height: 200px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="D" name="box1"
									style="margin-left: -9em;">D : 창백하거나 투명한 피부 또는 <br>
									<p style="margin-left: -9em;">거무잡잡하거나 아주 노란톤으로 경계가 확실합니다.</p> <br>
								</td>
							</tr>

							<tr>
								<td colspan="2">
									<h3 style="margin-top: 3em; margin-bottom: 2em;"><b>2. 당신의
										피부는 어느쪽에 가까운가요?</b></h3>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="radio" value="A,C"
									name="box2" style="margin-bottom: 1em;">A,C : 지성피부에 가깝다
									<br> <input type="radio" value="B,D" name="box2">B,D
									: 건성피부에 가깝다.</td>
							</tr>

							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 2em;"><b>3. 피부가
										햇빛아래에 오래 있으면 어떤가요?</b></h3>
								</td>
							</tr>
							<tr>
								<td colspan="2"><input type="radio" value="A,C"
									name="box3" style="margin-bottom: 1em;">A,C : 햇빛에 그을리면
									피부가 잘 탄다. <br> <input type="radio" value="B,D"
									name="box3">B,D : 햇빛에 노출되면 붉게 변했다가 빨리 원래 피부색으로 돌아간다.</td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>4. 머리카락
										색상은 어떠한가요?(사진은 참고용으로 정확한 색상보다는 느낌을 봐주세요!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/hair_img3.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box4"
									style="margin-left: 2.5em;">A :갈색빛이 돌고 윤기가 나고 찰랑거립니다. <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/hair_img4.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box4"
									style="margin-left: -9em;">B : 흑갈색이나 회갈색입니다. <br>
								</td>
							</tr>
							<tr>
								<td><img src="images/hair_img2.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box4"
									style="margin-left: 2.5em;">C : 깊은 갈색입니다. <br></td>
								<td><img src="images/hair_img1.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;"">
									<br> <input type="radio" value="D" name="box4"
									style="margin-left: -9em;">D : 푸른빛이 도는 흑갈색이나 검정색을 띱니다.
									<br></td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>5. 당신의
										눈동자 색은 어떠한가요? (사진은 참고용으로 정확한 색상보다는 느낌을 봐주세요!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/eye_img1.png"
									style="height: 100px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box5"
									style="margin-left: 2.5em;">A : 밝은 갈색을 띄는 경우가 많다. <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/eye_img3.png"
									style="height: 100px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box5"
									style="margin-left: -9em;">B : 갈색이나 흐림, 회색빛이 가미된 <br>
									<p style="margin-left: -9em;">그레이 브라운 색을 띈다</p> <br></td>
							</tr>
							<tr>
								<td><img src="images/eye_img2.png"
									style="height: 100px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box5"
									style="margin-left: 2.5em;">C : 붉거나 짙은 갈색을 띄는 경우가 많다 <br>
								</td>
								<td><img src="images/eye_img4.png"
									style="height: 100px; width: 200px; margin: 10px; margin-right: 180px;">
									<br> <input type="radio" value="D" name="box5"
									style="margin-left: -9em;">D : 흰자위는 푸르고 눈동자는 짙고 <br>
									<p style="margin-left: -9em;">선명하며 광택이 있는 편이다</p> <br></td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>6. 어떤 색의
										악세사리가 더 잘어울리나요?<br>(사진은 참고용으로 정확한 색상보다는 느낌을 봐주세요!)</b></h3>
								</td>
							</tr>
							<tr>
								<td><img src="images/acc_img1.PNG"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="A" name="box6"
									style="margin-left: 2.5em;">A : 반짝이는 금소재 악세서리 <br>
								</td>
								<td style="margin-right: 3em;"><img
									src="images/acc_img3.PNG"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;">
									<br> <input type="radio" value="B" name="box6"
									style="margin-left: -9em;">B : 무광의 은이나 백금소재 악세서리 <br>
								</td>
							</tr>
							<tr>
								<td><img src="images/acc_img2.PNG"
									style="height: 200px; width: 200px; margin-top: 10px; margin-left: 70px;">
									<br> <input type="radio" value="C" name="box6"
									style="margin-left: 2.5em;">C : 무광의 금소재 악세서리 <br>
								</td>
								<td><img src="images/acc_img4.png"
									style="height: 200px; width: 200px; margin-top: 10px; margin-right: 180px;">
									<br> <input type="radio" value="D" name="box6"
									style="margin-left: -9em;">D : 반짝이는 금이나 백금소재 악세서리 <br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<h3 style="margin-top: 6em;"><b>7. 자신에게 더 어울리는 색상을 골라주세요.</b></h3> <br>
									<h3 style="margin-bottom: 3em;"><b>7-1. 노란색 계열 (화면에 손을 얹으시고
										좀더 어울리는 색을 골라주세요)</b></h3>
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
									<h3 style="margin-top: 6em; margin-bottom: 3em;"><b>7-2. 파란색
										계열 (화면에 손을 얹으시고 좀더 어울리는 색을 골라주세요)</b></h3>
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
								<td colspan="2"><input type="submit" value="측정하기"
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