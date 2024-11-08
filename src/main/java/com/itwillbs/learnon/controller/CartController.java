package com.itwillbs.learnon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.learnon.service.CartService;
import com.itwillbs.learnon.vo.CartVO;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	//=================================================================================
	// 장바구니 목록 조회 (회원아이디를 받아서 그 회원id에 해당하는 장바구니 목록 조회)
	// 클래스제목(CLASS_TITLE), 강사이름(MEM_NAME), 클래스가격(CLASS_PRICE) 
	@GetMapping("Cart")
	public String cartList(@RequestParam(value = "memId", required = false, defaultValue = "'hong1234'") String memId, Model model) {
	//컨트롤러 메서드에서 memId 파라미터에 기본값을 설정하면, memId가 전달되지 않았을 때 기본값을 사용하도록 할 수 있습니다.
	//이 경우 memId가 0으로 설정되는데, 사용자가 미리 로그인하거나 멤버 정보를 선택하여야 할 수 있습니다.
//	public String cartList(HttpSession session, Model model) {
//		String memId = (String) session.getAttribute("memId");
//		String memId = 'hong1234';
		
		//CartService - getCartList() 메서드 호풀하여 장바구니 조회 요청
		//파라미터:X / 리턴타입:List<CartVO>(cartList) 
		List<CartVO> cartList = cartService.getCartList(memId);
//		System.out.println(cartList);
		model.addAttribute("cartList", cartList);
		System.out.println(cartList);
		// 장바구니 페이지(Cart)로 포워딩
		return "cart";
	}
	
	
}
