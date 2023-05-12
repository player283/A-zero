package com.sam.zero.domain;

import java.util.Date;

import lombok.Data;
@Data
public class Order {
	private String order_id;	// 주문 번호
	private String order_addr1;	// 주문자 우편번호
	private String order_addr2;	// 주문자 주소
	private String order_addr3;	// 주문자 상세주소
	private Date order_date;	// 주문일자
	private String order_name;	// 주문자 이름
	private String order_phone;	// 주문자 연락처
	private String order_title;	// 주문 대표 상품
	private String payment;		// 결제수단(카드일 경우 주문금액/cash)
	private String status;		// 주문 상태
	private Long total_amount;	// 주문 총 금액
	private String tracking;	// 운송장번호
	private String member_id;	// 주문자 아이디
	
	
}
