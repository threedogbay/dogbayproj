package com.three.dog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.three.dog.domain.MemberVO;
import com.three.dog.service.MemberService;

@Controller
public class AccountController {

	private MemberService memberService;
	
	@RequestMapping(value="/login", method= RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MemberVO vo) throws Exception {
		boolean result = memberService.loadUserByUsername(vo);
		ModelAndView mav = new ModelAndView();
		if(result) {
			System.out.println(vo.getMember_id() + "님이 로그인했습니다.");
			mav.addObject(mav)
		}
		
		
		return result;
	}
}
