package com.three.dog.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.three.dog.domain.ProductVO;
import com.three.dog.mappers.ProductDetailMapper;

@Repository
public class ProductDetailRepositoryImpl implements ProductDetailRepository{
	
	@Autowired
	ProductDetailMapper mapper;

	@Override
	public ProductVO showProductDetail(int prodid) {
		
		return mapper.showProductDetail(prodid);
	}
	
	
}
