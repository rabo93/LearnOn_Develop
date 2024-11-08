package com.itwillbs.learnon.mapper;

import java.util.List;

import com.itwillbs.learnon.vo.CartVO;

public interface CartMapper {

	List<CartVO> selectCart(String memId);

}
