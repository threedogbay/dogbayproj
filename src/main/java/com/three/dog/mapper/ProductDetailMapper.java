package com.three.dog.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.three.dog.domain.ProductVO;

@Mapper
public interface ProductDetailMapper {
	
	ProductVO showProductDetail(int prodid);
}
