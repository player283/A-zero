package com.sam.zero.domain;

import lombok.Data;

@Data
public class OrderDetail {
	private Long detail_id;		// 주문 상세 번호
	private Long detail_qty;	// 주문량
	private int product_id;		// 상품 번호
	private String order_id;	// 주문 번호
}
