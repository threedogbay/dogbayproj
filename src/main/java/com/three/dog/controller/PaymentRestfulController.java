package com.three.dog.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping(value="api")
@RestController
public class PaymentRestfulController {
	
//	private final static Logger log = LoggerFactory.getLogger(null);
	
	@PostMapping(value="/charge")
	public String create() {
		return "user/login";
	}
	
	

}
