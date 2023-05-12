package com.sam.zero.domain;

import java.util.Date;

import lombok.Data;
@Data
public class Cart {
	private Long cart_id;		// 카트 아이디
	private Long qty;			// 수량
	private Date regdate;		// 등록일자
	private String member_id;	// 멤버 아이디	
	private int product_id;		// 상품 아이디
	
}