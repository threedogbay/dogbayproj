package com.three.dog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;
import com.three.dog.repository.ProductDetailRepository;
import com.three.dog.repository.ProductDetailRepositoryImpl;

@Service
public class ProductDetailServiceImpl implements ProductDetailService {
	
	@Autowired
	private ProductDetailRepository productDAO;

	@Override
	public ProductVO showProductDetail(int prodid) {

		return productDAO.showProductDetail(prodid);
	}

	@Override
	public List<AuctionVO> getAuctionList(Integer prodid) {
		
		return productDAO.getAuctionList(prodid);
	}

	@Override
	public int getMaxPrice(Integer prodid) {
		// TODO Auto-generated method stub
		return productDAO.getMaxPrice(prodid);
	}
	
	
}
