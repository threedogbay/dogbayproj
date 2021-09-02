package com.three.dog.controller;


import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.three.dog.domain.AuctionVO;
import com.three.dog.domain.ProductVO;
import com.three.dog.service.ProductDetailService;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
public class ProductDetailController {
	
	@Autowired
	ProductDetailService productService;
	
	@RequestMapping(value = "afterauth/product_details", method = RequestMethod.GET)
	public String showProductDetail(Model model, @RequestParam(required = false, defaultValue = "", value = "prodid") Integer prodid) {
		
		if(prodid != null) {
			ProductVO vo = productService.showProductDetail(prodid);
						
			List<AuctionVO> auctionVo = productService.getAuctionList(prodid);
			
			int maxPrice = productService.getMaxPrice(prodid);
			System.out.println(vo.toString());
			model.addAttribute("listAuction", auctionVo);
			model.addAttribute("product", vo);
			model.addAttribute("maxPrice", maxPrice);
			System.out.println(vo.toString());
		}
		
		
		return "afterauth/product_details";
	}
}