package com.sam.zero.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Product {
	private int product_id;			// 상품 아이디
	private String product_des;		// 상품 상세설명
	private String product_img;		// 상품 이미지
	private String product_name;	// 상품 이름
	private String product_price;	// 상품 가격
	private String product_taste;	// 상품 맛
	private String category_code;	// 카테고리 코드(101,102,201,202)
	private String categorycode_ref;// 대표 카테고리(100,200)
	private String product_origin;	// 상품 원산지
	
	private MultipartFile uploadFile; // 상품 사진
}
