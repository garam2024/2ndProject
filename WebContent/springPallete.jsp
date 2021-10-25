<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<title>Telephasic by HTML5 UP</title>

<!-- <meta charset="utf-8" /> -->
<!-- 왜 이것만 하면 한글 오류가 날까용?? -->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
#main {
	padding-top: 4em;
	padding-bottom: 4em;
	display: grid;
	grid-auto-rows: minmax(70px, auto);
}

.item:nth-child(2) {
	display: inline-grid;
	grid-template-columns: repeat(auto-fill, minmax(48%, auto));
	height: 692px;
}

.middle {
	display: grid;
	height: 692px;
	/* 	grid-template-rows: repeat(auto-fill, minmax(55px, auto)); */
}

.item:nth-child(2) .middle:nth-child(2) {
	display: grid;
	grid-template-rows: 77px 310px 77px 258px;
}

.item:nth-child(2) .middle:nth-child(1) {
	height: 695px;
}

.middle:nth-child(2) div {
	border: 2px solid salmon;
	padding-left: 7%;
}

.middle:nth-child(1) svg {
	margin: 0px auto;
}

.cloth {
	padding-top: 15px;
	height: 510px;
	display: grid;
	grid-template-rows: 1f 1f;
}

.cloth #product-svg1 {
	margin-top: 90px;
	height: 250px;
	position: relative;
	bottom: 20px;
	padding-bottom: 5px;
}

.cloth #product-svg2 {
	height: 280px;
	position: relative;
	z-index: 1;
	top: -35px;
	margin-bottom: 30px;
}

.colors {
	display: inline-grid;
	grid-template-columns: repeat(auto-fill, minmax(20%, auto));
	gap: 20px;
	justify-content: space-evenly;
	padding: 30px;
}

.colors2 {
	display: inline-grid;
	grid-template-columns: repeat(auto-fill, minmax(20%, auto));
	gap: 20px;
	justify-content: space-evenly;
	padding: 30px;
	margin-bottom: 30px;
}

.color {
	border-radius: 50%;
	width: 70px;
	height: 70px;
	margin-left: 20px;
}

.color2 {
	border-radius: 50%;
	width: 70px;
	height: 70px;
	margin-left: 20px;
}

.color p {
	font-size: 18px;
	margin: 10px;
	line-height: 20px;
	font-weight: 700;
	color: black;
	padding-right: 5.5px;
	padding-top: 7px;
}

.name {
	height: 77px;
}
</style>
</head>
<body class="no-sidebar is-preload" style="background-color:white;">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">UR color</a>
				</h1>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="#">나의 정보</a>
							<ul>
								<li><a href="Mypage.jsp">마이페이지</a></li>
								<li><a href="MemberUpdate.jsp">개인정보수정</a></li>
								<li><a href="LogoutService.do">로그아웃</a></li>
							</ul></li>
						<li><a href="left-sidebar.jsp">퍼스널 컬러 진단하기</a></li>
						<li class="break"><a href="springPallete.jsp">나만의 의상 추천받기</a></li>
						<li><a href="no-sidebar.jsp">퍼스널 컬러 커뮤니티</a></li>
						<!--한줄띄우는 기능넣기 -->
					</ul>
				</nav>

			</div>
		</div>

		<!-- Main -->
		
		


		<!-- 여기 속성으로 전체 속성 바꿀 수 있다. -->
		<div class="container" id="main">
			<!--전체영향,좌우 여백 -->
			<div class="item">
				<table  style="border:2px solid salmon; ">
					<th style=" background: linear-gradient(white, 15%, salmon);">
						<center><h2 style="margin-top:0.5em; margin-bottom:0.5em; color:white;">UR color가 추천하는 "봄 웜톤" 색상 팔레트 입니다</h2></center>
					</th>
					<tr>
						<td style="border-top:2px solid salmon; font-weight:bolder;">
						<center><img src="images/check.png" width="40px"; height="40px style="padding-top:10px;" >원하는 색상을 클릭해서 나만의 색조합을 찾아보세요!</center>
						</td>
					</tr>
					
		</table>
			</div>
			
			<div class="item">
				<div class=middle>




					<div class="cloth" style="border:2px solid salmon; height:692px;">
						<svg id="product-svg1" viewBox="0 0 298.667 298.667">
  <defs />
  <path id="product-shape1"
								d="M.604 134.717c-1.483 3.342-.15 7.264 3.063 9.01l28.862 15.682c3.141 1.707 7.063.779 9.106-2.154l22.406-32.165c11.774 28.66 3.631 113.167-.035 145.359-.367 3.219.658 6.442 2.817 8.858 2.159 2.416 5.246 3.792 8.486 3.792h148.047c3.238 0 6.32-1.382 8.477-3.796s3.193-5.637 2.827-8.854c-3.666-32.192-11.809-116.698-.035-145.359l22.406 32.165c2.043 2.933 5.965 3.861 9.106 2.154L295 143.727c3.213-1.746 4.546-5.667 3.063-9.01L255.015 37.71c-4.193-9.437-12.08-16.759-21.829-20.249-2.582-.924-5.233-1.548-7.908-1.892H199.66c-3.516 0-6.541 2.451-7.28 5.889-3.519 16.365-21.452 28.822-43.046 28.822-21.594 0-39.527-12.456-43.046-28.821-.738-3.431-3.771-5.889-7.28-5.889H73.39c-2.674.344-5.326.969-7.908 1.892-9.749 3.49-17.636 10.813-21.829 20.249L.604 134.717z" />
