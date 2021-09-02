package com.three.dog.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;
import com.three.dog.mapper.ProductDetailMapper;

@Repository
public class ProductDetailRepositoryImpl implements ProductDetailRepository{
	
	@Autowired
	ProductDetailMapper mapper;

	@Override
	public ProductVO showProductDetail(int product_id) {
		
		return mapper.showProductDetail(product_id);
	}

	@Override
	public List<AuctionVO> getAuctionList(Integer prodid) {
		// TODO Auto-generated method stub
		return mapper.getAuctionList(prodid);
	}

	@Override
	public int getMaxPrice(Integer prodid) {
		// TODO Auto-generated method stub
		return mapper.getMaxPrice(prodid);
	}
	
	
}
