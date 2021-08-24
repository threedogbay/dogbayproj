package com.three.dog.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.three.dog.domain.MemberVO;

@Mapper
public interface MemberMapper {
	MemberVO selectMembers(String memberid);

	public void insertMember(MemberVO member);
}
