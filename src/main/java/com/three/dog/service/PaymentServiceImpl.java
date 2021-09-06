package com.three.dog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.PaymentVO;
import com.three.dog.domain.ProductVO;
import com.three.dog.repository.PaymentRepository;
import com.three.dog.repository.ProductDetailRepository;
import com.three.dog.repository.ProductDetailRepositoryImpl;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentRepository paymentRepository;

	@Override
	public void create(PaymentVO vo) {
		paymentRepository.create(vo);
		
	}

	
	
	
}
