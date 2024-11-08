package com.itwillbs.learnon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.learnon.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	//=================================================================================
	// 장바구니 페이지(Cart)로 포워딩 - Get
	@GetMapping("Cart")
	public String cartForm() {
		return "cart"; // cart.jsp
	}
	//=================================================================================
	// 장바구니 목록 조회
	// 클래스제목(CLASS_TITLE), 강사이름(MEM_NAME), 클래스가격(CLASS_PRICE) 
	@PostMapping("Cart")
	public String cartList() {
		
		
		return "";
	}
	
	
}
