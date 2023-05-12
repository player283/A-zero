package com.sam.zero.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private Long id;				// 멤버 번호
	private String email;			// 이메일	
	private String member_addr1;	// 우편번호
	private String member_addr2;	// 주소
	private String member_addr3;	// 상세주소
	private String member_id;		// 멤버 아이디
	private String member_name;		// 멤버 이름
	private String password;		// 비밀번호	
	private Date regdate;			// 등록일자
	private String role;			// 등급(관리자/멤버)
	private String member_phone;	// 멤버 연락처
	private boolean enabled;
	
}
