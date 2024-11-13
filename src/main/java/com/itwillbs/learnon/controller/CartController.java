package com.itwillbs.learnon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.learnon.service.CartService;
import com.itwillbs.learnon.vo.CartVO;
import com.itwillbs.learnon.vo.MemberVO;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	//=================================================================================
	// 장바구니 목록 조회 (회원아이디를 받아서 그 회원id에 해당하는 장바구니 목록 조회)
	// 클래스제목(class_title), 강사이름(mem_name), 클래스가격(class_price) 
	@GetMapping("Cart")
	public String cartList( 
			@RequestParam(value = "sId", defaultValue = "bborara") String sId
			//이 경우 sId가 하드코딩으로 설정(테스트용), 사용자가 미리 로그인하거나 멤버 정보를 선택하여야 할 수 있음
			//컨트롤러 메서드에서 sId 파라미터에 기본값을 설정하면, sId가 전달되지 않았을 때 기본값을 사용하도록 할 수 있음
			, HttpSession session
			, Model model) {
		
		// 로그인 정보 가져오기 (세션 아이디값 확인) => 나중에 로그인 페이지 다 구현되고 작업하기
//		String sId = (String) session.getAttribute("sId");
//		System.out.println(sId);
		
		// sId가 null인지 확인 (로그인하지 않은 경우)
//		if(sId == null) {
//			model.addAttribute("msg", "로그인 후 진행해주세요.");
//			return "redirect:/MemberLogin"; //로그인 페이지로 리다이렉트
//		}
		
		//--------------------------------------------------------------
		// CartService - getCartList() 메서드 호출하여 장바구니 목록 조회 요청
	    List<CartVO> cartList = cartService.getCartList(sId);
		System.out.println(cartList);// [CartVO(CARTITEM_IDX=7, CLASS_ID=240107, MEM_ID=teacher01, CLASS_TITLE=자바 초급 강의 4편, MEM_NAME=이선생, CLASS_PRICE=70000, CLASS_PIC1=, cnt=0), CartVO(CARTITEM_IDX=6, CLASS_ID=240106...
	    
	    // Model 객체에 cartList 객체 결과값 저장하고 jsp뷰페이지로 객체 전달
		model.addAttribute("cartList", cartList); 
		
		// 장바구니 페이지(Cart)로 포워딩
		return "cart_payment/cart";
	
	}//Cart-Get매핑 끝
	
	//=================================================================================
	// 상품 정보 내역 클릭시 강의 상세 페이지로 이동(class_id 전달)
	@GetMapping("CourseDetail")
	public String CourseDetail() {
		return "course_detail"; 
	}//CourseDetail-Get매핑 끝
	
	
	
	//=================================================================================
	// DeleteItem 서블릿 주소 매핑시 비즈니스 로직
	// 1) X 버튼 클릭시 cartitem_idx 확인 후 장바구니 상품 삭제 
	@GetMapping("DeleteItem")
	public String deleteItem(@RequestParam("cartitem_idx") String cartitem,
							  Model model) {
		
		// CartService - deleteCart() 메서드 호출
		// 파라미터 : CARTITEM_IDX    리턴타입 : int(삭제갯수)
		int deleteCount = cartService.deleteCart(cartitem);
		System.out.println("cartitem: " + cartitem);
		
		
		System.out.println("삭제된 항목 수: " + deleteCount);
		//DB 삭제 결과 
		if(deleteCount > 0) { //삭제 성공시
			model.addAttribute("msg", "삭제 성공");
		} else { //실패시
			model.addAttribute("msg", "삭제 실패");
		}
		
		//장바구니 페이지로 리다이렉트
		return "redirect:/Cart";
	}//DeleteItem-Get매핑끝
	
	// 2) '선택삭제' 버튼 클릭시 체크한 여러개의 cartitem_idx 확인 후 장바구니 상품 삭제
//	@GetMapping("DeleteItems")
//	public String deleteItem(@RequestParam("cartitem_idx") List<Integer> cartitemList,
//							 HttpSession session, Model model) {
//		
//		// CartService - deleteCart() 메서드 호출
//		// 파라미터 : CARTITEM_IDX    리턴타입 : int(삭제갯수)
//		int deleteCount = cartService.deleteCart(cartitemList);
//		System.out.println("cartitemList: " + cartitemList);
//		System.out.println("삭제된 항목 수: " + deleteCount);
//		
//		
//		//DB 삭제 결과 
//		if(deleteCount > 0) { //삭제 성공시
//			model.addAttribute("msg", "삭제 성공");
//		} else { //실패시
//			model.addAttribute("msg", "삭제 실패");
//		}
//		
//		//장바구니 페이지로 리다이렉트
//		return "redirect:/Cart";
//	}//DeleteItem-Get매핑끝
	
	
	
	
	
	
	
	
	
	
}
