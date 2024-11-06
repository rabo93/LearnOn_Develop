package com.itwillbs.learnon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.learnon.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	//=================================================================================
	// 장바구니 페이지(Cart)로 포워딩 - Get
	@GetMapping("Cart")
	public String cartForm() {
		return "cart";
	}
	
}
