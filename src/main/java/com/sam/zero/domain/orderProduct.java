package com.sam.zero.domain;

import lombok.Data;

@Data
public class orderProduct {
	private OrderDetail orderDetails;
	private Product product; 

}