</svg>
						<svg id="product-svg2" viewBox="0 0 297.877 297.877">
  <defs />
  <path id="product-shape2"
								d="M218.188 52.617l.043-5.373c.04-5.03-.168-10.053-.604-15.055h-17.885c2.453 9.431 9.421 17.057 18.446 20.428z" />
  <path id="product-shape3"
								d="M215.587 17.19c-.487-2.638-1.025-5.267-1.646-7.88l-.869-3.66c-.787-3.312-3.745-5.65-7.149-5.65H91.956c-3.404 0-6.362 2.338-7.148 5.649l-.87 3.664c-.621 2.612-1.159 5.24-1.646 7.877h133.295z" />
  <path id="product-shape4"
								d="M184.425 32.19H156.44v27.083c0 4.143-3.357 7.5-7.5 7.5s-7.5-3.357-7.5-7.5V32.19h-28.005c-2.993 17.678-16.371 31.862-33.623 36.039l1.758 222.359c.032 4.035 3.312 7.289 7.347 7.289h39.125c3.895 0 7.114-3.04 7.335-6.929l11.631-203.843c.058-1.019.901-1.815 1.921-1.815s1.863.796 1.921 1.815l11.631 203.843c.222 3.889 3.44 6.929 7.336 6.929h39.124c4.035 0 7.315-3.254 7.347-7.289l1.775-222.356c-17.259-4.172-30.644-18.358-33.638-36.042z" />
  <path id="product-shape5"
								d="M98.118 32.19H80.251c-.437 5.001-.645 10.023-.605 15.051l.043 5.369c9.017-3.374 15.977-10.996 18.429-20.42z" />
