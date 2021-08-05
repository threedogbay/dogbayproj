package com.three.dog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.three.dog.domain.MemberVO;
import com.three.dog.service.MemberService;

@Controller
public class MainController {
	
//	private final static Logger log = LoggerFactory.getLogger(null);
	
	@RequestMapping(value="/")
	public String main() {
		return "user/login";
	}
	
	@RequestMapping(value="login")
	public ModelAndView mLogin(@ModelAttribute MemberVO vo) {
		
		return null;
	}
	
	@GetMapping(value="/{path1}")
	public String path1(@PathVariable("path1") String path1
			) {
		return path1;
	}
	
	@GetMapping(value="/{path1}/{path2}")
	public String path2(@PathVariable("path1") String path1,
			@PathVariable("path2") String path2
			) {
		return path1 + "/" + path2;
	}
	//nkfdjnksalnfdklsanfkdlsanfkldsnk
	//rrrr

}
