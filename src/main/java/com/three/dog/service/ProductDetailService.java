package com.three.dog.service;

import java.util.List;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;

public interface ProductDetailService {

	public ProductVO showProductDetail(int i);

	public List<AuctionVO> getAuctionList(Integer prodid);

	public int getMaxPrice(Integer prodid);

	
}
