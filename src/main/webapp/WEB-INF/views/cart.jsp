<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 - Learn On</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-3.7.1.js"></script>
<script src="js/common.js"></script>

<!-- page 개별 CSS -->
<link rel="stylesheet" href="css/cart.css">
<!-- page 개별 JS -->
<script src="js/cart.js"></script>


</head>
<body>
	<header id="hd">
		<section id="hd_top">
			<div id="hd_logo">
				<a href="main.html"><h1>
						<img src="img/hd_logo2.png" alt="런온">
					</h1></a>
			</div>
			<div id="hd_sch">
				<form action="" method="post">
					<input type="text" name="" class="sch-input"
						placeholder="어떤 클래스를 찾으시나요?">
					<button type="submit" class="sch-submit">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</form>
			</div>
			<div id="hd_right">
				<!-- 로그인하면 class에 on 추가 -->
				<div class="normal-area">
					<a href="#" class="cart-btn"> <span class="cart-count">3</span>
						<i class="fa-solid fa-cart-shopping"></i>
					</a> <a href="#" class="login-btn">로그인</a>
				</div>
				<div class="login-area">
					<a href="#">나의 강의실</a> <a href="#"><span>홍길동</span> 님</a>
					<div class="login-menu">
						<a href="#">마이페이지</a> <a href="#">관리자 홈</a> <a href="#">로그아웃</a>
					</div>
				</div>
			</div>
			<div class="m-menu">
				<button class="hamburger hamburger--spin" type="button">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
			<div class="m-menu-wrap">
				<div class="m-menu-bg"></div>
				<nav id="m_nav">
					<div class="m-info">
						<!-- 로그인 하면 class에 on 추가 -->
						<a href="#" class="login-link">로그인을 해주세요. <i
							class="fa-solid fa-arrow-right-to-bracket"></i></a> <a href="#"
							class="my-info"><i class="fa-solid fa-gear"></i> <span>홍길동</span>
							님</a> <a href="#" class="my-course"> <i
							class="fa-solid fa-circle-play"></i> 나의 강의실
						</a>
					</div>
					<ul class="mgnb">
						<li class="mgnb-menu"><a href="#">카테고리</a>
							<ul class="mgnb-dep-01">
								<li><a href="#">IT/개발</a></li>
								<li><a href="#">외국어</a></li>
								<li><a href="#">운동/건강</a></li>
								<li><a href="#">라이프스타일</a></li>
								<li><a href="#">음료/술</a></li>
							</ul></li>
						<li class="gnb-menu"><a href="#">BEST</a></li>
						<li class="gnb-menu"><a href="#">얼리버드 특가</a></li>
						<li class="gnb-menu"><a href="#">이벤트</a></li>
						<li class="gnb-menu"><a href="#">AI 추천</a></li>
					</ul>
				</nav>
			</div>
		</section>
		<nav id="nav">
			<ul class="navbar">
				<li><a href="#">카테고리</a>
					<div class="dropdown-bg"></div>
					<ul class="dropdown">
						<li><a href="#">IT/개발</a>
							<ul class="sub-dropdown">
								<li><a href="#">전체</a></li>
								<li><a href="#">프로그래밍</a></li>
								<li><a href="#">WEB 개발</a></li>
								<li><a href="#">프론트엔드</a></li>
								<li><a href="#">백엔드</a></li>
								<li><a href="#">App</a></li>
							</ul></li>
						<li><a href="#">외국어</a>
							<ul class="sub-dropdown">
								<li><a href="#">전체</a></li>
								<li><a href="#">영어</a></li>
								<li><a href="#">중국어</a></li>
								<li><a href="#">일본어</a></li>
								<li><a href="#">스페인어</a></li>
								<li><a href="#">기타언어</a></li>
							</ul></li>
						<li><a href="#">운동/건강</a>
							<ul class="sub-dropdown">
								<li><a href="#">전체
										<li><a href="#">요가</a></li>
										<li><a href="#">필라테스</a></li>
										<li><a href="#">피트니스</a></li>
										<li><a href="#">러닝, 사이클</a></li>
										<li><a href="#">스트레칭</a></li>
							</ul></li>
						<li><a href="#">라이프스타일</a>
							<ul class="sub-dropdown">
								<li><a href="#">전체
										<li><a href="#">드로잉</a></li>
										<li><a href="#">공예</a></li>
										<li><a href="#">사진,영상</a></li>
										<li><a href="#">DIY</a></li>
										<li><a href="#">기타</a></li>
							</ul></li>
						<li><a href="#">요리/음료</a>
							<ul class="sub-dropdown">
								<li><a href="#">전체
										<li><a href="#">한식</a></li>
										<li><a href="#">일식, 중식</a></li>
										<li><a href="#">양식, 세계요리</a></li>
										<li><a href="#">비건, 건강식</a></li>
										<li><a href="#">음료,술</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#">BEST</a></li>
				<li><a href="#">얼리버드 특가</a></li>
				<li><a href="#">이벤트</a></li>
				<li><a href="#">AI 추천</a></li>
			</ul>
		</nav>
	</header>
	
	<!----------------------------- page 영역 --------------------------- -->
	<main id="cart">
		<div class="wrapper">
			<h2 id="title">장바구니</h2>
			
			<!-- -----------------장바구니 상품 목록 ---------------->
			<section id="sec01" class="cart-list">
					<div class="cart-select-controller board-block">
						<label class="checkbox">
							<input class="checkbox__trigger a11y" data-testid="checkbox" type="checkbox" value="Checkbox" name="">
							<i class="checkbox__icon">
								<svg width="13" height="10" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M1 5L5 9.5L12 1" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
								</svg>
								<span class="a11y">Checkbox</span></i><span class="checkbox__label cart-checkbox-label">모두 선택</span></label>
						<button class="select-controller__delete-selected">선택 삭제</button>
					</div>
					
					<div class="board-block cart-order-card">
						<label class="checkbox">
							<input class="checkbox__trigger a11y" data-testid="checkbox" type="checkbox" value="178036" name="">
							<i class="checkbox__icon">
								<svg width="13" height="10" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M1 5L5 9.5L12 1" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path></svg><span class="a11y">178036</span></i><span class="checkbox__label "></span></label>
						<button class="cart-order-card__delete-icon">
							<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M0.578125 1L12.5781 13M12.5781 1L0.578125 13" stroke="#A0A0A0"></path></svg>
						</button>
						<div class="product-content">
							<div class="product-content__info">
								<strong class="product-content__title">[asset] AI전문크리에이터 돈버는 온라인자판기</strong>
								<div class="product-content__price product-content__price--hidden-discount">
									<div class="product-content__price-align-item">
										<span class="discount-label"></span><span class="discount-price">0원</span><span class="discount-result">169,000원</span>
									</div>
								</div>
							</div>
						</div>
						<button class="go-to-product-page">
							<figure class="cart-course cart-course--order-card">
								<span class="cart-course__thumbnail"><img alt="product-card-asset" loading="lazy" width="70" height="70" decoding="async" data-nimg="1" src="https://cdn.day1company.io/prod/uploads/202410/175511-831/asset-onlinemoney-coursecard.webp" style="color: transparent;"></span>
								<figcaption class="cart-course__caption">
									<dl>
										<dt>왕초보도 가능한 AI 쇼츠 이미지 제작과 수익화 전략 가이드</dt>
										<dd>AI 전문 크리에이터 돈버는 온라인자판기</dd>
									</dl>
								</figcaption>
							</figure>
						</button>
						<div class="cart-order-price">
							<span class="cart-order-price__price"><span class="cart-order-price__price--primary">169,000</span>원</span>
						</div>
					</div>
					
					<div class="board-block cart-order-card">
						<label class="checkbox"><input class="checkbox__trigger a11y" data-testid="checkbox" type="checkbox" value="170711" name=""><i class="checkbox__icon"><svg width="13" height="10" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path d="M1 5L5 9.5L12 1" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path></svg><span class="a11y">170711</span></i><span class="checkbox__label "></span></label>
						<button class="cart-order-card__delete-icon">
							<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M0.578125 1L12.5781 13M12.5781 1L0.578125 13" stroke="#A0A0A0"></path></svg>
						</button>
						<div class="product-content">
							<div class="product-content__info">
								<strong class="product-content__title">프로그래머 박승규</strong>
								<div class="product-content__price product-content__price--hidden-discount">
									<div class="product-content__price-align-item">
										<span class="discount-label"></span><span class="discount-price">0원</span><span class="discount-result">100,000원</span>
									</div>
								</div>
							</div>
						</div>
						<button class="go-to-product-page">
							<figure class="cart-course cart-course--order-card">
								<span class="cart-course__thumbnail"><img alt="product-card-asset" loading="lazy" width="70" height="70" decoding="async" data-nimg="1" src="https://cdn.day1company.io/prod/uploads/202407/133148-570/free-programming-parkseungkyoo-coursecard.webp" style="color: transparent;"></span>
								<figcaption class="cart-course__caption">
									<dl>
										<dt>[무료특강] 백엔드 개발이 편리해지는 코틀린과 스프링 부트</dt>
										<dd>프로그래머 박승규</dd>
									</dl>
								</figcaption>
							</figure>
						</button>
						<div class="cart-order-price">
							<span class="cart-order-price__price"><span class="cart-order-price__price--primary">100,000</span>원</span>
						</div>
					</div>
			
			
			</section>
			
			<!-- ----------------- 장바구니 주문 금액 ---------------->
			<section id="sec02" class="cart-price">
				<div class="cart-order-form">
					<div class="board-block">
						<div class="price-item">
							<strong class="price-item__title">총 상품 금액</strong>
							<p class="price-item__price">269,000원</p>
						</div>
						<div class="price-item">
							<strong class="price-item__title">선택 상품 수</strong>
							<p class="price-item__count">
								총 <span class="price-item__count--primary">2</span>건
							</p>
						</div>
						<div class="price-item">
							<strong>주문 금액</strong>
							<p>269,000원</p>
						</div>
					</div>
				</div>
					
			</section>
			
			<!-- ----------------- 주문 버튼 ---------------->
			<section id="sec03" class="order-btn">
				<button class="btn">주문하기</button>
					
			</section>
			
			<!-- ----------------- 장바구니 약관 ---------------->
			<section id="sec04" class="cart-notice">
				<div class="cart-order-form__notice" >
