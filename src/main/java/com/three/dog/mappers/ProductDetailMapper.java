package com.three.dog.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;

@Mapper
public interface ProductDetailMapper {
	
	ProductVO showProductDetail(int prodid);

	List<AuctionVO> getAuctionList(Integer prodid);

	int getMaxPrice(Integer prodid);
}
