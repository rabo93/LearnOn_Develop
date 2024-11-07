<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>결제</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

<!-- page 개별 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/payment.css">
    
<!-- page 개별 JS -->
<script src="${pageContext.request.contextPath}/resources/js/payment.js"></script>

<!-- 포트원 결제api sdk 추가 -->
<script src="http://cdn.portone.io/v2/browser-sdk.js"></script>




</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
	</header>
	
	<!----------------------------- page 영역 --------------------------- -->
	<main id="payment">
		<div class="wrapper">
			<h2 id="title">결제페이지</h2>
			
			<!-- -----------------결제 상품 목록 ---------------->
			<section id="sec01" class="payment-list">
				<!-- 전체선택 -->
				<div class="payment-form">
					<input type="checkbox" id="check_all"> <label for="check_all">전체선택</label>
					<button class="select-delete-btn">선택 삭제</button>
				</div>
				
				<!-- 상품 내역1 -->
				<div class="payment-form">
					<input type="checkbox" id="cart1" name="cart1" value="cart1">
				    <button class="payment-delete">
				    	<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M0.578125 1L12.5781 13M12.5781 1L0.578125 13" stroke="#A0A0A0"></path>
						</svg>
				    </button>
				    <br>
			        <!-- 상품 간단 정보 -->
			        <label for="cart1">
			            <div class="product-content" id="cart1">
		  			        <strong class="class-title">[무료특강] 백엔드~~(CLASS_TITLE)</strong>
					        <span class="class-price">100,000원(CLASS_PRICE)</span>
			            </div>
					</label>
					
					<!-- 주문상품 상세내역(클릭시 상품상세페이지로 이동) -->
					<button class="go-to-product-page">
						<figure>
							<span class="class-pic">
								<img alt="클래스썸네일" src="/resources/images/thumb_01.webp" loading="lazy" width="70" height="70" style="color: transparent;">
							</span>
							<figcaption class="class-info">
								<dl>
									<dt>[무료특강] 백엔드 개발이 편리해지는 코틀린과 스프링 부트(CLASS_TITLE)</dt>
									<dd>박승규(T_ID - MEM_NAME)</dd>
								</dl>
							</figcaption>
						</figure>
					</button>
					
					<!-- 상품 금액 결과 부분 -->
					<div class="payment-order-price1">
						<span class="payment-order-price">
							<span class="payment-order-price">100,000(CLASS_PRICE)
							</span>원
						</span>
					</div>
				</div>
				
				<!-- 상품 내역2 -->
				<div class="payment-form">
					<input type="checkbox" id="cart1" name="cart1" value="cart1">
				    <button class="payment-delete">
				    	<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M0.578125 1L12.5781 13M12.5781 1L0.578125 13" stroke="#A0A0A0"></path>
						</svg>
				    </button>
				    <br>
			        <!-- 상품 간단 정보 -->
			        <label for="cart1">
			            <div class="product-content" id="cart1">
		  			        <strong class="class-title">[무료특강] 백엔드~~(CLASS_TITLE)</strong>
					        <span class="class-price">100,000원(CLASS_PRICE)</span>
			            </div>
					</label>
						
					<!-- 주문상품 상세내역(클릭시 상품상세페이지로 이동) -->
					<button class="go-to-product-page">
						<figure>
							<span class="class-pic">
								<img alt="클래스썸네일" src="/resources/images/thumb_01.webp" loading="lazy" width="70" height="70" style="color: transparent;">
							</span>
							<figcaption class="class-info">
								<dl>
									<dt>[무료특강] 백엔드 개발이 편리해지는 코틀린과 스프링 부트(CLASS_TITLE)</dt>
									<dd>박승규(T_ID - MEM_NAME)</dd>
								</dl>
							</figcaption>
						</figure>
					</button>
					
					<!-- 상품 금액 결과 부분 -->
					<div class="payment-order-price1">
						<span class="payment-order-price">
							<span class="payment-order-price">100,000(CLASS_PRICE)
							</span>원
						</span>
					</div>
				</div>
					
			</section>
			
			<!-- ----------------- 결제 주문 금액 ---------------->
			<section id="sec02" class="payment-price">
				<div class="payment-form">
					<div class="payment-price-item">
						<strong class="price-item-title">총 상품 금액</strong>
						<p class="price-item-price">269,000원</p>
					</div>
					<div class="payment-price-item">
						<strong class="price-item-title">선택 상품 수</strong>
						<p class="price-item-count">
							총 <span class="price-item-count">2</span>건
						</p>
					</div>
					<div class="payment-price-item">
						<strong>주문 금액</strong>
						<p>269,000원</p>
					</div>
				</div>
					
			</section>
			
			<!-- ----------------- 결제 버튼 ---------------->
			<section id="sec03" class="btn">
				<input type="button" value="결제하기" class="btn-submit" onclick="requestPayment()">		
				
				
				
				
				
				
				
				<input type="button" value="돌아가기" class="btn-back" onclick="history.back()">		
			</section>
			
			<!-- ----------------- 결제 약관 ---------------->
			<section id="sec04" class="payment-notice">
<!-- 					아래의 내용은 확인 후 적용 예정 -->
<!-- 					* 결제 상품은 30일동안 보관되며, 최대 10개까지 담을 수 있습니다.<br> -->
<!-- 					* 보유하신 쿠폰은 주문서에서 적용 가능합니다. -->
			</section>
		</div>
	</main>
	
	<!----------------------------- page 영역 --------------------------- -->
	
	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
	</footer>


</body>
</html>