package com.three.dog.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.PaymentVO;
import com.three.dog.domain.ProductVO;

@Mapper
public interface PaymentMapper {
	
	void create(@Param("vo")PaymentVO vo);

}
	
