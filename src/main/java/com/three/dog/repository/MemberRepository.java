package com.three.dog.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.three.dog.domain.MemberVO;
import com.three.dog.mapper.MemberMapper;

@Repository
public class MemberRepository {
	
	@Autowired
	private MemberMapper memberMapper;
	
	//로그인
	public MemberVO selectId(String memberid) throws Exception {
		return memberMapper.selectMembers(memberid);
	}

	//회원가입
	public void signUp(MemberVO vo) throws Exception {
		memberMapper.insertMember(vo);
	}
	
	//아이디 중복체크
	public int idChk(MemberVO vo) throws Exception {
		int result = memberMapper.idChk(vo);
		return result;
	}

	
}
