package com.itwillbs.learnon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.learnon.vo.CartVO;

@Mapper
public interface CartMapper {
	// 장바구니 목록 조회
	List<CartVO> selectCart(String sId);

	// 장바구니 상품 1개 삭제 (int타입으로 리턴받을꺼임)
	int deleteCart(String cartitem);

	// 장바구니 상품 여러개 삭제 (int타입으로 리턴받을꺼임)
	int deleteCarts(List<Integer> cartItems);

}
