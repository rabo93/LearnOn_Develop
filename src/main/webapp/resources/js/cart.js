// "주문하기(btnSubmit)" 클릭시 결제페이지(payment.jsp)로 이동
function orderCart() {
	location.href = "Payment"; //Payment 매핑주소 포워딩 해야함
	
	
}

// "전체선택(checkAll)" 버튼 클릭시 전체 선택/해제 이벤트
function checkAll() {
	
}

$(function() {
	$("#check_all").click(function() {
		// 전체선택을 제외한 나머지 체크박스에 대한 반복 수행
		$("input[name=checkCart]").each(function(index, item) {
			// 전체선택 체크박스 체크상태값을 각 체크박스 체크상태값으로 설정
			$(item).prop("checked", $("#check_all").prop("checked"));
		});
		
	});

});

//상품별 체크 상태 해제시 전체선택 해제 (checkItem())



//상품별 X 버튼 클릭시 장바구니 삭제 이벤트 deleteItem() 