package com.three.dog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.three.dog.domain.PaymentVO;
import com.three.dog.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	
//	private final static Logger log = LoggerFactory.getLogger(null);
	@Autowired
	private PaymentService paymentService;
	
	@GetMapping(value="/customerInfo")
	public String paymentCustomerInfo() {
		
		return "payment/customer_info";
	}
	
	@PostMapping(value="/customerInfo")
	public String paymentCustomerInfo(PaymentVO vo) {
		
		
		
		paymentService.create(vo);
		
		return "payment/customer_info";
	}
	
	
	

}
