package com.sam.zero.domain;

import lombok.Data;

@Data
public class Review_Board {
	private Long review_id;		// 리뷰 번호
	private String content;		// 리뷰 내용
	private int rating;			// 상품 별점
	private String member_id;	// 멤버 아이디
	private int product_id;		// 상품 번호
	private String order_id;	// 주문 번호
}
