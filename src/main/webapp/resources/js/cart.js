document.addEventListener("DOMContentLoaded", function() {
// 페이지가 완전히 로드되면 다음 코드를 실행(이거 안하니까 초기 페이지 로딩시 전체선택 이벤트가 안되어있음)
	
	//------------------------------------------------------------------------------------------
	// "전체선택(checkAll)" 버튼 클릭시 전체 항목 선택/해제 이벤트
	const checkAll = document.querySelector('#checkAll'); //id 속성 가져와서 변수에 저장
//	console.log(checkAll); //<input type="checkbox" id="checkAll" checked="checked">
	const checkboxes = document.querySelectorAll('.chk'); //name 속성 전체 가져와서 변수에 저장
//	console.log(checkboxes); //NodeList(5) [input.chk, input.chk, input.chk, input.chk, input.chk]
	
	// 1. 초기 동기화 : 페이지가 처음 로드될 때 'checkAll'의 상태에 따라 다른 체크박스들의 상태를 설정
	const isChecked = checkAll.checked; // checkAll이 체크되어 있는지 확인
	// 각 체크박스의 상태를 전체선택 상태와 동일하게 설정하는 for문
//	for(const checkbox of checkboxes) { 
//		checkbox.checked = isChecked; 
//	}
	//=> 람다식으로!! 
	checkboxes.forEach(checkbox => checkbox.checked = isChecked);
	
		
	// 2. 그러고나서 클릭 이벤트 설정
	checkAll.addEventListener('click', function() {
		const isChecked = checkAll.checked;
//		console.log("전체선택 버튼 클릭함? ", isChecked); 
		
		checkboxes.forEach(checkbox => checkbox.checked = isChecked);
	}); //클릭이벤트 끝
		
		
	// 3. 개별 체크박스 하나라도 체크 해제 시 전체선택 체크 해제 업데이트
	checkbox.addEventListener('click', function() {
		const totalCnt = checkboxes.length; //총 체크박스 갯수
		console.log("totalCnt: " + totalCnt); 
		const checkedCnt = document.querySelectorAll('.chk:checked').length; //체크한 갯수
		console.log("checkedCnt: "+ checkedCnt);
		
		// 모든 체크박스가 선택되었는지 확인 후 전체선택 상태 업데이트
		checkAll.checked = totalCnt === checkedCnt;
	});
	
});


//------------------------------------------------------------------------------------------
//상품별 X 버튼 클릭시 장바구니 삭제 이벤트 deleteItem() 






	
	
	




//================================================================
// "주문하기(btnSubmit)" 클릭시 결제페이지(payment.jsp)로 이동
function orderCart() {
	location.href = "Payment"; //Payment 매핑주소 포워딩 해야함
}



