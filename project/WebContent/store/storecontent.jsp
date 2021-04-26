<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="../css/storecontent.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
	<div class="sub_tit_wrap">
		<div class="sub_tit_inner">
			<h2>
				<img src="https://image.istarbucks.co.kr/common/img/menu/menu_tit7.jpg" alt="상품">
			</h2>
			<ul class="smap">
				<li>
					<a href="../index/index.jsp">
						<img src="https://image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로">
					</a>
				</li>
				<li>
					<img class="arrow" src="https://image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴">
				</li>
				<li class="en">
					<a href="">MENU</a>
				</li>
				<li>
					<img class="arrow" src="https://image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴">
				</li>
				<li>
					<a href="" class="this">상품</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="content">
		<!-- 분류 보기 -->
		<div class="product_kind_wrap">
			<p class="tit">분류보기</p>
			<div class="product_kind_btn">
				<a href="">
					<img src="https://image.istarbucks.co.kr/common/img/menu/list_up_btn.png" alt="분류보기 메뉴 접기">
				</a>
			</div>
			<div class="product_toggle_wrap">
				<dl class="product_kind_tab">
					<dt class="dt1">
						<a href="" id="categoryTab" class="selected" role="button" title="카테고리별 상품선택">카테고리</a>
					</dt>
					<dd style="display: block;">	<!--dt2일때 none으로 바뀜 -->
						<div class="product_select_wrap">
							<form method="post">
								<fieldset>
									<legend class="hid">상품 카테고리 별 분류 보기</legend>
									<ul class="cate_list mCustomScrollbar _mCS_1 mCS_no_scrollbar">
										<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0">
											<div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_all" checked="checked">
													<label for="product_all">전체 상품보기</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_mug">
													<label for="product_mug">머그</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_glass">
													<label for="product_glass">글라스</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_plastic">
													<label for="product_plastic">플라스틱 텀블러</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_stainless">
													<label for="product_stainless">스테인리스 텀블러</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_vacuum">
													<label for="product_vacuum">보온병</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_accessories">
													<label for="product_accessories">액세사리</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_coffee">
													<label for="product_coffee">커피용품</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_teaPackage">
													<label for="product_teaPackage">패키지 티(티바나)</label>
												</li>
												<li>
													<input style="vertical-align:middle;" type="checkbox" name="product_all" id="product_planner">
													<label for="product_planner">스타벅스 플래너</label>
												</li>
											</div>
										</div>
									</ul>
								</fieldset>
							</form>
						</div>
					</dd>
					<dt class="dt2">
						<a href="" id="themeTab" role="button" title="테마별 상품보기" class>테마</a>	<!-- dt2일때 class="selected" -->
					</dt>
					<dd style="display: none;">	<!-- dt2일때 display:block -->
						<ul class="service_bn">
							<li>
								<a href="" role="button">
									<img src="https://image.istarbucks.co.kr/upload/banner/themebnr/82p8KL_20210412162506053.jpg" alt="서머1 프로모션_상품_테마배너" data-sbseq="W0000379" style="width: 335px; height: 90px">
								</a>
							</li>
							<li>
								<a href="" role="button">
									<img src="https://image.istarbucks.co.kr/upload/banner/themebnr/bnr_19_city_menu.jpg" alt="시티 머그 & 텀블러" data-sbseq="W0000071" style="width: 335px; height: 90px">
								</a>
							</li>
							<li>
								<a href="" role="button">
									<img src="https://image.istarbucks.co.kr/upload/banner/themebnr/reserve.png" alt="서머1 스타벅스 리저브 상품" data-sbseq="W0000037" style="width: 335px; height: 90px">
								</a>
							</li>
							<li>
								<a href="" role="button">
									<img src="https://image.istarbucks.co.kr/upload/banner/themebnr/DS5sZS_20210316143001250.jpg" alt="서머1 단체 및 기업 구매" style="width: 335px; height: 90px">
								</a>
							</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
		<!-- 분류보기 end -->
	<a href="productadd_write.jsp">상품등록하기</a>
	<a href="pay.jsp">결제하기</a>
	
	</div>
</body>
</html>