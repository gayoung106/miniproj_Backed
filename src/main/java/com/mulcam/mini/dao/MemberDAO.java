package com.mulcam.mini.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.mini.dto.Member;

@Repository
@Mapper
public interface MemberDAO {
	void insertMember(Member member) throws Exception;


	public Member queryMember(String id) throws Exception;

}
