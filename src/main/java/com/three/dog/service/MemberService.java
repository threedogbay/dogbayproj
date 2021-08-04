package com.three.dog.service;


import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.three.dog.domain.MemberDTO;
import com.three.dog.domain.MemberVO;
import com.three.dog.repository.MemberRepository;



@Service
public class MemberService implements UserDetailsService{
	
	@Autowired
	private MemberRepository memberRepository;
	
	Logger log = LoggerFactory.getLogger(this.getClass());
	/**
	   * Spring Security 필수 메소드 구현
	   *
	   * @param memberid 아이디
	   * @return UserDetails
	   * @throws UsernameNotFoundException 유저가 없을 때 예외 발생
	   */

	@Override // 기본적인 반환 타입은 UserDetails, UserDetails를 상속받은 UserVO로 반환 타입 지정 (자동으로 다운 캐스팅됨)
	public UserDetails loadUserByUsername(String memberid) throws UsernameNotFoundException {
		// 시큐리티에서 지정한 서비스이기 때문에 이 메소드를 필수로 구현
		log.info("## loadUserByUsername ##");

		MemberVO vo = memberRepository.selectId(memberid);
		
		if(vo == null) {
			log.debug("## 계정 정보가 존재하지 않습니다. ##");
			throw new UsernameNotFoundException("사용자가 입력한 아이디를 찾을 수 없습니다.");
		}
		return vo;
	}

}
