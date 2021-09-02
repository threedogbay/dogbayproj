package com.three.dog.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;

@Mapper
public interface ProductDetailMapper {
	
	ProductVO showProductDetail(@Param("product_id")int product_id);

	List<AuctionVO> getAuctionList(Integer product_id);

	int getMaxPrice(Integer product_id);
}
