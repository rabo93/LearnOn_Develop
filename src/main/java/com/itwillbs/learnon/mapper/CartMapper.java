package com.itwillbs.learnon.mapper;

import java.util.List;

import com.itwillbs.learnon.vo.CartVO;

public interface CartMapper {
	// 장바구니 목록 조회
	List<CartVO> selectCart(String sId);

	// 장바구니 상품 1개 삭제 (int타입으로 리턴받을꺼임)
	int deleteCart(String cartitem);

//	int deleteCart(String memId, List<Integer> cartitemList);
}