<!-- 					아래의 내용은 확인 후 적용 예정 -->
<!-- 					* 장바구니 상품은 30일동안 보관되며, 최대 10개까지 담을 수 있습니다.<br> -->
					* 보유하신 쿠폰은 주문서에서 적용 가능합니다.
				</div>
			</section>
	</main>
	
	<!----------------------------- page 영역 --------------------------- -->
	<footer id="ft">
		<div class="ft-wrap">
			<div class="top">
				<div class="ft-logo">
					<img src="img/ft_logo2.png" alt="learn on" />
				</div>
				<div class="info1">
					<p>고객센터 1588-0105</p>
					<span>운영시간 09:00 ~ 18:00</span>
				</div>
				<div class="sns">
					<a href="#" class="insta"><i class="fa-brands fa-instagram"></i></a>
					<a href="#" class="fb"><i class="fa-brands fa-facebook"></i></a> <a
						href="#" class="twit"><i class="fa-brands fa-x-twitter"></i></a>
				</div>
			</div>
			<div class="ft-link">
				<a href="#">공지사항</a> <a href="#">이용약관</a> <a href="#">개인정보처리방침</a> <a
					href="#">FAQ</a> <a href="#">환불규정</a>
			</div>
			<div class="info2">
				대표 : 김러닝 | 개인정보보호책임자 : 박책임 | 주소: 부산광역시 부산진구 동천로 109, 7층(부전동)<br />
				사업자번호: 120-030-4852 | 통신판매업신고:2024-부산진구-1111 |대표번호: 051-000-1230 | 
				이메일 : help@learn.com
			</div>
		</div>
	</footer>


</body>
</html>