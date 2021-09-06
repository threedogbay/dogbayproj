package com.three.dog.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.PaymentVO;
import com.three.dog.domain.ProductVO;
import com.three.dog.mappers.PaymentMapper;
import com.three.dog.mappers.ProductDetailMapper;

@Repository
public class PaymentRepositoryImpl implements PaymentRepository{
	
	@Autowired
	PaymentMapper mapper;

	@Override
	public void create(PaymentVO vo) {
		mapper.create(vo);
		
	}

	
}
