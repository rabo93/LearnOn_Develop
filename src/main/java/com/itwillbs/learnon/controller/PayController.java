package com.itwillbs.learnon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.learnon.service.CartService;
import com.itwillbs.learnon.service.PayService;

@Controller
public class PayController {
	@Autowired
	private PayService payService;
	
	//=================================================================================
	// 결제 페이지(patment.jsp)로 포워딩 - Get
	@GetMapping("Payment")
	public String payForm() {
		return "payment"; // payment.jsp
	}
	
	
	
	
	
}
