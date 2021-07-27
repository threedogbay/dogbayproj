package com.three.dog.repository;

import org.springframework.stereotype.Repository;

import com.three.dog.domain.MemberVO;
import com.three.dog.mapper.MemberMapper;

@Repository
public class MemberRepository {
	
	MemberMapper memberMapper;
	
	public MemberVO selectId(String memberid) {
		return memberMapper.selectMembers(memberid);
	}
}
