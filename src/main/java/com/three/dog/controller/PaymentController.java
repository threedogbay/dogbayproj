package com.three.dog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	
//	private final static Logger log = LoggerFactory.getLogger(null);
	
	@GetMapping(value="/customerInfo")
	public String paymentCustomerInfo() {
		
		return "payment/customer_info";
	}
	
	
	

}
