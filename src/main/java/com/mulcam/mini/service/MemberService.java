package com.mulcam.mini.service;

import com.mulcam.mini.dto.Member;

public interface MemberService {
	void join(Member member) throws Exception;
	boolean idOverlap(String id) throws Exception;

	boolean login(String id, String password) throws Exception;
	boolean memOverlap(String id) throws Exception;


}
