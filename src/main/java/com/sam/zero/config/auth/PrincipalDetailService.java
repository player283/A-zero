package com.sam.zero.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.sam.zero.domain.Member;
import com.sam.zero.mappers.MemberMapper;

@Service
public class PrincipalDetailService implements UserDetailsService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	
	@Override
	public UserDetails loadUserByUsername(String member_id) throws UsernameNotFoundException {
		//PrincipalDetails members= memberMapper.getMemberById(member_id);
		Member member = memberMapper.getMemberById(member_id);
		if(member == null) {
			return null;
		}
		PrincipalDetails pmember= new PrincipalDetails(member);
		System.out.println(pmember);
		return pmember;
	}
	
	

	

}
