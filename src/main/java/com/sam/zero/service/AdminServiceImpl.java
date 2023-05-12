package com.sam.zero.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sam.zero.domain.Category;
import com.sam.zero.domain.Member;
import com.sam.zero.domain.Order;
import com.sam.zero.domain.Product;
import com.sam.zero.domain.TestVO;
import com.sam.zero.domain.Uploadfile;
import com.sam.zero.mappers.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminMapper adminMapper;
	
	// 회원 리스트 출력
	@Override
	public List<Member> getMemberList() {
		return adminMapper.getMemberList();
	}
	
	// 회원 한 명 가져오기
	@Override
	public Member getMember(Long id) {
		return adminMapper.getMember(id);
	}
	
	// 가져온 회원 한 명 삭제하기
	@Override
	public void mDelete(Member member) {
		adminMapper.mDelete(member);
	}
	
	// 전체 상품 리스트 출력
	@Override
	public List<Product> getAdminProductList() {
		return adminMapper.getAdminProductList();
	}
	
	// 상품 등록
	@Override
	public void pRegist(Product product) {
		adminMapper.pRegist(product);
	}

	@Override
	public List<Category> category() {
//		List<Category> category = adminMapper.category();
//		for(int i=0; i< category.size(); i++) {
//			System.out.println("zz" + category.get(i));
//		}
		return adminMapper.category();
	}

	@Override
	public void pDelete(Product product) {
		adminMapper.pDelete(product);
	}

	@Override
	public Product getProduct(int id) {
		return adminMapper.getProduct(id);
	}

	@Override
	public List<Product> findPage(HashMap<String, Object> hm) {
		//System.out.println("==============="+hm.get("word"));
		return adminMapper.findPage(hm);
	}

	@Override
	public List<Product> findAll(HashMap<String, Object> hm) {
		//System.out.println("==============="+hm.get("word"));
		return adminMapper.findAll(hm);
	}

	@Override
	public int productCount(HashMap<String, Object> hm) {
		return adminMapper.productCount(hm);
	}

	
	@Override
	public List<Member> mfindPage(HashMap<String, Object> hm) {
		return adminMapper.mfindPage(hm);
	}

	@Override
	public List<Member> mfindAll(HashMap<String, Object> hm) {
		return adminMapper.mfindAll(hm);
	}

	@Override
	public int memberCount(HashMap<String, Object> hm) {
		return adminMapper.memberCount(hm);
	}

	@Override
	public Category categoryName(String category_code) {
		return adminMapper.categoryName(category_code);
	}

	@Override
	public void pUpdate(Product product) {
		System.out.println("AdminService ~~~~~~~~~~~");
		System.out.println(product);
		//Product p1=adminMapper.getProduct(product.getProduct_id());
	
		adminMapper.pUpdate(product);
	}

	@Override
	public List<Product> testResult(TestVO testVO) {
		return adminMapper.testResult(testVO);
	}
	
	@Override
	public List<Order> orderListAll() {
		return adminMapper.orderListAll();
	}
	
	@Override
	public void orderStatusUpdate(Order order) {
		adminMapper.orderStatusUpdate(order);
	}

	@Override
	public List<Order> ofindPage(HashMap<String, Object> hm) {
		return adminMapper.ofindPage(hm);
	}

	@Override
	public List<Order> ofindAll(HashMap<String, Object> hm) {
		return adminMapper.ofindAll(hm);
	}

	@Override
	public int orderCount(HashMap<String, Object> hm) {
		return adminMapper.orderCount(hm);
	}
	
	@Override
	public void orderTrackingUpdate(Order order) {
		adminMapper.orderTrackingUpdate(order);
	}

}
