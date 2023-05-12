<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

      <section class="home-section home-full-height" id="home">
        <div class="hero-slider">
          <ul class="slides">
            <li class="bg-dark-30 restaurant-page-header bg-dark" style="background-image:url(&quot;images/zero/background1.jpg&quot;);">
              <div class="titan-caption">
                <div class="caption-content">
                  <div class="font-alt mb-30 titan-title-size-1">우리 손에서 시작하는 지구이야기</div>
                  <div class="font-alt mb-40 titan-title-size-4">For better Life? </br> For better Planet! </div>
                    <a class="btn btn-border-w btn-round" href="/board/list">Look Around Product</a>
                </div>
              </div>
            </li>
            <li class="bg-dark-30 restaurant-page-header bg-dark" style="background-image:url(&quot;images/zero/saynoto.png&quot;);">
              <div class="titan-caption">
                <div class="caption-content">
              	<div class="font-alt mb-30 titan-title-size-2">ZERO WASTE를 향한 우리의 발걸음 " say no to plastic "</div><br>
   
                  <a class="btn btn-border-w btn-round" href="/board/list">Look Around Product</a>
                </div>
              </div>
            </li>
            <li class="bg-dark-30 restaurant-page-header bg-dark" style="background-image:url(&quot;images/zero/emain2.jpg&quot;);">
              <div class="titan-caption">
                <div class="caption-content">
                  <div class="font-alt mb-30 titan-title-size-1">지구를 위한 따뜻한 마음을 A-ZERO와 함께 나눠보세요</div>
                  <div class="font-alt mb-40 titan-title-size-3">Be Our Family</div><a class="section-scroll btn btn-border-w btn-round" href="/member/join">Join Us</a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </section>
      <div class="main">
      	<section class="module" id="specialities">
          <div class="container">
            <div class="row">
              <div class="col-sm-2 col-sm-offset-5">
                <div class="alt-module-subtitle"><span class="holder-w"></span>
                  <h5 class="font-serif">Take a look at</h5><span class="holder-w"></span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <h2 class="module-title font-alt">New Product</h2>
              </div>
            </div>
            
            <div class="row multi-columns-row" style="display:flex; flex-wrap:wrap;">
            <c:forEach items="${plist}" var="p">
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
				<input type="hidden" id="product_id" value="${p.product_id}">
					<div class="shop-item-image" onclick="location.href='/board/productDetail?product_id=${p.product_id}';">
					<img src="/resources/productImg/${p.product_img}" alt=""/>
                  	</div>
                  	<h2 class="shop-item-title font-alt"><a href="/board/productDetail?product_id=${p.product_id}" >${p.product_name}</a></h2>
				</div>

              </div>
            </c:forEach>
            </div>
          </div>
        </section>
        <hr class="divider-w">
        <section class="module" id="services">
          <div class="container">
            <div class="row">
              <div class="col-sm-2 col-sm-offset-5">
                <div class="alt-module-subtitle"><span class="holder-w"></span>
                  <h5 class="font-serif">For your comfort</h5><span class="holder-w"></span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <h2 class="module-title font-alt">Our Services</h2>
              </div>
            </div>
            <div class="row multi-columns-row">
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-clock"></span></div>
                  <h3 class="features-title font-alt">영업일시</h3>A-ZERO 쇼핑몰은 평일 오전 9시부터 오후 6시까지 고객센터를 운영하고 있습니다. <br>고객님의 따뜻한 메세지는 언제나 저희에게 힘이 됩니다. 
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-streetsign"></span></div>
                  <h3 class="features-title font-alt">주차 안내</h3>고객전용 주차장이 있으며 매장 방문 시 1시간 무료입니다. 
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-map"></span></div>
                  <h3 class="features-title font-alt">매장 안내</h3>부산광역시 부산진구 중앙대로708 부산파이낸스센터 빌딩 4~5층 운영시간 : 오전 9:00 ~ 오후 6:00
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-heart"></span></div>
                  <h3 class="features-title font-alt">품질보증</h3>본 사이트는 A-ZERO 본사 공식 판매처 입니다. 사이트 내 판매되는 모든 제품은 본사에서 출고되는 정품임을 보증합니다.
                </div>
              </div>
            </div>
          </div>
        </section>        
        <section class="module module-video bg-dark-30" data-background="/images/restaurant/coffee_bg.png">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt mb-0">make your every single day more eco-friendly!</h2>
              </div>
            </div>
          </div>
          <div class="video-player" data-property="{videoURL:'https://www.youtube.com/watch?v=fF3nHJGNVIY', containment:'.module-video', startAt:3, mute:true, autoPlay:true, loop:true, opacity:1, showControls:false, showYTLogo:false, vol:25}"></div>
        </section>
            

<%@ include file="include/footer.jsp" %>