</svg>
					</div>


				</div>
				
				<div class=middle>
				
						<div class="name"
						style="text-align: center; background: linear-gradient(white, 15%, salmon); font-size: 20px; box-sizing: border-box;">
						<p
							style="font-weight: 500; font-size: 25px; color: white; margin-top: 25px;">봄
							 상의 팔레트</p>
					</div>
					<div class="colors">
						<div class="color" data-hex="#f4f0e4" style="border:none"></div>
						<div class="color" data-hex="#fff2b1" style="border:none"></div>
						<div class="color" data-hex="#fddb6f" style="border:none"></div>
						<div class="color" data-hex="#f8c848" style="border:none"></div>
						<div class="color" data-hex="#d2e846" style="border:none"></div>
						<div class="color" data-hex="#bcd860" style="border:none"></div>
						<div class="color" data-hex="#90d24a" style="border:none"></div>
						<div class="color" data-hex="#f6d1d9" style="border:none"></div>
						<div class="color" data-hex="#ff858f" style="border:none"></div>
						<div class="color" data-hex="#f02036" style="border:none"></div>
					</div>
					<div class="name" style="text-align: center; background: linear-gradient(white, 15%, salmon);">
						<p
							style="font-weight: 500; font-size: 25px; color: white; margin-top: 25px;">
							봄 웜 하의 팔레트</p>
					</div>
					<div class="colors2">
						<div class="color2" data-hex="Black" style="border:none"></div>
						<div class="color2" data-hex="#064cc8" style="border:none"></div>
						<div class="color2" data-hex="Gray" style="border:none"></div>
						<div class="color2" data-hex="Beige" style="border:none"></div>
						<div class="color2" data-hex="SkyBlue" style="border:none"></div>
						<div class="color2" data-hex="Tan" style="border:none"></div>
						<div class="color2" data-hex="DarkOliveGreen" style="border:none"></div>
						<div class="color2" data-hex="#02073d" style="border:none"></div>
						

					
					</div>
				</div>
			</div>
		<div style="position:relative">
		<button onclick="location.href='no-sidebar.jsp'" style="background-color:salmon; 
		color:white; height:60px; width:130px; margin-top:0;float:right">커뮤니티<br> 이동</button>
		<button onclick="advertise()" style="background-color:salmon; color:white; height:60px; width:130px; 
		position:relative; top:10px;margin-top:-10px; margin-bottom:0;float:right">컬러 고르기</button>
		</div>
		
		<div id="spring" style="position:relative;top:10px;height:500px;visibility:hidden">
			<div width="100%"
				style="border: 2px solid salmon; width: 1198px; height: 85.31px; background: linear-gradient(white, 15%, salmon); color: white; text-align: center; font-weight: 600; font-size: 2em; padding-top: 25px;">
				UR color 의상 추천</div>
						
			<div style="position:relative;top:50px;font-size:40px;font-weight:bolder;color: #FF8000;text-align:center;width:50%;float:left">
				당신이 고른 색깔은?
			</div>
			<div style="position:relative;top:50px;font-size:40px;font-weight:bolder;color: #FF8000;text-align:center;width:50%;float:left">
				해당 색상 조합은?
			</div>
			<div style="position:relative;top:80px;font-size:40px;font-weight:bolder;color: #FF8000;text-align:center;width:50%;float:left">
				아이보리색과 진청색		
			</div>
			
			<div style="position:relative;top:80px;font-size:40px;font-weight:bolder;color: #FF8000;text-align:center;width:50%;float:left">
				일상복, 평상복에 어울리는 조합	
			</div>
			
			
			
			<div style="position:relative;top:200px;background-color:white;font-size:55px;font-weight:bolder;color: #FF8000;text-align:center;width:100%;both:clear">
				<img src="images/jacket.jpg" width="35px" height="35px">봄웜 코디 TIP<img src="images/jacket.jpg" width="35px" height="35px">
			
			</div>
				<img src="images/chcun1.png" width=100%; style="margin-top: 100px;display:block">

			<a href="#"><img src="images/springchcun.png" width=100%;
				style="margin-right: 500px"><img src="images/ad.png"
				width=100%; style="margin-top: 0; margin-right: 500px;"></a>
						
		</div>
		
		
	
		</div>
		<script>
			function advertise(){
				spring.style.visibility="visible";
			
			}
		
		
		</script>
		<script>
			var svgPath1 = document.getElementById("product-shape1");
			var el = document.querySelectorAll(".color");

			function changeColor() {
				var color = this.dataset.hex;
				svgPath1.style.fill = color;
			}

			el.forEach(function(item) {
				var hex = item.dataset.hex;
				//console.log(hex);
				item.style.backgroundColor = hex;
				item.addEventListener('click', changeColor);
			});
		</script>
		<script>
			var svgPath2 = document.getElementById("product-shape2")
			var svgPath3 = document.getElementById("product-shape3")
			var svgPath4 = document.getElementById("product-shape4")
			var svgPath5 = document.getElementById("product-shape5")

			var el2 = document.querySelectorAll(".color2");

			function changeColor2() {
				var color2 = this.dataset.hex;
				svgPath2.style.fill = color2;
				svgPath3.style.fill = color2;
				svgPath4.style.fill = color2;
				svgPath5.style.fill = color2;
			}

			el2.forEach(function(item) {
				var hex2 = item.dataset.hex;
				//console.log(hex);
				item.style.backgroundColor = hex2;
				item.addEventListener('click', changeColor2);
			});
		</script>
		
		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/plugin/slick/slick.js"></script>
</body>
</html>