package com.three.dog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.three.dog.domain.ProductVO;
import com.three.dog.service.ProductDetailService;

@Controller
public class ProductDetailController {
	
	@Autowired
	ProductDetailService productService;
	
	@RequestMapping(value = "/product_details/{prodid}", method = RequestMethod.GET)
	public String showProductDetail(Model model, @PathVariable Integer prodid) {
		
		ProductVO vo = productService.showProductDetail(prodid);
		System.out.println(vo.toString());
		return "product_details";
	}
}