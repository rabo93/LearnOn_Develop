<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바구니</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

<!-- page 개별 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css">
    
<!-- page 개별 JS -->
<script src="${pageContext.request.contextPath}/resources/js/cart.js"></script>

</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
	</header>
	
	<!----------------------------- page 영역 --------------------------- -->
	<main id="cart">
		<div class="wrapper">
			<h2 id="title">장바구니</h2>
			
			<!-- -----------------장바구니 상품 목록 ---------------->
			<section id="sec01" class="cart-list">
				<!-- 전체선택 -->
				<div class="cart-order">
					<label class="checkbox">
						<input type="checkbox" class="checkbox__trigger a11y"  value="Checkbox" name="">
						<i class="checkbox__icon">
							<svg width="13" height="10" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M1 5L5 9.5L12 1" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
							</svg>
							<span class="a11y">Checkbox</span>
						</i>
						<span class="checkbox__label cart-checkbox-label">모두 선택</span>
					</label>
					<button class="select-controller__delete-selected">선택 삭제</button>
				</div>
				
				<!-- 상품 내역1 -->
				<div class="cart-order">
					<label class="checkbox">
						<input class="checkbox__trigger a11y" data-testid="checkbox" type="checkbox" value="170711" name="">
						<i class="checkbox__icon">
							<svg width="13" height="10" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M1 5L5 9.5L12 1" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
							</svg>
							<span class="a11y">170711</span>
						</i>
						<span class="checkbox__label "></span>
					</label>
					
					<button class="cart-order-card__delete-icon">
						<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M0.578125 1L12.5781 13M12.5781 1L0.578125 13" stroke="#A0A0A0"></path>
						</svg>
					</button>
					<!--  -->
					<div class="product-content">
						<div class="product-content__info">
							<strong class="product-content__title">박승규</strong>
							<div class="product-content__price product-content__price--hidden-discount">
								<div class="product-content__price-align-item">
									<span class="discount-label"></span>
									<span class="discount-price">0원</span>
									<span class="discount-result">100,000원</span>
								</div>
							</div>
						</div>
					</div>
					<!-- 주문상품 상세내역(클릭시 상품상세페이지로 이동) -->
					<button class="go-to-product-page">
						<figure>
							<span class="class-pic">
								<img alt="클래스썸네일" src="/resources/images/thumb_01.webp" loading="lazy" width="70" height="70" style="color: transparent;">
							</span>
							<figcaption class="class-info">
								<dl>
									<dt>[무료특강] 백엔드 개발이 편리해지는 코틀린과 스프링 부트(CLASS_TITLE)</dt>
									<dd>박승규(T_ID>MEM_NAME)</dd>
								</dl>
							</figcaption>
						</figure>
					</button>
					
					<!-- 상품 금액 결과 부분 -->
					<div class="cart-order-price1">
						<span class="cart-order-price">
							<span class="cart-order-price">100,000(CLASS_PRICE)
							</span>원
						</span>
					</div>
				</div>
				
				<!-- 상품 내역2 -->
				<div class="cart-order">
					<label class="checkbox">
						<input class="checkbox__trigger a11y" data-testid="checkbox" type="checkbox" value="178036" name="">
						<i class="checkbox__icon">
							<svg width="13" height="10" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M1 5L5 9.5L12 1" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
							</svg>
							<span class="a11y">178036</span>
						</i>
						<span class="checkbox__label "></span>
					</label>
					<button class="cart-order-card__delete-icon">
						<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M0.578125 1L12.5781 13M12.5781 1L0.578125 13" stroke="#A0A0A0"></path>
						</svg>
					</button>
					<div class="product-content">
						<div class="product-content__info">
							<strong class="product-content__title">[asset] AI전문크리에이터 돈버는 온라인자판기</strong>
							<div class="product-content__price product-content__price--hidden-discount">
								<div class="product-content__price-align-item">
									<span class="discount-label"></span><span class="discount-price">0원</span>
									<span class="discount-result">169,000원</span>
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
			<section id="sec03" class="btn">
				<input type="button" value="주문하기" onclick="orderCart()">		
			</section>
				<input type="button" value="돌아가기" onclick="history.back()">		
			
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
	
	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
	</footer>


</body>
</html>