package com.three.dog.controller;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.three.dog.domain.MemberVO;
import com.three.dog.service.MemberService;

@RestController
public class AccountController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/create")
	public void create() {
		MemberVO member = new MemberVO();
		member.setMember_id("ajc1234");
		member.setMember_pw("1234");
		member.setMember_name("안종찬");
		member.setAuth("ROLE_USER");

		memberService.save(member);
	}
}
