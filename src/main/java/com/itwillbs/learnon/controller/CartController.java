package com.itwillbs.learnon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.itwillbs.learnon.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	//=================================================================================
	
}
