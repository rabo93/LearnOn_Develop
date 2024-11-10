document.addEventListener('DOMContentLoaded', function () {
	console.log("JavaScript 파일 로드됨");
});


// "전체선택(checkAll)" 버튼 클릭시 전체 항목 선택/해제 이벤트
const checkAll = document.querySelector('#checkAll'); // id 속성 가져오기

if (checkAll) { // checkAll이 존재하는지 확인
	checkAll.addEventListener('click', function() {
		const isChecked = checkAll.checked;
		console.log("전체 선택 버튼 클릭됨. isChecked:", isChecked); // 디버깅용 로그

		const checkboxes = document.querySelectorAll('.chk'); // class 속성 가져오기
		console.log("체크박스 목록:", checkboxes); // 디버깅용 로그

		// 각 체크박스의 상태를 전체선택 상태와 동일하게 설정
		for (const checkbox of checkboxes) {
			checkbox.checked = isChecked;
		}
	});
} else {
	console.error("ID가 'checkAll'인 요소를 찾을 수 없습니다.");
}

// 개별 체크박스 클릭 시 전체선택 상태 업데이트
const checkboxes = document.querySelectorAll('.chk'); // 모든 개별 체크박스 선택

for (const checkbox of checkboxes) {
	checkbox.addEventListener('click', function() {
		const totalCnt = checkboxes.length;
		const checkedCnt = document.querySelectorAll('.chk:checked').length;

		// 모든 체크박스가 선택되었는지 확인 후 전체선택 상태 업데이트
		checkAll.checked = totalCnt === checkedCnt;
	});
}



////////////////////////////////////////////////////////////
//const checkboxs = document.querySelectorAll('.chk');
//for(const chkbox of checkboxs){
//    chkbox.addEventListener('click',function(){
//        
//        const totalCnt = checkboxs.length;
//    
//        const checkedCnt = document.querySelectorAll('.chk:checked').length;
//        
//        if(totalCnt == checkedCnt){
//            document.querySelector('#checkAll').checked = true;
//        }
//        else{
//            document.querySelector('#checkAll').checked = false;
//        }
//        
//    });
//    
//}

//상품별 체크 상태 해제시 전체선택 해제 (checkItem())



//상품별 X 버튼 클릭시 장바구니 삭제 이벤트 deleteItem() 







//------------------------------------------------------------------------------
// "주문하기(btnSubmit)" 클릭시 결제페이지(payment.jsp)로 이동
function orderCart() {
	location.href = "Payment"; //Payment 매핑주소 포워딩 해야함
}