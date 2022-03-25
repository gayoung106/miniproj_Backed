package com.mulcam.mini.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.mini.dao.MemberDAO;
import com.mulcam.mini.dto.Member;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO memberDAO;

	@Override
	public void join(Member member) throws Exception {
		memberDAO.insertMember(member);
		
	}

	@Override
	public boolean login(String id, String password) throws Exception {
		try {
			Member mem = memberDAO.queryMember(id);
			if(mem == null) throw new Exception();
			if(password.equals(mem.getPassword())) {
				return true;
			}else {
				throw new Exception();
			}
		} catch(Exception e) {
			throw new Exception("로그인 오류");
		}
	}


	@Override
	   public boolean memOverlap(String id) throws Exception {
	      Member mem = memberDAO.queryMember(id);
	      if(mem==null) return false;
	      return true;
	   }


@Override
public boolean idOverlap(String id) throws Exception {
	Member mem = memberDAO.queryMember(id);
	if(mem != null) return true;
	return false;
}
}
