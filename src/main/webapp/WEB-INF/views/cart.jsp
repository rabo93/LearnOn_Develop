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
		
			<!-- cart-wrap start  -->
			<div class="cart-wrap">
				<h2 class="cart-ttl">장바구니</h2>
				<!-- -----------------장바구니 상품 목록 ---------------->
				<div class="frame">
					
					<section class="cart-list">
						<!-- 전체선택 -->
						<div class="cart-select">
							<input type="checkbox" id="check_all"> <label for="check_all">전체선택</label>
							<button class="btn-del">선택 삭제</button>
						</div>
						<!-- 상품 내역1 -->
						<div class="cart-item">
							<div class="item-btns">
								<input type="checkbox" id="cart1" name="cart1" value="cart1">
							    <button class="btn-del">
							    	<i class="fa-solid fa-xmark"></i>
							    </button>
							</div>
							<!-- 주문상품 상세내역(클릭시 상품상세페이지로 이동) -->
<!-- 						<a href="course-detail" class="item-link"> -->
							<a href="#" class="item-link">
								<div class="class-pic">
									<img alt="클래스썸네일" src="/resources/images/thumb_01.webp">
								</div>
								<div class="item-info">
									<p>[무료특강] 백엔드 개발이 편리해지는 코틀린과 스프링 부트(CLASS_TITLE)</p>
									<p>박승규(T_ID - MEM_NAME)</p>
								</div>
							</a>
							<!-- 상품 금액 결과 부분 -->
							<div class="item-result">
								<span class="price">100,000(CLASS_PRICE)</span>원
							</div>
						</div>
					</section>
					
					<!-- ----------------- 장바구니 주문 금액 ---------------->
					<section class="cart-right">
						<div class="price-box">
							<dl>
								<dt>총 상품 금액</dt>
								<dd>￦ 269,000</dd>
							</dl>
							<dl>
								<dt>선택 상품 수</dt>
								<dd>총 <span>2</span>건</dd>
							</dl>
							<dl class="total">
								<dt>주문 금액</dt>
								<dd>￦ 269,000</dd>
							</dl>
						</div>
						<!-- ----------------- 주문 버튼 ---------------->
						<div class="btns-box">
							<input type="submit" value="주문하기" class="btnSubmit" onclick="orderCart()">
							<input type="button" value="돌아가기" class="btnBack" onclick="history.back()">		
						</div>
						<!-- ----------------- 장바구니 약관 ---------------->
						<div class="notice-box">
			<!-- 					아래의 내용은 확인 후 적용 예정 -->
			<!-- 					* 장바구니 상품은 30일동안 보관되며, 최대 10개까지 담을 수 있습니다.<br> -->
							* 보유하신 쿠폰은 주문서에서 적용 가능합니다.
						</div>
					</section>
				</div>
			</div>
			<!-- // cart-wrap end  -->
			
		</div>
	</main>
	
	<!----------------------------- page 영역 --------------------------- -->
	
	<footer>
		<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
	</footer>


</body>
</html>