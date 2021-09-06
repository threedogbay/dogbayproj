package com.three.dog.mappers;

import org.apache.ibatis.annotations.Mapper;

import com.three.dog.domain.MemberVO;

@Mapper
public interface MemberMapper {
	MemberVO selectMember(String member_id);

	public void insertMember(MemberVO vo);

	public int idChk(String member_id);
}
