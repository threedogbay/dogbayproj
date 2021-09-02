package com.three.dog.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.three.dog.domain.MemberVO;
import com.three.dog.service.MemberService;

@RestController
public class AccountController {

	@Autowired
	private MemberService memberService;

	// 아이디 중복체크
	@ResponseBody
	@PostMapping("/user/idCheck")
	public int idChk(@RequestParam(required = false, value = "member_id") String member_id) throws Exception {
		int result = memberService.idChk(member_id);
		return result;
	}

	// 회원가입
	@PostMapping("/signup")
	public void signUp(MemberVO vo) throws Exception {
		memberService.signUp(vo);
//		int result = memberService.idChk(vo.getMember_id());
//		try {
//			if(result == 1) {
//				return "/user/signup";
//			} else if(result ==0) {
//				memberService.signUp(vo);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/";
	}

}
