<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<section class="module">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h2>리뷰 작성</h2>
				<hr class="divider-d mt-8 mb-40 ">
				<h3>주문 현황</h3>
				<hr class="divider-w mt-8 mb-20">
				<table class="table  table-border ">

					<thead>
						<tr>
							<th style="display:none;"></th>
							<th style="display:none;"></th>
							<th style="display:none;"></th>
							<th style="display:none;"></th>
							<th style="display:none;"></th>
						</tr>
					</thead>
					<tbody>
						
						<c:forEach var="i" begin="0" end="${fn:length(orderD)}">
							<tr>
								<td colspan="4">${pInfo[i].product_name}</td>
								<td>
								<c:choose>
									<c:when test="${order.status eq '배송완료' && rcList[i] == 0}">
										<button type="button" id="rRegBtn" class="btn btn-d btn-round" onclick="location.href='/reviewRegist/${pInfo[i].product_id}/${order.order_id}'">리뷰 작성하기</button>
									</c:when>
									<c:when test="${order.status eq '배송완료' && rcList[i] != 0}">
										<button type="button" class="btn btn-d btn-round" disabled>리뷰 작성완료</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-d btn-round" disabled>주문처리/배송중</button>
									</c:otherwise>
								</c:choose>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>

<script>

</script>
<%@ include file="../include/footer.jsp"%>