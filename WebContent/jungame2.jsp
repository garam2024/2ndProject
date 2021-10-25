<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="jungame2.css">
</head>
<body id="body_main">
	<div id="container_all">
		<div id="lo_top">
			<div id class="menuarea scroll_header">
				<ul>
					<li class="r_menuarea"><div>
							<a>로그인</a>
						</div>
						<div class="line_interval"></div>
						<div>
							<a>회원가입</a>
						</div>
						<div class="line_interval"></div>
						<div>
							<a>관리자모드</a>
						</div>
					<li>
				</ul>
			</div>
			<div class="headerarea">
				<div>
					<ul class="headerareaul">
						<li class="logoli">
							<!-- 2018-06-13 기현 추가 1= 이미지 2 영상  -->

							<div id="bn__toplogo" name="bn__toplogo" style="display: block;">
								<a href="/" target="_self"><img
									src="http://boardm.co.kr/upload/design/bannerimg_1608180235_a.png"
									border="0" class="absmiddle"></a>
							</div>








						</li>

						<li class="searchli">
							<div class="searcharea">

								<form method="get" action="front/product/product_search.php"
									onsubmit="if(!this.searchvls.value){ dyn_alert(flang_javascript[35000]);return false;}"
									name="searchfrm" id="searchfrm">
									<div class="search_select">
										<select>
											<option>전체</option>
										</select>
									</div>
									<div class="search_input">
										<input name="searchvls" id="searchvls" class="searchvls"
											value="" type="text" autocomplete="off">
										<div id="_swordsdiv"
											style="overflow: auto; display: none; background-color: rgb(255, 255, 255); z-index: 999999; text-align: left;"></div>
									</div>
									<div class="searchlink">
										<input type="image"
											src="front/_customskin/_skintpl/sedefault/common/images/header/search_btn_new.png">
									</div>
								</form>

							</div>


						</li>
						<li class="right_menuicon">
							<div class="right_menuicon_mypage">
								<div class="right_menuicon_icon c_hand ta_center"
									onclick="
											$('.login_layer_module_section').show()
										">
									<img
										src="front/_customskin/_skintpl/sedefault/common/images/header/header_mypage.png">
								</div>
								<div class="right_menuicon_title c_hand"
									onclick="
											// 2021-01-11 김학영 수정 비회원이 접근하지 못하는 메뉴 이동의 경우 이동할 페이지 setredirect input에 넘겨줘야함
						$('.login_layer_module_section').closest('#loginfrm').find('input[name=\'setredirect\']').val('front/mypage/mypage_main.php');
						$('.login_layer_module_section').show()
										">마이보드엠</div>
							</div>
							<div class="right_menuicon_cart ta_center">
								<div class="right_menuicon_icon"
									onclick="location.href='front/product/product_cart.php'">
									<img
										src="front/_customskin/_skintpl/sedefault/common/images/header/header_cart.png">
									<div class="right_count_cart">0</div>
								</div>
								<div class="right_menuicon_title">
									<a href="front/product/product_cart.php">장바구니</a>
								</div>
							</div>
						</li>


						<div id="" class="" style="position: relative; z-index: 9999;">
							<div id="" class="suggest_spot displaynone"
								style="position: absolute; top: 63px; left: 350px; width: 490px; border: solid 1px #fe1a1a; padding: 3px; height: 200px; overflow-y: auto; background-color: #fff;"></div>
						</div>

					</ul>
				</div>
			</div>


		</div>
	</div>

</body>
</html>