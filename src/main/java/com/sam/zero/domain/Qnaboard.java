package com.sam.zero.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Qnaboard {
	private Long board_id;		// 게시글 번호
		
	private Long board_re_ref;	 
	private Long board_re_lev;  
	private Long board_re_seq;	

	private String subject;		// 게시글 제목
	private String content;		// 게시글 내용
	private Date regdate;		// 등록일자
	private String status;		// = null
	private String member_id;	// 멤버 아이디
	private String password;
}
