package com.three.dog.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.three.dog.domain.ProductVO;
import com.three.dog.mapper.ProductDetailMapper;

@Repository
public class ProductDetailRepository {
	
	@Autowired
	ProductDetailMapper mapper;

	public ProductVO showProductDetail(int prodid) {
		
		return mapper.showProductDetail(prodid);
	}
	
	
}
