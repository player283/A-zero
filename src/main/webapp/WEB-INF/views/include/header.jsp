<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>A-Zero | 친환경 쇼핑몰</title>

<!-- 로고 변경 -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/images/favicons/logo2.png">
	
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="/images/favicons/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- Default stylesheets-->
<link href="/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Template specific stylesheets-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Volkhov:400i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link href="/lib/animate.css/animate.css" rel="stylesheet">
<link href="/lib/components-font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/lib/et-line-font/et-line-font.css" rel="stylesheet">
<link href="/lib/flexslider/flexslider.css" rel="stylesheet">
<link href="/lib/owl.carousel/dist/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="/lib/owl.carousel/dist/assets/owl.theme.default.min.css"
	rel="stylesheet">
<link href="/lib/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet">
<link href="/lib/simple-text-rotator/simpletextrotator.css"
	rel="stylesheet">
<!-- Main stylesheet and color file-->
<link href="/css/style.css" rel="stylesheet">
<link id="color-scheme" href="/css/colors/default.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="style.css">

</head>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<body data-spy="scroll" data-target=".onpage-navigation"
	data-offset="60">
	<main>
		<div class="page-loader">
			<div class="loader">Loading...</div>
		</div>
		<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target="#custom-collapse">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/index">A-Zero</a>
				</div>
				<div class="collapse navbar-collapse" id="custom-collapse">
					<ul class="nav navbar-nav navbar-right">

						<li style="padding-top: 15px">
							<form class="form" action="/board/search" id="searchFrm">

								<div class="form-group mx-sm-3 mb-2" style="margin: -10px">

									<input type="text" class="form-control-search" placeholder=""
										name="keyword" value="${keyword}">
									<button type="submit" class="searchBtn">
										<i class="fas fa-search"></i>
									</button>

								</div>
							</form>
						</li>

						<li class="dropdown"><a class="dropdown-toggle"
							href="/board/list" data-toggle="dropdown">상품 카테고리</a>
							<ul class="dropdown-menu">
								<li class="dropdown"><a class="dropdown-toggle" href="#"
									data-toggle="dropdown">식품</a>
									<ul class="dropdown-menu">
										<li><a href="/board/list/cate?cate=101">일반</a></li>
										<li><a href="/board/list/cate?cate=102">비건</a></li>
									</ul></li>
								<li class="dropdown"><a class="dropdown-toggle" href="#"
									data-toggle="dropdown">리빙</a>
									<ul class="dropdown-menu">
										<li><a href="/board/list/cate?cate=201">생활</a></li>
										<li><a href="/board/list/cate?cate=202">주방</a></li>
									</ul></li>
							</ul></li>

						<sec:authorize access="isAnonymous()">
							<li class="dropdown"><a class="dropdown-toggle" href="/member/loginForm"
								data-toggle="dropdown">로그인</a>
								<ul class="dropdown-menu" role="menu">
					
									<li><a href="/member/join">회원가입</a></li>
								</ul></li>
						</sec:authorize>
						
						<sec:authorize access="isAuthenticated()">
							<li class="dropdown"><a class="dropdown-toggle"
								href="/member/logout">로그아웃 (<sec:authentication
										property="principal.member.member_id" />)
							</a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								href="/member/myPage" data-toggle="dropdown">마이페이지</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/member/memberUpdateView">내정보수정</a></li>
									<li><a href="/board/cartList">장바구니</a></li>
								</ul></li>
						</sec:authorize>

						<li class="dropdown"><a class="dropdown-toggle" href="/board/qna/qnaBoard"
							data-toggle="dropdown">고객센터</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/board/qna/qnaBoard">QnA</a></li>
							</ul></li>

						<sec:authorize access="hasRole('ROLE_MEMBER')">
							<li><a href="/board/cartList"> <svg
										xmlns="http://www.w3.org/2000/svg" width="20" height="20"
										fill="currentColor" class="bi bi-cart-check"
										viewBox="0 0 16 16">
							  <path
											d="M11.354 6.354a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
							  <path
											d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
							</svg></a></li>
						</sec:authorize>


						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li class="dropdown"><a class="dropdown-toggle" href="#"
								data-toggle="dropdown">관리자 페이지</a>
								<ul class="dropdown-menu">
									<li><a href="/admin/memberManage">회원 관리</a></li>
									<li><a href="/admin/adminProductList">상품 관리</a></li>
									<li><a href="/admin/adminOrderList">주문 관리</a></li>
								</ul></li>
						</sec:authorize>
					</ul>
				</div>
			</div>
		</nav>