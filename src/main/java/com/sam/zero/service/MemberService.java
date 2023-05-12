package com.sam.zero.service;

import com.sam.zero.domain.Member;

public interface MemberService {
	// 회원가입
		public void join(Member member);

		// 중복체크
		public int idCheck(String member_id);

		// 회원수정
		public void update(Member member);

		// 회원삭제
		public void delete(String member_id);
		//principal login
		public Member getMemberById(String member_id);
		 //이메일 체크
		public int emailCheck(String email);
		
		public Member pwCheck(String password);
		
		public Member getEnabledById(String member_id);
}
