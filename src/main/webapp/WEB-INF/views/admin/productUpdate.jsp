<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>

<section class="module">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<h2>상품 수정</h2>
				<hr class="divider-w mt-10 mb-20">
				<form id="product_form" class="form" role="form"
					action="/admin/pUpdate" method="post" enctype="multipart/form-data">

					<div class="form-group">

						<a class="gallery"
							href="/resources/productImg/${product.product_img}"><img
							src="/resources/productImg/${product.product_img}"
							alt="Single Product Image" /></a>
						<ul class="product-gallery">
							<li><a class="gallery"
								href="/resources/productImg/${product.product_img}"></a>
						</ul>

						<label>상품명:</label> <input type="hidden" name="product_id"
							id="product_id" value="${product.product_id}" /> <input
							class="form-control" type="text" id="product_name"
							name="product_name" value="${product.product_name}" />
					</div>
				

				<!-- 	<div class="form-group">
						<label>카테고리:</label> 
						<select class="category1" name="categorycode_ref" id="category_code" >
							<option value="">전체</option>
						</select> 
						<select class="category2" name="category_code" id="category_code">
							<option value="">전체</option>
						</select>
					</div> -->
		

						<div class="form-group">
						<label>카테고리:</label> 
						
						<select class="category1" name="categorycode_ref" id="category_code">
							<c:choose>
							<c:when test="${product.categorycode_ref == 100}">
							<option value="${product.categorycode_ref}" selected>식품</option>
							</c:when>
							<c:otherwise>
							<option value="${product.categorycode_ref}" selected>리빙</option>
							</c:otherwise>
							</c:choose>
						</select> 
						<select class="category2" name="category_code" id="category_code">
							<c:if test="${product.category_code == 101}">
							<option value="${product.category_code}" selected>일반</option>
							</c:if>
							<c:if test="${product.category_code == 102}">
							<option value="${product.category_code}" selected>비건</option>
							</c:if>
							<c:if test="${product.category_code == 201}">
							<option value="${product.category_code}" selected>생활</option>
							</c:if>
							<c:if test="${product.category_code == 202}">
							<option value="${product.category_code}" selected>주방</option>
							</c:if>
						</select>
					</div>

				
					<div class="form-group">
						<label>가격:</label> <input class="form-control" type="text"
							id="product_price" name="product_price"
							value="${product.product_price}" />
					</div>
					<div class="form-group">
						<label>상품 정보:</label>
						<textarea class="form-control" rows="7" id="product_des"
							name="product_des">${product.product_des}</textarea>
					</div>
					<div class="form-group">
						<label for="fileUpload">상품 이미지:</label> <input type="file"
							class="form-control" id="product_img" name="uploadFile" multiple>
						<input type="hidden" name="product_img"
							value="${product.product_img}">
						<div class="select_img">
							<img src="">
						</div>

					</div>

					<div class="form-group" name="taste">
						<label>상품 분류명: </label>

						<div>
							<%
							String[] arr = {"식품일반", "식품비건", "리빙생활", "리빙주방"};
							request.setAttribute("taste", arr);
							%>

							<c:forEach var="taste" items="${taste}">
								<c:choose>
									<c:when test="${product.product_taste eq taste}">
        								${taste} <input type="checkbox" name="product_taste"
											id="product_taste" value="${taste}" checked />
										&emsp;
									</c:when>
									<c:otherwise>
		 								 ${taste} <input type="checkbox" name="product_taste"
											id="product_taste" value="${taste}" />
										&emsp;
									</c:otherwise>
								</c:choose>
							</c:forEach>

						</div>
					</div>
					
					<div class="form-group">
						<label>검색 키워드: </label>
						<div>
							<input type="text" name="product_origin"
								value="${product.product_origin }" id="product_origin" />
						</div>
					</div>

					<button type="submit" class="btn btn-d btn-round"
						id="productRegBtn">수정</button>
					<button type="button" class="btn btn-d btn-round"
						id="adminProductListBtn"
						onclick="location.href='/admin/adminProductList'">목록으로</button>
				</form>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script type="text/javascript">
var jsonData = JSON.parse('${category}');
console.log(jsonData);

var cate1Arr = new Array();
var cate1Obj = new Object();

// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {
 
if(jsonData[i].categorycode_ref == "") {
  cate1Obj = new Object();  //초기화
  cate1Obj.category_code = jsonData[i].category_code;
  cate1Obj.category_name = jsonData[i].category_name;
  cate1Arr.push(cate1Obj);
 }
}

// 1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.category1")

for(var i = 0; i < cate1Arr.length; i++) {
 cate1Select.append("<option value='" + cate1Arr[i].category_code + "'>"
      + cate1Arr[i].category_name + "</option>"); 
}


//2차분류
$(document).on("change", "select.category1", function(){

	 var cate2Arr = new Array();
	 var cate2Obj = new Object();
	 
	 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	 for(var i = 0; i < jsonData.length; i++) {
	  
	  if(jsonData[i].categorycode_ref != "" ) {
	   cate2Obj = new Object();  
	   cate2Obj.category_code = jsonData[i].category_code;
	   cate2Obj.category_name = jsonData[i].category_name;
	   cate2Obj.categorycode_ref = jsonData[i].categorycode_ref;
	   
	   cate2Arr.push(cate2Obj);
	  }
	 }


	 var cate2Select = $("select.category2");
	 cate2Select.children().remove();

	 $("option:selected", this).each(function(){
	  
	  var selectVal = $(this).val();  
	  cate2Select.append("<option value='" + selectVal + "'>전체</option>");
	  
		for(var i = 0; i < cate2Arr.length; i++) {
			if(selectVal == cate2Arr[i].categorycode_ref) {
				cate2Select.append("<option value='" + cate2Arr[i].category_code + "'>"
				     + cate2Arr[i].category_name + "</option>");
	    	}
		} 
	});
});

	// 썸네일
	$("#product_img").change(
			function() {
				if (this.files && this.files[0]) {
					var reader = new FileReader;
					reader.onload = function(data) {
						$(".select_img img").attr("src", data.target.result)
								.width(100);
					}
					reader.readAsDataURL(this.files[0]);
				}
			});

	$(function() {
		$('#productRegBtn').click(
				function() {
					if (!$('#product_name').val()) {
						alert('상품명을 입력하세요');
						$('#product_name').focus();
						return false;
					}
					if (!$('#category_code').val()) {
						alert('카테고리를 선택하세요');
						return false;
					}
					if (!$('#product_price').val()) {
						alert('가격을 입력하세요');
						$('#product_price').focus();
						return false;
					}
					if (!$('#product_des').val()) {
						alert('상품 정보를 입력하세요');
						$('#product_des').focus();
						return false;
					}
					if ($("input:checkbox[name='product_taste']")
							.is(":checked") == false) {
						alert('상품분류명을 선택하세요');
						return false;
					}
					
					if (!$('#product_origin').val()) {
						alert('검색 키워드를 입력하세요');
						$('#product_origin').focus();
						return false;
					}
					
					
					/* 
					$('#product_form').submit(); */
				});
	});
</script>

