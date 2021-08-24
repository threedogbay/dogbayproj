package com.three.dog.repository;

import java.util.List;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;

public interface ProductDetailRepository {

	ProductVO showProductDetail(int prodid);

	List<AuctionVO> getAuctionList(Integer prodid);

}
