<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>


<%@ include file="../include/header.jsp"%>

<!-- Start Best Seller -->
<div class="main">
	<section class="module bg-dark-60 shop-page-header"
		data-background="/images/zero/product1.jpg">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h2 class="module-title font-alt">Eco-friendly</h2>
					<div class="module-subtitle font-serif">
						죄송하지만 새 종이백은 없습니다.<br>
						A-ZERO와 함께 환경을 위한 불편함에 도전하세요!
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="module-small">
		<div class="container">
			<form class="row" method="post" action="/board/list/cate">
				<div class="col-sm-3">
					<button class="btn btn-block btn-round btn-g" type="button"
						name="category_code" value="101"
						onclick="location.href='/board/list/cate?cate=101'">식품 일반</button>
				</div>
				<div class="col-sm-3">
					<button class="btn btn-block btn-round btn-g" type="button"
						name="category_code" value="102"
						onclick="location.href='/board/list/cate?cate=102'">식품 비건</button>
				</div>
				<div class="col-sm-3">
					<button class="btn btn-block btn-round btn-g" type="button"
						name="category_code" value="201"
						onclick="location.href='/board/list/cate?cate=201'">리빙 생활</button>
				</div>
				<div class="col-sm-3">
					<button class="btn btn-block btn-round btn-g" type="button"
						name="category_code" value="202"
						onclick="location.href='/board/list/cate?cate=202'">리빙 주방</button>
				</div>
			</form>
		</div>
	</section>
</div>
<hr class="divider-w">

<section class="module-small">
	<div class="container">
		<div class="row multi-columns-row" style="display: flex; flex-wrap: wrap;">

			<!-- single product -->
			<c:forEach items="${list}" var="list">
				<div class="col-sm-6 col-md-4 col-lg-4" style="position: relative;">
					<div class="shop-item">
						<input type="hidden" id="product_id" value="${list.product_id}">

						<div class="shop-item-image"
							 onclick="location.href='/board/productDetail?product_id=${list.product_id}&pageNum=${page.currentPage}&field=${field}&word=${word}';">
							<img src="/resources/productImg/${list.product_img}" />
						</div>
						<h2 class="shop-item-title font-alt">
							<a class="product_name"
								href="/board/productDetail?product_id=${list.product_id}&pageNum=${page.currentPage}&field=${field}&word=${word}">${list.product_name}</a>
						</h2>
						<h5>
							<fmt:formatNumber value="${list.product_price}"
								pattern="###,###,###" /> 원
						</h5>

					</div>

					<div style="display: flex; position: absolute; bottom: 120px; right: 30px;">
						<div
							style="text-align: center; border-radius: 50%; border: 1px solid rgba(0, 0, 0, 0.2);"
							class="button-cart">
							<a class="btn" href="#" onclick="func(${list.product_id})" id="cartBtn"> 
								<svg xmlns="http://www.w3.org/2000/svg"
									 width="16" height="16" fill="rgba(0,0,0,0.3)"
									 class="bi bi-cart-plus" viewBox="0 0 16 16">
										  <path
											d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z" />
										  <path
											d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
								</svg>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

<!-- End Best Seller -->
<section class="module-small">
	<div class="container">
		<div class="col-sm-8 col-sm-offset-2 paginationblock">
			<div>
				<ul class="pagination ">
					<!-- 이전 -->
					<c:if test="${page.startPage > page.blockSize}">
						<li class="page-item"><a class="page-link"
							href="/board/list?pageNum=${page.startPage - page.blockSize}&field=${field}&word=${word}">Previous</a></li>
					</c:if>
					<!--페이지 리스트-->
					<c:forEach begin="${page.startPage}" end="${page.endPage}" var="i">
						<li class="page-item"><a class="page-link"
							href="list?pageNum=${i}&field=${field}&word=${word}">${i+1}</a></li>
					</c:forEach>
					<!-- 다음 -->
					<c:if test="${page.endPage < page.totPage}">
						<li class="page-item"><a class="page-link"
							href="list?pageNum=${page.endPage + 1}&field=${field}&word=${word}">Next</a></li>
					</c:if>
				</ul>
			</div>
			<form class="form" action="/board/list" id="searchFrm">
				<select name="field" class="form">
					<option value="" disabled selected>--</option>
					<option value="product_name"
						${(field == 'product_name') ? 'selected' : ''}>제품명</option>
					<option value="product_origin"
						${(field == 'product_origin') ? 'selected' : ''}>키워드</option>
				</select> <input type="text" class="form-control-search"
					placeholder="Enter Search" name="word" value="${word}">
				<button type="submit" class="btn btn-d btn-round">Search</button>
			</form>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>

<!-- js -->
<jsp:include page="../include/js.jsp" />

<script>
//카트담기
function func(product_id) {
var qty = 1;
var data = {
		product_id : product_id,
		qty : qty
		};

$.ajax({
	url : "/addCart",
	type : "post",
	data : data,
	success : function(result){
		if(result==1){
			alert("상품을 장바구니에 담았습니다");
			$("#sst").val(qty);
		}else if(result==2){
			alert("이미 장바구니에 담았습니다");
		}else{
			alert("로그인 해주세요");
		} 
	}, 
	error : function(){
		alert("장바구니에 담는데 실패했습니다.");
	}
}); 

}
</script>