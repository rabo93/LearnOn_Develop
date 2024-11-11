package com.itwillbs.learnon.mapper;

import java.util.List;

import com.itwillbs.learnon.vo.CartVO;

public interface CartMapper {
	// 장바구니 목록 조회
	List<CartVO> selectCart(String memId);

}
