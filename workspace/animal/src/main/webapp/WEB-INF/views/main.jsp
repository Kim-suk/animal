<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>
<html lang="ko">
<head>
<!-- slick slider CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- slick slider JS -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
	<meta property="og:image" content="/img/common/img_web.png">
	
	<title>네오오토 NEOOTO</title>
	<meta name="title" content="네오오토 NEOOTO" />
	<meta name="author" content="" />
	<meta name="keywords" content="" />
	<meta name="subject" content=""/>
	<meta name="description" content="" />
	<meta name="copyright" content="" />
	<meta name="content-language" content="" />
	<meta property="og:type" content="website">
	<meta property="og:title" content="네오오토 NEOOTO">
	<meta property="og:site_name" content="네오오토 NEOOTO">
	<meta property="og:description" content="">

	<!-- css block -->
	<link rel="stylesheet" type="text/css" href="/site/css/axj.css" />
	<link rel="stylesheet" type="text/css" href="/site/css/AXButton.css" />
	<link rel="stylesheet" type="text/css" href="/site/css/site.css?d=20250413" />
	<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.css">
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
	
	<!-- js block -->
	<script type="text/javascript" src="//code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/ui/1.13.3/jquery-ui.min.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.min.js"></script>
	<script type="text/javascript" src="/site/js/common.js?d=20250413"></script>
	<script type="text/javascript" src="/site/api/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="/site/api/kcaptcha/kcaptcha.js" charset="utf-8"></script>

	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.0/css/OverlayScrollbars.css">
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.0/js/OverlayScrollbars.js"></script>
	<script src="/animal/resources/js/slick.js"></script>
	<script src="/animal/resources/js/common.js?v=250413024730"></script>
	<script src="/animal/resources/js/swiper.min.js"></script>
	<script src="/animal/resources/js/OverlayScrollbars.js"></script>

	<link rel="stylesheet" href="/animal/resources/css/base.css?v=250413024730">
	<link rel="stylesheet" href="/animal/resources/css/OverlayScrollbars.css">
	<link rel="stylesheet" href="/animal/resources/css/common.css?v=250413024730">
	<link rel="stylesheet" href="/animal/resources/css/animation.css?v=250413024730">
	<link rel="stylesheet" href="/animal/resources/css/swiper.css">
	<link rel="stylesheet" href="/animal/resources/css/slick.css">
	<link rel="stylesheet" href="/animal/resources/css/slide.css">
	
	<script src="/animal/resources/js/jquery.fullPage.min.js?v=250413024730"></script>
	<script src="/animal/resources/js/scrolloverflow.min.js"></script>
	<script src="/animal/resources/js/main.js?v=250413024730"></script>
	<link rel="stylesheet" href="/animal/resources/css/fullpage.css?v=250413024730">
	<link rel="stylesheet" href="/animal/resources/css/main.css?v=250413024730">
	<!--[if lt IE 9]>
	<script src="/js/html5shiv.js"></script>
	<![endif]-->
	<script>
		var windowWidth = window.screen.width
		setViewPort(windowWidth);
		function setViewPort(w_width) {
			if (w_width <= 380) {
				$("meta[name=viewport]").attr("content", "width=400, maximum-scale=2.0, user-scalable=yes, target-densitydpi=medium-dpi");
			} else {
				$("meta[name=viewport]").attr("content", "width=device-width, initial-scale=1.0, maximum-scale=2.0, minimum-scale=1.0, user-scalable=yes, target-densitydpi=medium-dpi");
			}
		}
		$(window).resize(function(){
			var windowWidth = window.screen.width
			setViewPort(windowWidth);
		});
	</script>
	<script type="text/javascript"> 
		if(/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) {
		  window.location = 'microsoft-edge:' + window.location;
		  setTimeout(function() {
		    window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
		  }, 1);
		}
	</script>
	
</head>
<body>

	<!-- wrap -->
	<div id="wrap" class="mainbody">
		<!-- header -->

		<header >
			<div class="inner1720">
			<h1><a href="/kr/"><img src="/img/common/img_logo.svg" class="svg" alt="OTO"></a></h1>

				<nav id="navi">
					<div id="gnb">
						<div class="arr"></div>
						<ul>
							<li class="">
								<a href="${contextPath }/main.do">HOME</a>

							</li>
							<li class="">
								<a href="#">HOSPITAL</a>
								<div class="subDepth menu1">
									<ul>	
										<li class="mo over"><a href="${contextPath }/hospital/map.do">지도</a></li>
										<li ><a href="${contextPath }/hospital/review.do">리뷰</a></li>
									</ul>
								</div>
							</li>
							<li class="">
								<a href="#">CAT</a>
								<div class="subDepth menu2">
									<ul>	
										<li class="mo over"><a href="${contextPath }/cat/cat_type.do">묘종</a></li>
										<li ><a href="${contextPath }/cat/cat_kitten.do">어린 고양이</a></li>
										<li ><a href="${contextPath }/cat/cat_think.do">고양이를 기를까 생각중이신가요?</a></li>
										
									</ul>
								</div>
							</li>
							<li class="">
								<a href="#">DOG</a>
								<div class="subDepth menu3">
									<ul>	
										<li class="mo over"><a href="${contextPath }/dog/dog_type.do">품종</a></li>
										<li ><a href="${contextPath }/dog/dog_kitten.do">어린 강아지</a></li>
										<li ><a href="${contextPath }/dog/dog_think.do">강아지를 기를까 생각중이신가요?</a></li>
										
									</ul>
								</div>
							</li>
							<li class="">
								<a href="/kr/sub/esg/management/sustainability.php">ARTICLE</a>
								<div class="subDepth menu4">
									<ul>
										<li ><a href="${contextPath}/board/Board.do">자유 게시판</a></li>
										<li ><a href="${contextPath}/board/CatBoard.do">고양이 게시판</a></li>
										<li ><a href="${contextPath}/board/DogBoard.do">강아지 게시판</a></li>
									</ul>
								</div>
							</li>
							<li class="">
								<a href="#">DOG PRODUCT</a>
								<div class="subDepth menu5">
									<ul class="submenu">
						<li><a href="${contextPath }/dog_product/dog_all.do">전체</a></li>
						<li><a href="${contextPath }/dog_product/dog_feed.do">사료</a></li>
						<li><a href="${contextPath }/dog_product/dog_treat.do">간식</a></li>
						<li><a href="${contextPath }/dog_product/dog_poop.do">배변용품</a></li>
						<li><a href="${contextPath }/dog_product/dog_carrier.do">이동장</a></li>
						<li><a href="${contextPath }/dog_product/dog_toy.do">장난감</a></li>
						<li><a href="${contextPath }/dog_product/dog_bath.do">목욕용품</a></li>
						<li><a href="${contextPath }/dog_product/dog_house.do">하우스</a></li>
						<li><a href="${contextPath }/dog_product/dog_dish.do">식기</a></li>
					</ul>
								</div>
							</li>
							<li class="">
								<a href="#">CAT PRODUCT</a>
								<div class="subDepth menu6">
									<ul class="submenu">
						<li><a href="${contextPath }/cat_product/cat_all.do">전체</a></li>
						<li><a href="${contextPath }/cat_product/cat_feed.do">사료</a></li>
						<li><a href="${contextPath }/cat_product/cat_treat.do">간식</a></li>
						<li><a href="${contextPath }/cat_product/cat_sand.do">모래</a></li>
						<li><a href="${contextPath }/cat_product/cat_carrier.do">이동장</a></li>
						<li><a href="${contextPath }/cat_product/cat_toy.do">장난감</a></li>
						<li><a href="${contextPath }/cat_product/cat_bath.do">목욕용품</a></li>
						<li><a href="${contextPath }/cat_product/cat_house.do">하우스</a></li>
						<li><a href="${contextPath }/cat_product/cat_dish.do">식기</a></li>
					</ul>
								</div>
							</li>
						</ul>
					</div>

				</nav>
					
				<div class="top-menu">
					<div class="language">
						<a href=""><img src="/img/common/btn_lang.svg" class="svg" alt=""></a>
						<!-- <ul>
							<li class="on"><a href="">KR</a></li>
							<li><a href="">EN</a></li>
						</ul> -->
					</div>
					<div class="search-btn"><a href="/kr/sub/search/result.php"><img src="/img/common/btn_search.svg" class="svg" alt="search"></a></div>
					<div class="allBox"><div class="allmenu"><a href="javascript:void(0);"><span></span></a></div></div>
				</div>

			</div>

			<div class="gnb_bg"></div>
		
		</header>
		<!-- //header -->


		<div id="allmenuBox">
			<div class="lang"></div>
			<div class="top">
				<h2>SITEMAP</h2>
				<button class="menuClose"><i class="xi-close"></i></button>
			</div>
			<div class="menuBox"></div>
		</div>
		
	<article class="main">

		<!-- visual -->
		<section class="section main1">
			<div id="visual">
				<div class="visual swiper-container">
					<div class="swiper-wrapper">
													<div class="swiper-slide slide1" data-page="1"><!-- data-swiper-autoplay="13000"-->
								<div class="mov">
									<video loop muted playsinline data-autoplay preload="auto" id="myVideo">
										<source src="/animal/resources/upload/cat.mp4" type="video/mp4" />
										Your browser does not support HTML5 video.
									</video>
								</div>
								<div class="bg"></div>
								<div class="txtbox">
									<div class="txtCont">
										<div class="txt txt-1 aniTxt1">Best Partner in Mobility</div>
										<div class="txt txt-2"><span>NEOOTO</span></div>
									</div>
								</div>
							</div>
											</div>
	

				</div>
			</div>
		</section>
		<!-- //visual -->
		
		<section class="section main2">
			<div class="company-txt">
				<div class="top ani">
					<div class="txt txt-left"><span>세상을 이롭게</span> </div>
					<div class="txt txt-right"><span>하는 기업,</span> <span class="txt">NEOOTO</span></div>
				</div>
				<div class="txtbox">
					<div class="txt">
						네오오토는 진보적인 기술개발로 <br />
						세계 최고의 모빌리티 제품 공급을 통해 <br />
						인류의 안정과 행복에 기여하겠습니다.
					</div>
					<div class="btn_more">
						<a href="/kr/sub/company/workplace.php">
							<strong>VIEW MORE</strong>
							<span><img src="/img/common/btn_more.svg" alt=""></span>
						</a>
					</div>
				</div>
			</div>
		</section>
		
		<section>
		
 <div class="slider-container">
        <div class="slider-track">
            <!-- 클릭 가능한 박스: 링크로 감싸기 -->
            <a href="reviewDetail.jsp?id=1" class="review-box">
                40대 중반의 회사원이... 너무 예쁜 내 자식같은 홈페이지가요!
                <div class="stars">★★★★★</div>
                <div>Lit****</div>
            </a>
            <a href="reviewDetail.jsp?id=2" class="review-box">
                홈페이지 제작 1시간만에 끝! 진심 이건 추천을...
                <div class="stars">★★★★★</div>
                <div>imc*****</div>
            </a>
            <a href="reviewDetail.jsp?id=3" class="review-box">
                예전에 웹X로 만든 적 있었는데 복잡하고...
                <div class="stars">★★★★★</div>
                <div>임**</div>
            </a>
            <a href="reviewDetail.jsp?id=4" class="review-box">
                사실 컴편 사이트만들려 했는데 솔직히...
                <div class="stars">★★★★★</div>
                <div>익명</div>
            </a>

            <!-- 반복 -->
            <a href="reviewDetail.jsp?id=1" class="review-box">
                40대 중반의 회사원이... 너무 예쁜 내 자식같은 홈페이지가요!
                <div class="stars">★★★★★</div>
                <div>Lit****</div>
            </a>
            <a href="reviewDetail.jsp?id=2" class="review-box">
                홈페이지 제작 1시간만에 끝! 진심 이건 추천을...
                <div class="stars">★★★★★</div>
                <div>imc*****</div>
            </a>
            <a href="reviewDetail.jsp?id=3" class="review-box">
                예전에 웹X로 만든 적 있었는데 복잡하고...
                <div class="stars">★★★★★</div>
                <div>임**</div>
            </a>
            <a href="reviewDetail.jsp?id=4" class="review-box">
                사실 컴편 사이트만들려 했는데 솔직히...
                <div class="stars">★★★★★</div>
                <div>익명</div>
            </a>
        </div>
    </div>
</section>

		<section class="section main3 product-box">
			<div class="inner1720">
				<div class="title-box ani">
					<h3><span>PRODUCT</span></h3>
					<div class="txt txt-right">
						네오오토는 고객에게 친환경차 변감속기 등 최고품질의 모빌리티 제품을 공급하기 위해 <br />
						최신 설비와 유연생산시스템을 통한 개발, 생산, 주문 관리 및 품질관리 부문까지 엄격한 관리를 <br />
						진행하고 있으며 자체 단조, 가공 공정으로 고객이 요구하는 기술과 품질을 보증합니다.
					</div>
				</div>
			</div>
			<div class="productCont ani">
				<div class="inner1720">
					<div class="listbox ani">
						<ul>
							<li>
								<div class="box">
									<a href="/kr/sub/product/new.php">
										<div class="txtbox">
											<div class="stxt">Electric car parts</div>
											<div class="tit">
												<h4>전기차부품</h4>
												<span><img src="/img/common/btn_more.svg" alt=""></span>
											</div>
										</div>
										<div class="imgbox"><img src="/img/main/product_img03.png" alt=""></div>
									</a>
								</div>
							</li> 
							<li>
								<div class="box">
									<a href="/kr/sub/product/eco-friendly.php">
										<div class="txtbox">
											<div class="stxt">Hybrid parts</div>
											<div class="tit">
												<h4>하이브리드부품</h4>
												<span><img src="/img/common/btn_more.svg" alt=""></span>
											</div>
										</div>
										<div class="imgbox"><img src="/img/main/product_img02.png" alt=""></div>
									</a>
								</div>
							</li>
							<li>
								<div class="box">
									<a href="/kr/sub/product/IC-engine.php">
										<div class="txtbox">
											<div class="stxt">Internal combustion engine parts</div>
											<div class="tit">
												<h4>내연기관부품</h4>
												<span><img src="/img/common/btn_more.svg" alt=""></span>
											</div>
										</div>
										<div class="imgbox"><img src="/img/main/product_img01.png" alt=""></div>
									</a>
								</div>
							</li>
						</ul>
					</div>
					<div class="bg-txt">
						<svg width="1697" height="64" viewBox="0 0 1697 64" fill="none" xmlns="http://www.w3.org/2000/svg">
						  <text x="0" y="50%" dominant-baseline="middle">
							NEOOTO WILL NEVER STOP FOR THE FUTURE OF CARS AND THE HAPPINESS OF MANKIND
						  </text>
						</svg>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section main4 global-box">
			<div class="inner1720">
				<div class="title-box ani">
					<h3><span>GLOBAL <br /> BUSINESS</span></h3>
					<div class="txt txt-right">
						네오오토는  최고품질의 제품을 <br />
						오랜 기간 고객에게 공급해 왔습니다
					</div>
				</div>
			</div>
			<div class="global-map ani">
				<div class="gmCont">
					<svg width="1460" height="1402" viewBox="0 0 1460 1402" fill="none" xmlns="http://www.w3.org/2000/svg">
    <ellipse cx="726.5" cy="701" rx="726.5" ry="701" fill="url(#paint0_linear_1009_893)" />
    <g opacity="0.6" clip-path="url(#clip0_1009_893)">
        <path d="M463.722 1246.57C461.359 1246.73 462.504 1249.87 465.058 1252.03C467.494 1254.08 469.812 1254.08 469.548 1252.03C469.255 1249.72 465.879 1246.57 463.722 1246.57Z" fill="#B8AFA3" />
        <path d="M454.755 1246.57C452.407 1246.73 453.787 1249.81 455.915 1251.73C458.322 1253.91 460.787 1254.2 460.699 1252.29C460.596 1250.05 456.986 1246.57 454.755 1246.57Z" fill="#B8AFA3" />
        <path d="M1194.37 1235.33C1193.43 1235.55 1186.29 1241.83 1186.24 1242.49C1186.74 1242.72 1194.39 1236.06 1194.42 1235.36C1194.42 1235.36 1194.39 1235.34 1194.37 1235.34" fill="#B8AFA3" />
        <path d="M456.605 1235.33C454.066 1235.5 455.504 1238.95 457.808 1240.93C460.259 1243.05 462.622 1243.05 462.431 1240.93C462.211 1238.57 458.835 1235.33 456.619 1235.33" fill="#B8AFA3" />
        <path d="M447.388 1235.33C444.879 1235.5 446.405 1238.95 448.739 1240.93C451.219 1243.03 453.552 1243.03 453.288 1240.93C452.994 1238.57 449.575 1235.33 447.388 1235.33Z" fill="#B8AFA3" />
        <path d="M438.656 1235.85C436.587 1236 437.952 1238.94 439.963 1240.64C441.973 1242.34 443.866 1242.44 443.793 1240.87C443.705 1238.89 440.579 1235.85 438.656 1235.85Z" fill="#B8AFA3" />
        <path d="M1208.62 1223.92C1207.8 1224.14 1201.03 1230.35 1200.93 1231C1201.83 1231 1208.59 1224.41 1208.65 1223.94C1208.65 1223.94 1208.64 1223.92 1208.62 1223.92Z" fill="#B8AFA3" />
        <path d="M449.971 1224.33C447.682 1224.48 448.915 1227.49 450.866 1229.24C452.921 1231.06 455.034 1231.06 454.902 1229.24C454.755 1227.12 451.938 1224.33 449.971 1224.33Z" fill="#B8AFA3" />
        <path d="M440.168 1223.78C437.585 1223.95 439.053 1227.49 441.386 1229.53C443.866 1231.69 446.273 1231.69 446.053 1229.53C445.818 1227.11 442.413 1223.76 440.168 1223.78Z" fill="#B8AFA3" />
        <path d="M430.849 1223.78C428.325 1223.95 429.88 1227.5 432.229 1229.53C434.577 1231.55 436.866 1231.7 436.837 1229.81C436.807 1227.43 433.168 1223.76 430.849 1223.76" fill="#B8AFA3" />
        <path d="M1222.71 1211.93C1221.93 1212.17 1215.05 1218.79 1214.86 1219.48C1215.67 1219.48 1222.61 1212.45 1222.72 1211.95C1222.72 1211.95 1222.71 1211.95 1222.7 1211.93" fill="#B8AFA3" />
        <path d="M442.824 1211.93C440.139 1212.11 441.445 1215.75 443.764 1217.85C446.214 1220.06 448.709 1220.06 448.621 1217.85C448.518 1215.35 445.158 1211.93 442.824 1211.93Z" fill="#B8AFA3" />
        <path d="M433.124 1211.93C430.482 1212.11 431.862 1215.75 434.21 1217.85C436.69 1220.06 439.155 1220.06 439.009 1217.85C438.833 1215.35 435.428 1211.93 433.138 1211.93" fill="#B8AFA3" />
        <path d="M423.57 1211.93C420.987 1212.11 422.469 1215.75 424.817 1217.85C427.327 1220.06 429.734 1220.06 429.514 1217.85C429.264 1215.35 425.815 1211.93 423.555 1211.93" fill="#B8AFA3" />
        <path d="M1209.49 1199.81C1208.21 1199.99 1205.06 1203.26 1205.03 1203.3C1202.62 1205.83 1201.75 1207.34 1202.13 1207.53C1203.15 1208.03 1210.25 1200.82 1209.66 1199.9C1209.63 1199.86 1209.55 1199.83 1209.49 1199.83" fill="#B8AFA3" />
        <path d="M436.162 1199.81C433.403 1200 434.489 1203.8 437.292 1206.15C439.816 1208.26 442.193 1207.96 441.914 1205.53C441.621 1202.97 438.451 1199.81 436.162 1199.81Z" fill="#B8AFA3" />
        <path d="M426.226 1199.81C423.511 1200 424.832 1203.71 427.166 1205.84C429.646 1208.12 432.17 1208.12 432.082 1205.84C431.979 1203.3 428.589 1199.8 426.241 1199.81" fill="#B8AFA3" />
        <path d="M416.452 1199.81C413.972 1199.99 414.97 1203.51 417.553 1205.84C420.063 1208.12 422.528 1208.12 422.367 1205.84C422.176 1203.25 418.8 1199.8 416.452 1199.81Z" fill="#B8AFA3" />
        <path d="M1249.04 1187.4C1248.48 1187.63 1241.89 1194.57 1241.55 1195.29C1242.07 1195.29 1248.8 1187.94 1249.05 1187.42C1249.05 1187.42 1249.05 1187.42 1249.05 1187.41" fill="#B8AFA3" />
        <path d="M429.66 1187.4C426.828 1187.59 427.841 1191.48 430.644 1193.88C433.182 1196.05 435.619 1195.73 435.398 1193.25C435.164 1190.62 431.994 1187.4 429.66 1187.4Z" fill="#B8AFA3" />
        <path d="M419.505 1187.4C416.717 1187.59 417.817 1191.48 420.635 1193.88C423.188 1196.04 425.581 1195.72 425.302 1193.25C424.993 1190.62 421.794 1187.4 419.505 1187.4Z" fill="#B8AFA3" />
        <path d="M409.496 1187.4C406.767 1187.59 407.955 1191.48 410.802 1193.88C413.209 1195.92 415.484 1195.76 415.396 1193.57C415.278 1190.92 411.918 1187.4 409.511 1187.4" fill="#B8AFA3" />
        <path d="M1260.59 1174.72C1260.01 1174.97 1253.6 1182.05 1253.28 1182.79C1253.79 1182.79 1260.37 1175.27 1260.59 1174.75V1174.73" fill="#B8AFA3" />
        <path d="M423.321 1174.72C420.209 1174.92 421.618 1179.12 424.172 1181.35C426.667 1183.52 429.205 1183.18 429.044 1180.7C428.868 1178.02 425.713 1174.72 423.321 1174.72Z" fill="#B8AFA3" />
        <path d="M412.93 1174.72C410.127 1174.91 411.155 1178.96 413.928 1181.35C416.482 1183.57 418.947 1183.23 418.712 1180.7C418.463 1178.02 415.278 1174.72 412.93 1174.72Z" fill="#B8AFA3" />
        <path d="M402.716 1174.72C399.972 1174.91 401.102 1178.96 403.876 1181.35C406.4 1183.52 408.851 1183.18 408.557 1180.7C408.234 1178.02 405.02 1174.7 402.716 1174.72Z" fill="#B8AFA3" />
        <path d="M1271.83 1161.74C1271.26 1161.99 1264.99 1169.24 1264.7 1170.01C1265.22 1170.01 1271.62 1162.32 1271.84 1161.77V1161.76" fill="#B8AFA3" />
        <path d="M1246.41 1161.74C1245.15 1161.93 1242.18 1165.44 1242.15 1165.49C1239.63 1168.51 1239.19 1169.84 1239.51 1170.01C1240.54 1170.53 1247.22 1162.81 1246.59 1161.83C1246.56 1161.79 1246.47 1161.74 1246.41 1161.74Z" fill="#B8AFA3" />
        <path d="M1242.24 1161.74C1240.89 1161.93 1237.96 1165.44 1237.93 1165.49C1235.42 1168.51 1235.04 1169.84 1235.4 1170.01C1236.52 1170.52 1242.8 1163.36 1242.49 1161.93C1242.46 1161.82 1242.37 1161.74 1242.26 1161.74" fill="#B8AFA3" />
        <path d="M1237.8 1161.74C1235.55 1162.04 1230.27 1169.18 1230.91 1169.93C1231.78 1170.96 1238.09 1164.05 1238.08 1162.07C1238.08 1161.77 1237.91 1161.74 1237.8 1161.74Z" fill="#B8AFA3" />
        <path d="M1232.76 1162.07C1230.59 1162.34 1225.79 1168.95 1226.44 1169.64C1227.29 1170.55 1233.16 1164.08 1233.06 1162.36C1233.04 1162.09 1232.88 1162.07 1232.76 1162.05" fill="#B8AFA3" />
        <path d="M427.914 1161.74C424.95 1161.93 425.757 1166.07 428.486 1168.52C431.011 1170.78 433.623 1170.45 433.564 1167.86C433.505 1165.1 430.394 1161.73 427.914 1161.74Z" fill="#B8AFA3" />
        <path d="M417.142 1161.74C414.178 1161.93 415.058 1166.01 417.861 1168.52C420.4 1170.8 422.968 1170.46 422.851 1167.86C422.734 1165.1 419.578 1161.73 417.142 1161.74Z" fill="#B8AFA3" />
        <path d="M406.546 1161.74C403.685 1161.93 404.639 1166.07 407.412 1168.52C409.966 1170.78 412.49 1170.45 412.314 1167.86C412.123 1165.1 408.953 1161.73 406.546 1161.74Z" fill="#B8AFA3" />
        <path d="M396.097 1161.74C393.294 1161.93 394.351 1166.07 397.125 1168.52C399.693 1170.78 402.158 1170.45 401.909 1167.86C401.645 1165.1 398.446 1161.73 396.083 1161.74" fill="#B8AFA3" />
        <path d="M1260.81 1148.54C1259.79 1148.7 1257.43 1151.4 1256.68 1152.34C1254.22 1155.42 1253.76 1156.78 1254.07 1156.94C1255.04 1157.47 1261.56 1149.62 1260.97 1148.62C1260.94 1148.58 1260.87 1148.54 1260.81 1148.54Z" fill="#B8AFA3" />
        <path d="M1256.85 1148.54C1255.76 1148.7 1253.4 1151.4 1252.66 1152.34C1250.21 1155.42 1249.82 1156.78 1250.15 1156.94C1251.19 1157.46 1257.34 1150.16 1257.08 1148.73C1257.07 1148.61 1256.98 1148.54 1256.86 1148.54" fill="#B8AFA3" />
        <path d="M1252.59 1148.54C1251.44 1148.7 1249.08 1151.4 1248.33 1152.34C1245.9 1155.42 1245.56 1156.78 1245.93 1156.94C1247.07 1157.46 1253.21 1150.16 1252.84 1148.73C1252.81 1148.61 1252.71 1148.54 1252.59 1148.54Z" fill="#B8AFA3" />
        <path d="M1248.05 1148.54C1245.78 1148.84 1240.67 1156.12 1241.35 1156.89C1242.27 1157.94 1248.42 1150.9 1248.35 1148.87C1248.35 1148.58 1248.17 1148.54 1248.05 1148.54Z" fill="#B8AFA3" />
        <path d="M1243.06 1148.68C1240.76 1148.98 1235.92 1155.99 1236.65 1156.72C1237.65 1157.74 1243.56 1150.96 1243.39 1149C1243.36 1148.73 1243.2 1148.68 1243.06 1148.68Z" fill="#B8AFA3" />
        <path d="M422.132 1148.54C419.109 1148.74 419.828 1152.94 422.557 1155.43C425.082 1157.74 427.753 1157.4 427.753 1154.76C427.753 1151.95 424.656 1148.52 422.117 1148.52" fill="#B8AFA3" />
        <path d="M411.14 1148.54C408.117 1148.74 408.909 1152.88 411.712 1155.43C414.251 1157.75 416.878 1157.4 416.819 1154.76C416.761 1151.95 413.62 1148.52 411.14 1148.52" fill="#B8AFA3" />
        <path d="M400.324 1148.54C397.33 1148.74 398.211 1152.88 401.043 1155.43C403.597 1157.74 406.179 1157.4 406.062 1154.76C405.93 1151.95 402.775 1148.52 400.324 1148.52" fill="#B8AFA3" />
        <path d="M389.684 1148.54C386.764 1148.74 387.732 1152.88 390.565 1155.43C393.133 1157.75 395.657 1157.4 395.466 1154.76C395.276 1151.95 392.076 1148.52 389.684 1148.52" fill="#B8AFA3" />
        <path d="M1270.89 1135.21C1269.86 1135.37 1267.56 1138.13 1266.82 1139.08C1264.42 1142.22 1264.02 1143.62 1264.33 1143.78C1265.31 1144.31 1271.31 1136.87 1271.09 1135.4C1271.08 1135.28 1271.01 1135.21 1270.89 1135.21Z" fill="#B8AFA3" />
        <path d="M1266.85 1135.21C1265.75 1135.37 1263.45 1138.13 1262.73 1139.08C1260.34 1142.22 1260 1143.62 1260.34 1143.78C1261.42 1144.31 1267.41 1136.87 1267.09 1135.4C1267.06 1135.28 1266.97 1135.21 1266.85 1135.21Z" fill="#B8AFA3" />
        <path d="M1262.52 1135.21C1261.37 1135.37 1259.05 1138.13 1258.33 1139.08C1255.95 1142.22 1255.67 1143.62 1256.05 1143.78C1257.24 1144.31 1263.21 1136.87 1262.79 1135.4C1262.76 1135.28 1262.66 1135.21 1262.52 1135.21Z" fill="#B8AFA3" />
        <path d="M1257.9 1135.21C1255.6 1135.52 1250.67 1142.94 1251.37 1143.72C1252.27 1144.7 1257.96 1138.06 1258.21 1135.74C1258.25 1135.31 1258.06 1135.22 1257.9 1135.21Z" fill="#B8AFA3" />
        <path d="M1252.94 1135.21C1250.53 1135.52 1245.68 1142.94 1246.45 1143.72C1247.45 1144.72 1253.15 1138.07 1253.29 1135.74C1253.32 1135.28 1253.09 1135.22 1252.94 1135.21Z" fill="#B8AFA3" />
        <path d="M439.61 1135.21C436.264 1135.42 436.939 1140.07 439.933 1142.55C442.678 1144.82 445.466 1143.87 445.084 1140.79C444.747 1138.01 441.973 1135.2 439.61 1135.2" fill="#B8AFA3" />
        <path d="M427.929 1135.21C424.656 1135.41 425.434 1140.07 428.428 1142.55C431.04 1144.7 433.637 1144.01 433.491 1141.18C433.344 1138.34 430.423 1135.19 427.943 1135.21" fill="#B8AFA3" />
        <path d="M416.555 1135.21C413.326 1135.41 414.192 1140.07 417.201 1142.55C419.813 1144.7 422.367 1144.01 422.161 1141.18C421.941 1138.34 419.021 1135.19 416.57 1135.21" fill="#B8AFA3" />
        <path d="M405.372 1135.21C402.202 1135.41 403.156 1140.07 406.165 1142.55C408.792 1144.72 411.287 1144.01 411.022 1141.18C410.744 1138.34 407.794 1135.19 405.387 1135.21" fill="#B8AFA3" />
        <path d="M394.351 1135.21C391.299 1135.42 392.106 1139.64 394.923 1142.24C397.477 1144.6 400.119 1144.25 400.045 1141.55C399.972 1138.7 396.831 1135.2 394.336 1135.2" fill="#B8AFA3" />
        <path d="M383.506 1135.21C380.585 1135.42 381.481 1139.7 384.24 1142.24C386.808 1144.6 389.376 1144.25 389.259 1141.55C389.127 1138.69 385.942 1135.2 383.506 1135.2" fill="#B8AFA3" />
        <path d="M1284.51 1121.62C1283.57 1121.78 1281.41 1124.5 1280.72 1125.42C1278.46 1128.52 1278.05 1129.88 1278.33 1130.04C1279.2 1130.56 1284.85 1123.25 1284.68 1121.81C1284.68 1121.69 1284.61 1121.62 1284.51 1121.62Z" fill="#B8AFA3" />
        <path d="M1280.81 1121.46C1279.77 1121.63 1277.52 1124.44 1276.82 1125.41C1274.48 1128.61 1274.12 1130.03 1274.46 1130.19C1275.47 1130.72 1281.31 1123.15 1281.03 1121.65C1281 1121.53 1280.93 1121.46 1280.81 1121.44" fill="#B8AFA3" />
        <path d="M1276.7 1121.46C1275.59 1121.63 1273.34 1124.44 1272.64 1125.41C1270.32 1128.61 1270.01 1130.03 1270.38 1130.19C1271.49 1130.72 1277.33 1123.15 1276.95 1121.65C1276.92 1121.53 1276.83 1121.46 1276.7 1121.44" fill="#B8AFA3" />
        <path d="M1272.3 1121.46C1270.1 1121.78 1265.25 1129.34 1265.91 1130.13C1266.77 1131.13 1272.3 1124.36 1272.58 1122C1272.62 1121.56 1272.45 1121.47 1272.3 1121.47" fill="#B8AFA3" />
        <path d="M1267.59 1121.46C1265.25 1121.78 1260.48 1129.33 1261.25 1130.13C1262.2 1131.13 1267.75 1124.36 1267.93 1122C1267.95 1121.55 1267.73 1121.47 1267.59 1121.47" fill="#B8AFA3" />
        <path d="M1262.54 1121.46C1260.09 1121.78 1255.41 1129.33 1256.23 1130.13C1257.29 1131.14 1262.85 1124.38 1262.91 1122C1262.91 1121.55 1262.67 1121.47 1262.52 1121.47" fill="#B8AFA3" />
        <path d="M1257.14 1121.62C1254.67 1121.93 1250.21 1129.22 1251.09 1129.99C1252.19 1130.95 1257.56 1124.42 1257.55 1122.13C1257.55 1121.69 1257.3 1121.62 1257.15 1121.62" fill="#B8AFA3" />
        <path d="M1226.61 1121.46C1225.04 1121.62 1223 1124.01 1222.03 1125.41C1220.51 1127.61 1219.88 1129.69 1220.61 1130.13C1222.27 1131.14 1227.8 1124.38 1227.26 1122C1227.16 1121.55 1226.82 1121.47 1226.61 1121.47" fill="#B8AFA3" />
        <path d="M1219.6 1121.46C1216.59 1121.75 1212.32 1128.74 1213.52 1130.01C1214.86 1131.45 1220.2 1125.51 1220.33 1122.46C1220.35 1122.09 1220.27 1121.46 1219.6 1121.44" fill="#B8AFA3" />
        <path d="M1212.41 1121.46C1209.31 1121.75 1205.1 1128.74 1206.38 1130.01C1207.8 1131.45 1213.16 1125.52 1213.19 1122.46C1213.19 1122.09 1213.1 1121.46 1212.41 1121.44" fill="#B8AFA3" />
        <path d="M422.66 1121.46C419.314 1121.68 420.018 1126.42 423.027 1128.94C425.771 1131.26 428.574 1130.29 428.178 1127.15C427.826 1124.34 425.052 1121.46 422.675 1121.46" fill="#B8AFA3" />
        <path d="M411.096 1121.46C407.808 1121.68 408.601 1126.42 411.609 1128.94C414.236 1131.14 416.849 1130.44 416.687 1127.55C416.526 1124.64 413.605 1121.46 411.11 1121.46" fill="#B8AFA3" />
        <path d="M399.693 1121.46C396.464 1121.68 397.33 1126.42 400.339 1128.94C402.922 1131.12 405.519 1130.38 405.314 1127.55C405.093 1124.64 402.158 1121.46 399.693 1121.46Z" fill="#B8AFA3" />
        <path d="M388.481 1121.46C385.296 1121.68 386.25 1126.42 389.273 1128.94C391.915 1131.14 394.41 1130.44 394.146 1127.55C393.867 1124.64 390.917 1121.46 388.496 1121.46" fill="#B8AFA3" />
        <path d="M377.445 1121.46C374.334 1121.68 375.376 1126.42 378.384 1128.94C380.982 1131.12 383.462 1130.38 383.124 1127.55C382.787 1124.64 379.808 1121.46 377.43 1121.46" fill="#B8AFA3" />
        <path d="M1294.3 1107.47C1293.31 1107.65 1291.13 1110.5 1290.44 1111.49C1288.16 1114.75 1287.78 1116.19 1288.09 1116.37C1289.03 1116.91 1294.71 1109.19 1294.49 1107.68C1294.47 1107.56 1294.4 1107.47 1294.3 1107.47Z" fill="#B8AFA3" />
        <path d="M1290.42 1107.47C1289.37 1107.65 1287.18 1110.5 1286.49 1111.49C1284.23 1114.75 1283.91 1116.19 1284.24 1116.37C1285.29 1116.91 1290.97 1109.19 1290.64 1107.68C1290.61 1107.56 1290.53 1107.47 1290.42 1107.47Z" fill="#B8AFA3" />
        <path d="M1286.24 1107.47C1285.11 1107.65 1282.92 1110.5 1282.23 1111.49C1279.99 1114.75 1279.72 1116.19 1280.11 1116.37C1281.27 1116.91 1286.93 1109.19 1286.5 1107.68C1286.47 1107.56 1286.37 1107.47 1286.25 1107.47" fill="#B8AFA3" />
        <path d="M1281.76 1107.47C1279.53 1107.8 1274.87 1115.49 1275.57 1116.29C1276.47 1117.31 1281.87 1110.42 1282.07 1108.02C1282.12 1107.55 1281.9 1107.47 1281.76 1107.47Z" fill="#B8AFA3" />
        <path d="M1276.98 1107.47C1274.62 1107.8 1270.02 1115.49 1270.82 1116.29C1271.81 1117.31 1277.23 1110.42 1277.33 1108.02C1277.35 1107.55 1277.11 1107.47 1276.98 1107.47Z" fill="#B8AFA3" />
        <path d="M1271.83 1107.47C1269.35 1107.8 1264.83 1115.49 1265.71 1116.29C1266.81 1117.32 1272.24 1110.42 1272.24 1108.02C1272.24 1107.55 1271.99 1107.47 1271.84 1107.47" fill="#B8AFA3" />
        <path d="M1266.46 1107.47C1263.86 1107.8 1259.43 1115.49 1260.37 1116.29C1261.57 1117.32 1267.02 1110.44 1266.9 1108.02C1266.88 1107.55 1266.6 1107.47 1266.46 1107.47Z" fill="#B8AFA3" />
        <path d="M1260.79 1107.47C1258.06 1107.8 1253.7 1115.49 1254.75 1116.29C1256.07 1117.32 1261.5 1110.42 1261.28 1108.02C1261.23 1107.55 1260.95 1107.47 1260.78 1107.47" fill="#B8AFA3" />
        <path d="M1254.83 1107.47C1253.41 1107.63 1251.42 1110.07 1250.45 1111.49C1248.92 1113.74 1248.22 1115.85 1248.83 1116.31C1250.24 1117.33 1255.69 1110.44 1255.36 1108.03C1255.3 1107.56 1255 1107.49 1254.82 1107.49" fill="#B8AFA3" />
        <path d="M1248.6 1107.47C1247.13 1107.63 1245.12 1110.07 1244.17 1111.49C1242.65 1113.74 1241.99 1115.85 1242.65 1116.31C1244.18 1117.35 1249.61 1110.45 1249.18 1108.03C1249.1 1107.56 1248.79 1107.49 1248.6 1107.49" fill="#B8AFA3" />
        <path d="M1241.98 1107.63C1240.51 1107.8 1238.57 1110.13 1237.66 1111.49C1236.21 1113.67 1235.61 1115.71 1236.3 1116.13C1237.87 1117.13 1243.09 1110.5 1242.58 1108.15C1242.48 1107.69 1242.15 1107.63 1241.98 1107.63Z" fill="#B8AFA3" />
        <path d="M1235.3 1107.47C1233.72 1107.63 1231.71 1110.07 1230.77 1111.49C1229.28 1113.74 1228.71 1115.85 1229.46 1116.31C1231.18 1117.33 1236.59 1110.45 1235.98 1108.03C1235.86 1107.56 1235.51 1107.49 1235.3 1107.49" fill="#B8AFA3" />
        <path d="M1228.17 1107.47C1225.12 1107.77 1220.99 1114.88 1222.24 1116.19C1223.63 1117.64 1228.89 1111.61 1228.93 1108.5C1228.93 1108.12 1228.84 1107.49 1228.15 1107.47" fill="#B8AFA3" />
        <path d="M1220.85 1107.47C1217.71 1107.77 1213.64 1114.88 1214.98 1116.19C1216.47 1117.64 1221.73 1111.61 1221.67 1108.5C1221.67 1108.12 1221.55 1107.49 1220.85 1107.47Z" fill="#B8AFA3" />
        <path d="M844.199 1107.47C839.665 1107.72 837.889 1113.4 840.662 1115.63C843.612 1117.99 848.294 1114.68 847.721 1110.63C847.457 1108.78 846.004 1107.49 844.185 1107.49" fill="#B8AFA3" />
        <path d="M830.287 1107.47C825.914 1107.71 824.079 1112.92 826.574 1115.37C829.289 1118.04 834.176 1115.16 833.941 1111.04C833.824 1108.97 832.283 1107.47 830.272 1107.47" fill="#B8AFA3" />
        <path d="M816.257 1107.47C811.84 1107.71 810.079 1112.92 812.647 1115.37C815.318 1117.91 819.941 1115.49 820.029 1111.48C820.073 1109.23 818.429 1107.47 816.257 1107.46" fill="#B8AFA3" />
        <path d="M441.782 1107.47C438.275 1107.69 438.73 1112.52 441.724 1115.09C444.468 1117.45 447.447 1116.45 447.227 1113.27C447.021 1110.39 444.277 1107.47 441.797 1107.47" fill="#B8AFA3" />
        <path d="M429.646 1107.47C426.168 1107.69 426.711 1112.52 429.719 1115.09C432.478 1117.45 435.398 1116.45 435.12 1113.27C434.87 1110.39 432.111 1107.47 429.646 1107.47Z" fill="#B8AFA3" />
        <path d="M417.568 1107.47C414.163 1107.69 414.794 1112.52 417.803 1115.09C420.562 1117.45 423.423 1116.45 423.071 1113.27C422.763 1110.39 419.989 1107.47 417.568 1107.47Z" fill="#B8AFA3" />
        <path d="M405.783 1107.47C402.437 1107.69 403.142 1112.52 406.15 1115.09C408.777 1117.33 411.448 1116.6 411.345 1113.68C411.243 1110.72 408.322 1107.47 405.783 1107.47Z" fill="#B8AFA3" />
        <path d="M394.204 1107.47C390.917 1107.69 391.709 1112.52 394.718 1115.09C397.301 1117.29 399.957 1116.56 399.81 1113.68C399.649 1110.72 396.714 1107.47 394.219 1107.47" fill="#B8AFA3" />
        <path d="M382.801 1107.47C379.558 1107.69 380.424 1112.52 383.447 1115.09C386.089 1117.33 388.642 1116.6 388.422 1113.68C388.202 1110.72 385.252 1107.47 382.787 1107.47" fill="#B8AFA3" />
        <path d="M371.575 1107.47C368.405 1107.69 369.359 1112.52 372.382 1115.09C374.979 1117.29 377.518 1116.56 377.239 1113.68C376.961 1110.72 373.996 1107.47 371.575 1107.47Z" fill="#B8AFA3" />
        <path d="M1307.15 1093.4C1306.27 1093.58 1304.23 1096.38 1303.59 1097.35C1301.46 1100.55 1301.08 1101.95 1301.34 1102.12C1302.18 1102.64 1307.49 1095.07 1307.33 1093.6C1307.33 1093.49 1307.26 1093.41 1307.15 1093.41" fill="#B8AFA3" />
        <path d="M1303.65 1093.22C1302.65 1093.4 1300.52 1096.32 1299.86 1097.32C1297.66 1100.63 1297.32 1102.1 1297.63 1102.28C1298.6 1102.82 1304.13 1094.95 1303.85 1093.41C1303.82 1093.28 1303.75 1093.21 1303.65 1093.21" fill="#B8AFA3" />
        <path d="M1299.73 1093.22C1298.66 1093.4 1296.53 1096.32 1295.85 1097.32C1293.67 1100.63 1293.39 1102.1 1293.74 1102.28C1294.83 1102.82 1300.34 1094.95 1299.96 1093.41C1299.93 1093.3 1299.84 1093.21 1299.73 1093.21" fill="#B8AFA3" />
        <path d="M1295.47 1093.22C1294.33 1093.4 1292.18 1096.32 1291.52 1097.32C1289.34 1100.63 1289.13 1102.1 1289.51 1102.28C1290.7 1102.82 1296.22 1094.95 1295.74 1093.41C1295.69 1093.3 1295.59 1093.21 1295.47 1093.21" fill="#B8AFA3" />
        <path d="M1290.92 1093.22C1288.66 1093.56 1284.16 1101.4 1284.9 1102.22C1285.84 1103.25 1291.13 1096.23 1291.24 1093.78C1291.27 1093.31 1291.05 1093.24 1290.91 1093.22" fill="#B8AFA3" />
        <path d="M1286.05 1093.22C1283.64 1093.56 1279.23 1101.4 1280.06 1102.22C1281.1 1103.25 1286.4 1096.23 1286.43 1093.78C1286.43 1093.31 1286.2 1093.24 1286.05 1093.22Z" fill="#B8AFA3" />
        <path d="M1280.82 1093.22C1278.32 1093.56 1273.96 1101.4 1274.88 1102.22C1276.04 1103.26 1281.34 1096.23 1281.25 1093.78C1281.24 1093.31 1280.97 1093.24 1280.82 1093.22Z" fill="#B8AFA3" />
        <path d="M1275.37 1093.22C1272.72 1093.55 1268.45 1101.4 1269.45 1102.22C1270.71 1103.26 1276.03 1096.23 1275.84 1093.78C1275.81 1093.31 1275.53 1093.24 1275.37 1093.22Z" fill="#B8AFA3" />
        <path d="M1269.6 1093.22C1266.82 1093.55 1262.64 1101.4 1263.73 1102.22C1265.09 1103.26 1270.41 1096.23 1270.13 1093.78C1270.07 1093.31 1269.77 1093.24 1269.61 1093.22" fill="#B8AFA3" />
        <path d="M1263.55 1093.22C1262.11 1093.38 1260.15 1095.88 1259.21 1097.32C1257.73 1099.61 1257.07 1101.75 1257.73 1102.22C1259.19 1103.26 1264.51 1096.23 1264.12 1093.78C1264.05 1093.31 1263.74 1093.24 1263.57 1093.22" fill="#B8AFA3" />
        <path d="M1257.21 1093.22C1255.72 1093.38 1253.75 1095.88 1252.82 1097.32C1251.36 1099.61 1250.74 1101.75 1251.43 1102.22C1253.01 1103.28 1258.33 1096.25 1257.83 1093.78C1257.73 1093.31 1257.4 1093.24 1257.21 1093.22Z" fill="#B8AFA3" />
        <path d="M1250.59 1093.22C1249.04 1093.38 1247.07 1095.88 1246.15 1097.32C1244.69 1099.61 1244.12 1101.75 1244.86 1102.22C1246.53 1103.26 1251.84 1096.25 1251.24 1093.78C1251.12 1093.31 1250.78 1093.24 1250.59 1093.22Z" fill="#B8AFA3" />
        <path d="M1243.7 1093.22C1240.7 1093.53 1236.65 1100.77 1237.88 1102.1C1239.25 1103.58 1244.4 1097.42 1244.44 1094.27C1244.44 1093.88 1244.36 1093.22 1243.7 1093.22Z" fill="#B8AFA3" />
        <path d="M1236.45 1093.22C1233.35 1093.53 1229.36 1100.77 1230.68 1102.1C1232.15 1103.58 1237.31 1097.42 1237.27 1094.27C1237.27 1093.88 1237.15 1093.22 1236.46 1093.22" fill="#B8AFA3" />
        <path d="M1229.01 1093.22C1225.81 1093.53 1221.87 1100.77 1223.28 1102.1C1224.84 1103.58 1230.02 1097.42 1229.87 1094.27C1229.86 1093.88 1229.72 1093.22 1229.01 1093.22Z" fill="#B8AFA3" />
        <path d="M860.254 1093.22C855.661 1093.47 853.826 1099.27 856.615 1101.54C859.55 1103.95 864.305 1100.56 863.791 1096.44C863.556 1094.54 862.103 1093.22 860.269 1093.22" fill="#B8AFA3" />
        <path d="M846.224 1093.22C841.807 1093.46 839.899 1098.77 842.394 1101.28C845.109 1103.99 850.069 1101.06 849.879 1096.86C849.776 1094.75 848.25 1093.22 846.224 1093.22Z" fill="#B8AFA3" />
        <path d="M832.077 1093.22C827.631 1093.46 825.796 1098.77 828.364 1101.28C831.021 1103.88 835.702 1101.4 835.834 1097.32C835.908 1094.98 834.293 1093.22 832.077 1093.22Z" fill="#B8AFA3" />
        <path d="M817.827 1093.22C813.322 1093.46 811.561 1098.77 814.203 1101.28C816.932 1103.86 821.614 1101.38 821.687 1097.32C821.731 1094.98 820.073 1093.22 817.842 1093.22" fill="#B8AFA3" />
        <path d="M803.401 1093.91C799.542 1094.12 798.118 1098.62 800.408 1100.75C802.785 1102.95 806.747 1100.84 806.762 1097.39C806.762 1095.41 805.324 1093.91 803.416 1093.91" fill="#B8AFA3" />
        <path d="M449.736 1093.22C446.097 1093.44 446.405 1098.37 449.399 1100.99C452.143 1103.38 455.254 1102.38 455.137 1099.14C455.034 1096.2 452.305 1093.22 449.736 1093.22Z" fill="#B8AFA3" />
        <path d="M437.233 1093.22C433.652 1093.44 434.048 1098.37 437.042 1100.99C439.786 1103.38 442.839 1102.38 442.663 1099.14C442.501 1096.2 439.757 1093.22 437.233 1093.22Z" fill="#B8AFA3" />
        <path d="M424.92 1093.22C421.383 1093.44 421.853 1098.37 424.861 1100.99C427.62 1103.38 430.614 1102.38 430.379 1099.14C430.174 1096.2 427.415 1093.22 424.92 1093.22Z" fill="#B8AFA3" />
        <path d="M412.622 1093.22C409.159 1093.44 409.716 1098.37 412.725 1100.99C415.484 1103.38 418.404 1102.38 418.111 1099.14C417.847 1096.2 415.073 1093.22 412.622 1093.22Z" fill="#B8AFA3" />
        <path d="M400.662 1093.22C397.242 1093.44 397.888 1098.37 400.911 1100.99C403.67 1103.38 406.532 1102.38 406.18 1099.14C405.871 1096.2 403.083 1093.22 400.662 1093.22Z" fill="#B8AFA3" />
        <path d="M388.877 1093.22C385.531 1093.44 386.236 1098.36 389.259 1100.99C391.842 1103.23 394.571 1102.48 394.454 1099.55C394.336 1096.53 391.416 1093.22 388.877 1093.22Z" fill="#B8AFA3" />
        <path d="M377.298 1093.22C373.981 1093.44 374.789 1098.37 377.812 1100.99C380.453 1103.28 383.066 1102.53 382.904 1099.55C382.743 1096.53 379.808 1093.22 377.298 1093.22Z" fill="#B8AFA3" />
        <path d="M365.881 1093.22C362.637 1093.44 363.533 1098.37 366.541 1100.99C369.124 1103.23 371.736 1102.48 371.501 1099.55C371.266 1096.53 368.317 1093.22 365.866 1093.22" fill="#B8AFA3" />
        <path d="M1316.35 1078.77C1315.43 1078.94 1313.37 1081.89 1312.73 1082.92C1310.59 1086.3 1310.23 1087.79 1310.53 1087.97C1311.48 1088.56 1316.78 1080.66 1316.54 1078.99C1316.53 1078.86 1316.46 1078.78 1316.35 1078.78" fill="#B8AFA3" />
        <path d="M1312.69 1078.77C1311.69 1078.94 1309.62 1081.89 1308.97 1082.92C1306.84 1086.3 1306.55 1087.79 1306.87 1087.97C1307.87 1088.51 1313.23 1080.54 1312.89 1078.99C1312.86 1078.86 1312.79 1078.78 1312.67 1078.78" fill="#B8AFA3" />
        <path d="M1308.69 1078.77C1307.62 1078.94 1305.55 1081.89 1304.91 1082.92C1302.79 1086.3 1302.56 1087.79 1302.93 1087.97C1304.13 1088.57 1309.43 1080.68 1308.94 1078.99C1308.91 1078.86 1308.81 1078.78 1308.69 1078.78" fill="#B8AFA3" />
        <path d="M1304.38 1078.77C1303.23 1078.94 1301.15 1081.89 1300.52 1082.92C1298.41 1086.3 1298.24 1087.79 1298.64 1087.97C1299.96 1088.57 1305.26 1080.68 1304.66 1078.99C1304.61 1078.86 1304.51 1078.78 1304.38 1078.78" fill="#B8AFA3" />
        <path d="M1299.76 1078.77C1297.47 1079.11 1293.17 1087.06 1293.94 1087.9C1294.93 1088.94 1300.06 1081.82 1300.11 1079.33C1300.11 1078.84 1299.89 1078.77 1299.76 1078.77Z" fill="#B8AFA3" />
        <path d="M1294.81 1078.77C1292.39 1079.11 1288.15 1087.06 1289.03 1087.9C1290.13 1088.94 1295.27 1081.82 1295.21 1079.33C1295.21 1078.84 1294.96 1078.77 1294.81 1078.77Z" fill="#B8AFA3" />
        <path d="M1289.5 1078.77C1286.96 1079.11 1282.79 1087.06 1283.75 1087.9C1284.95 1088.95 1290.11 1081.82 1289.94 1079.33C1289.91 1078.84 1289.64 1078.77 1289.48 1078.77" fill="#B8AFA3" />
        <path d="M1283.95 1078.77C1281.28 1079.11 1277.2 1087.06 1278.24 1087.9C1279.55 1088.95 1284.71 1081.83 1284.45 1079.33C1284.39 1078.84 1284.11 1078.77 1283.95 1078.77Z" fill="#B8AFA3" />
        <path d="M1278.1 1078.77C1275.29 1079.11 1271.29 1087.06 1272.42 1087.9C1273.84 1088.95 1279.01 1081.82 1278.64 1079.33C1278.56 1078.84 1278.27 1078.77 1278.1 1078.77Z" fill="#B8AFA3" />
        <path d="M1271.96 1078.77C1270.51 1078.93 1268.59 1081.45 1267.68 1082.92C1266.24 1085.24 1265.64 1087.43 1266.31 1087.9C1267.84 1088.95 1273.02 1081.82 1272.53 1079.33C1272.45 1078.84 1272.12 1078.77 1271.95 1078.77" fill="#B8AFA3" />
        <path d="M1265.52 1078.77C1264.01 1078.93 1262.08 1081.45 1261.19 1082.92C1259.77 1085.24 1259.21 1087.43 1259.93 1087.9C1261.57 1088.97 1266.75 1081.83 1266.16 1079.33C1266.05 1078.84 1265.71 1078.77 1265.52 1078.77Z" fill="#B8AFA3" />
        <path d="M1258.8 1078.77C1257.23 1078.93 1255.3 1081.45 1254.41 1082.92C1253 1085.24 1252.49 1087.43 1253.25 1087.9C1254.98 1088.95 1260.16 1081.83 1259.47 1079.33C1259.34 1078.84 1258.99 1078.77 1258.8 1078.77Z" fill="#B8AFA3" />
        <path d="M1251.8 1078.77C1248.77 1079.08 1244.87 1086.43 1246.16 1087.78C1247.6 1089.29 1252.65 1083.04 1252.59 1079.82C1252.59 1079.43 1252.47 1078.77 1251.8 1078.77Z" fill="#B8AFA3" />
        <path d="M1244.43 1078.77C1241.3 1079.08 1237.46 1086.43 1238.84 1087.78C1240.36 1089.28 1245.43 1083.04 1245.3 1079.82C1245.28 1079.43 1245.15 1078.77 1244.44 1078.77" fill="#B8AFA3" />
        <path d="M1236.89 1078.77C1233.66 1079.08 1229.87 1086.43 1231.34 1087.78C1232.97 1089.29 1238.05 1083.04 1237.8 1079.82C1237.77 1079.43 1237.61 1078.77 1236.89 1078.77Z" fill="#B8AFA3" />
        <path d="M876.529 1078.77C871.921 1079.02 870.013 1084.89 872.787 1087.21C875.737 1089.66 880.55 1086.22 880.052 1082.03C879.817 1080.12 878.378 1078.78 876.529 1078.78" fill="#B8AFA3" />
        <path d="M862.412 1078.77C857.759 1079.02 855.94 1084.89 858.772 1087.21C861.78 1089.66 866.594 1086.22 866.022 1082.03C865.758 1080.12 864.275 1078.78 862.412 1078.78" fill="#B8AFA3" />
        <path d="M848.176 1078.77C843.7 1079 841.807 1084.4 844.346 1086.94C847.002 1089.58 851.742 1087.06 851.919 1082.92C852.021 1080.59 850.378 1078.77 848.176 1078.77Z" fill="#B8AFA3" />
        <path d="M833.809 1078.77C829.304 1079 827.469 1084.4 830.082 1086.94C832.797 1089.58 837.537 1087.06 837.639 1082.92C837.698 1080.59 836.01 1078.77 833.794 1078.77" fill="#B8AFA3" />
        <path d="M819.339 1078.77C814.775 1079 813.014 1084.4 815.699 1086.94C818.488 1089.58 823.228 1087.06 823.272 1082.92C823.301 1080.59 821.569 1078.77 819.339 1078.77Z" fill="#B8AFA3" />
        <path d="M804.751 1078.77C800.158 1079 798.47 1084.4 801.215 1086.94C804.062 1089.57 808.802 1087.06 808.787 1082.92C808.787 1080.59 807.012 1078.77 804.751 1078.77Z" fill="#B8AFA3" />
        <path d="M445.554 1078.77C441.87 1078.99 442.09 1083.99 445.099 1086.65C447.858 1089.08 451.028 1088.07 450.955 1084.77C450.881 1081.81 448.166 1078.78 445.569 1078.78" fill="#B8AFA3" />
        <path d="M432.86 1078.77C429.235 1078.99 429.543 1083.99 432.537 1086.65C435.296 1089.08 438.407 1088.07 438.275 1084.77C438.157 1081.81 435.428 1078.78 432.86 1078.78" fill="#B8AFA3" />
        <path d="M420.341 1078.77C416.746 1078.99 417.142 1083.99 420.151 1086.65C422.924 1089.08 425.977 1088.07 425.786 1084.77C425.625 1081.81 422.866 1078.78 420.341 1078.78" fill="#B8AFA3" />
        <path d="M407.867 1078.77C404.345 1078.99 404.829 1083.99 407.823 1086.65C410.582 1089.08 413.576 1088.07 413.326 1084.77C413.106 1081.81 410.347 1078.78 407.853 1078.78" fill="#B8AFA3" />
        <path d="M395.716 1078.77C392.252 1078.99 392.81 1083.99 395.819 1086.65C398.578 1089.08 401.513 1088.07 401.205 1084.77C400.94 1081.81 398.167 1078.78 395.716 1078.78" fill="#B8AFA3" />
        <path d="M383.755 1078.77C380.351 1078.99 380.982 1083.98 383.99 1086.65C386.573 1088.94 389.347 1088.17 389.303 1085.18C389.244 1082.13 386.338 1078.77 383.755 1078.77Z" fill="#B8AFA3" />
        <path d="M371.986 1078.77C368.625 1078.99 369.329 1083.99 372.353 1086.65C374.994 1088.97 377.665 1088.22 377.548 1085.18C377.43 1082.13 374.525 1078.77 371.986 1078.77Z" fill="#B8AFA3" />
        <path d="M360.392 1078.77C357.105 1078.99 357.897 1083.99 360.906 1086.65C363.488 1088.94 366.145 1088.17 365.983 1085.18C365.807 1082.11 362.887 1078.77 360.392 1078.77Z" fill="#B8AFA3" />
        <path d="M1321.4 1064.05C1320.39 1064.22 1318.39 1067.23 1317.76 1068.26C1315.71 1071.69 1315.46 1073.21 1315.8 1073.38C1316.91 1073.98 1322.03 1065.96 1321.62 1064.25C1321.59 1064.12 1321.51 1064.05 1321.4 1064.05Z" fill="#B8AFA3" />
        <path d="M1317.35 1064.05C1316.27 1064.22 1314.26 1067.23 1313.64 1068.26C1311.6 1071.69 1311.41 1073.21 1311.78 1073.38C1313.02 1073.98 1318.13 1065.96 1317.6 1064.25C1317.56 1064.12 1317.47 1064.05 1317.34 1064.05" fill="#B8AFA3" />
        <path d="M1312.96 1064.05C1311.8 1064.22 1309.78 1067.23 1309.16 1068.26C1307.12 1071.69 1307.01 1073.21 1307.42 1073.38C1308.78 1073.98 1313.9 1065.96 1313.24 1064.25C1313.2 1064.12 1313.08 1064.05 1312.95 1064.05" fill="#B8AFA3" />
        <path d="M1308.27 1064.05C1305.96 1064.39 1301.83 1072.47 1302.65 1073.32C1303.67 1074.39 1308.66 1067.14 1308.64 1064.62C1308.64 1064.14 1308.4 1064.05 1308.25 1064.05" fill="#B8AFA3" />
        <path d="M1303.26 1064.05C1300.81 1064.39 1296.76 1072.47 1297.67 1073.32C1298.82 1074.38 1303.82 1067.14 1303.69 1064.62C1303.66 1064.14 1303.41 1064.05 1303.26 1064.05Z" fill="#B8AFA3" />
        <path d="M1297.88 1064.05C1295.31 1064.39 1291.33 1072.47 1292.32 1073.32C1293.58 1074.39 1298.58 1067.16 1298.35 1064.62C1298.3 1064.14 1298.02 1064.05 1297.88 1064.05Z" fill="#B8AFA3" />
        <path d="M1292.24 1064.05C1289.54 1064.39 1285.64 1072.47 1286.72 1073.32C1288.09 1074.39 1293.11 1067.16 1292.77 1064.62C1292.7 1064.14 1292.42 1064.05 1292.26 1064.05" fill="#B8AFA3" />
        <path d="M1286.31 1064.05C1283.48 1064.39 1279.65 1072.47 1280.82 1073.32C1282.29 1074.39 1287.34 1067.16 1286.89 1064.62C1286.8 1064.14 1286.49 1064.05 1286.31 1064.05Z" fill="#B8AFA3" />
        <path d="M1280.08 1064.05C1278.61 1064.21 1276.73 1066.78 1275.85 1068.26C1274.46 1070.62 1273.91 1072.84 1274.62 1073.31C1276.19 1074.38 1281.24 1067.13 1280.68 1064.61C1280.58 1064.12 1280.25 1064.03 1280.06 1064.03" fill="#B8AFA3" />
        <path d="M1273.53 1064.05C1272 1064.22 1270.13 1066.78 1269.26 1068.26C1267.88 1070.62 1267.38 1072.84 1268.13 1073.31C1269.82 1074.39 1274.88 1067.16 1274.21 1064.61C1274.07 1064.12 1273.74 1064.03 1273.55 1064.03" fill="#B8AFA3" />
        <path d="M1266.72 1064.05C1265.14 1064.22 1263.24 1066.78 1262.39 1068.26C1261.03 1070.62 1260.57 1072.84 1261.36 1073.31C1263.16 1074.38 1268.2 1067.14 1267.44 1064.61C1267.29 1064.12 1266.94 1064.03 1266.74 1064.03" fill="#B8AFA3" />
        <path d="M1259.62 1064.05C1256.57 1064.36 1252.81 1071.83 1254.16 1073.21C1255.66 1074.73 1260.6 1068.39 1260.46 1065.12C1260.44 1064.72 1260.31 1064.05 1259.62 1064.05Z" fill="#B8AFA3" />
        <path d="M1252.15 1064.05C1248.98 1064.36 1245.28 1071.83 1246.72 1073.21C1248.32 1074.73 1253.28 1068.39 1253.04 1065.12C1253.01 1064.72 1252.85 1064.05 1252.15 1064.05Z" fill="#B8AFA3" />
        <path d="M1244.49 1064.05C1241.22 1064.36 1237.59 1071.83 1239.1 1073.21C1240.79 1074.73 1245.77 1068.39 1245.44 1065.12C1245.4 1064.72 1245.22 1064.05 1244.49 1064.05Z" fill="#B8AFA3" />
        <path d="M878.833 1064.05C874.152 1064.3 872.274 1070.27 875.106 1072.62C878.114 1075.11 882.972 1071.62 882.429 1067.35C882.18 1065.41 880.697 1064.05 878.819 1064.05" fill="#B8AFA3" />
        <path d="M864.51 1064.05C859.799 1064.3 857.994 1070.27 860.885 1072.62C863.953 1075.11 868.81 1071.61 868.194 1067.35C867.915 1065.41 866.403 1064.05 864.51 1064.05Z" fill="#B8AFA3" />
        <path d="M850.055 1064.05C845.505 1064.3 843.627 1069.77 846.224 1072.35C848.939 1075.04 853.724 1072.49 853.885 1068.27C853.973 1065.91 852.286 1064.06 850.055 1064.06" fill="#B8AFA3" />
        <path d="M835.482 1064.05C830.903 1064.3 829.083 1069.77 831.754 1072.35C834.528 1075.04 839.327 1072.49 839.415 1068.27C839.459 1065.91 837.742 1064.06 835.497 1064.06" fill="#B8AFA3" />
        <path d="M820.792 1064.05C816.154 1064.3 814.408 1069.77 817.138 1072.35C819.985 1075.03 824.784 1072.47 824.798 1068.27C824.798 1065.91 823.052 1064.06 820.777 1064.06" fill="#B8AFA3" />
        <path d="M805.984 1064.05C801.317 1064.3 799.63 1069.77 802.433 1072.35C805.339 1075.03 810.137 1072.47 810.093 1068.27C810.079 1065.91 808.259 1064.06 805.984 1064.06" fill="#B8AFA3" />
        <path d="M790.971 1065.27C787.508 1065.44 786.319 1069.51 788.418 1071.42C790.619 1073.41 794.171 1071.5 794.083 1068.39C794.038 1066.65 792.674 1065.27 790.971 1065.27Z" fill="#B8AFA3" />
        <path d="M441.503 1064.05C437.761 1064.28 437.923 1069.35 440.916 1072.05C443.675 1074.53 446.904 1073.48 446.889 1070.14C446.86 1067.12 444.145 1064.05 441.503 1064.05Z" fill="#B8AFA3" />
        <path d="M428.633 1064.05C424.95 1064.28 425.184 1069.35 428.193 1072.05C430.952 1074.53 434.122 1073.48 434.048 1070.14C433.975 1067.12 431.245 1064.05 428.633 1064.05Z" fill="#B8AFA3" />
        <path d="M415.939 1064.05C412.285 1064.28 412.607 1069.35 415.616 1072.05C418.39 1074.53 421.501 1073.48 421.369 1070.14C421.251 1067.12 418.507 1064.05 415.939 1064.05Z" fill="#B8AFA3" />
        <path d="M403.274 1064.05C399.693 1064.28 400.089 1069.35 403.098 1072.05C405.857 1074.53 408.909 1073.48 408.718 1070.14C408.542 1067.12 405.798 1064.05 403.259 1064.05" fill="#B8AFA3" />
        <path d="M390.946 1064.05C387.424 1064.28 387.909 1069.35 390.917 1072.05C393.676 1074.53 396.67 1073.48 396.42 1070.14C396.2 1067.12 393.441 1064.05 390.946 1064.05Z" fill="#B8AFA3" />
        <path d="M378.81 1064.05C375.346 1064.28 375.904 1069.35 378.912 1072.05C381.671 1074.53 384.607 1073.5 384.313 1070.14C384.049 1067.12 381.275 1064.05 378.824 1064.05" fill="#B8AFA3" />
        <path d="M366.864 1064.05C363.444 1064.28 364.076 1069.35 367.084 1072.05C369.726 1074.41 372.441 1073.65 372.397 1070.56C372.338 1067.45 369.447 1064.05 366.864 1064.05Z" fill="#B8AFA3" />
        <path d="M355.109 1064.05C351.763 1064.28 352.482 1069.35 355.476 1072.05C358.059 1074.37 360.773 1073.59 360.656 1070.56C360.539 1067.45 357.633 1064.05 355.109 1064.05Z" fill="#B8AFA3" />
        <path d="M1329.78 1049.11C1328.75 1049.3 1326.83 1052.34 1326.23 1053.39C1324.25 1056.87 1324.04 1058.41 1324.4 1058.6C1325.54 1059.21 1330.49 1051.06 1330.02 1049.33C1329.99 1049.2 1329.88 1049.12 1329.78 1049.11Z" fill="#B8AFA3" />
        <path d="M1325.67 1049.11C1324.57 1049.3 1322.64 1052.34 1322.03 1053.39C1320.07 1056.87 1319.92 1058.41 1320.3 1058.6C1321.58 1059.22 1326.52 1051.07 1325.94 1049.33C1325.89 1049.2 1325.79 1049.12 1325.67 1049.11Z" fill="#B8AFA3" />
        <path d="M1321.24 1049.11C1320.07 1049.3 1318.12 1052.34 1317.53 1053.39C1315.58 1056.87 1315.49 1058.41 1315.91 1058.6C1317.31 1059.22 1322.25 1051.07 1321.55 1049.33C1321.49 1049.2 1321.39 1049.12 1321.26 1049.11" fill="#B8AFA3" />
        <path d="M1316.47 1049.11C1314.14 1049.46 1310.21 1057.66 1311.06 1058.52C1312.14 1059.6 1316.97 1052.25 1316.87 1049.68C1316.85 1049.18 1316.6 1049.11 1316.47 1049.11Z" fill="#B8AFA3" />
        <path d="M1311.39 1049.11C1308.91 1049.46 1305.05 1057.66 1306.01 1058.52C1307.2 1059.59 1312.05 1052.23 1311.85 1049.68C1311.8 1049.18 1311.56 1049.11 1311.39 1049.11Z" fill="#B8AFA3" />
        <path d="M1305.93 1049.11C1303.34 1049.46 1299.54 1057.66 1300.58 1058.52C1301.88 1059.6 1306.76 1052.25 1306.43 1049.68C1306.37 1049.18 1306.1 1049.11 1305.93 1049.11Z" fill="#B8AFA3" />
        <path d="M1300.23 1049.11C1297.5 1049.46 1293.78 1057.66 1294.9 1058.52C1296.31 1059.6 1301.19 1052.25 1300.77 1049.68C1300.68 1049.18 1300.39 1049.11 1300.23 1049.11Z" fill="#B8AFA3" />
        <path d="M1294.21 1049.11C1291.35 1049.45 1287.69 1057.66 1288.91 1058.52C1290.44 1059.6 1295.34 1052.25 1294.8 1049.68C1294.69 1049.18 1294.38 1049.11 1294.21 1049.11Z" fill="#B8AFA3" />
        <path d="M1287.88 1049.11C1286.39 1049.28 1284.57 1051.88 1283.73 1053.39C1282.4 1055.79 1281.91 1058.05 1282.63 1058.53C1284.26 1059.62 1289.16 1052.26 1288.53 1049.7C1288.41 1049.2 1288.07 1049.12 1287.9 1049.12" fill="#B8AFA3" />
        <path d="M1281.25 1049.11C1279.71 1049.28 1277.87 1051.88 1277.04 1053.39C1275.7 1055.79 1275.26 1058.05 1276.03 1058.53C1277.77 1059.63 1282.69 1052.28 1281.94 1049.7C1281.79 1049.2 1281.44 1049.12 1281.25 1049.12" fill="#B8AFA3" />
        <path d="M1274.34 1049.11C1272.72 1049.28 1270.89 1051.88 1270.07 1053.39C1268.75 1055.79 1268.35 1058.05 1269.16 1058.53C1270.99 1059.63 1275.91 1052.28 1275.07 1049.7C1274.91 1049.2 1274.54 1049.12 1274.34 1049.12" fill="#B8AFA3" />
        <path d="M1267.15 1049.11C1264.05 1049.43 1260.46 1057 1261.86 1058.41C1263.32 1059.87 1267.94 1053.95 1268.03 1050.52C1268.06 1049.3 1267.5 1049.12 1267.15 1049.12" fill="#B8AFA3" />
        <path d="M1259.56 1049.11C1256.36 1049.43 1252.81 1057 1254.31 1058.41C1255.85 1059.85 1260.5 1053.95 1260.51 1050.52C1260.51 1049.3 1259.91 1049.12 1259.56 1049.12" fill="#B8AFA3" />
        <path d="M1251.8 1049.11C1248.48 1049.43 1245 1057 1246.59 1058.41C1248.23 1059.87 1252.88 1053.95 1252.81 1050.52C1252.78 1049.3 1252.16 1049.12 1251.8 1049.12" fill="#B8AFA3" />
        <path d="M965.404 1049.11C960.913 1049.37 958.639 1055.43 961.163 1057.81C963.834 1060.34 968.765 1056.78 968.574 1052.47C968.486 1050.5 967.18 1049.12 965.404 1049.12" fill="#B8AFA3" />
        <path d="M951.727 1049.11C947.207 1049.37 945.005 1055.43 947.588 1057.81C950.318 1060.34 955.234 1056.78 954.999 1052.47C954.897 1050.5 953.546 1049.12 951.741 1049.12" fill="#B8AFA3" />
        <path d="M895.593 1049.11C890.897 1049.37 888.959 1055.43 891.792 1057.81C894.8 1060.34 899.702 1056.8 899.188 1052.47C898.953 1050.5 897.471 1049.12 895.593 1049.12" fill="#B8AFA3" />
        <path d="M881.035 1049.11C876.295 1049.37 874.431 1055.43 877.322 1057.81C880.389 1060.34 885.305 1056.8 884.718 1052.47C884.454 1050.5 882.943 1049.12 881.035 1049.12" fill="#B8AFA3" />
        <path d="M866.521 1049.11C861.736 1049.37 859.961 1055.43 862.911 1057.81C866.051 1060.34 870.938 1056.78 870.292 1052.47C869.999 1050.5 868.443 1049.12 866.521 1049.12" fill="#B8AFA3" />
        <path d="M851.86 1049.11C847.252 1049.36 845.373 1054.92 848.029 1057.53C850.73 1060.19 855.646 1057.55 855.763 1053.38C855.837 1050.97 854.12 1049.09 851.86 1049.09" fill="#B8AFA3" />
        <path d="M837.096 1049.11C832.459 1049.36 830.639 1054.92 833.354 1057.53C836.186 1060.26 841.029 1057.66 841.088 1053.38C841.117 1050.97 839.371 1049.09 837.082 1049.09" fill="#B8AFA3" />
        <path d="M822.201 1049.11C817.505 1049.36 815.758 1054.92 818.546 1057.53C821.438 1060.25 826.295 1057.65 826.295 1053.38C826.295 1050.99 824.505 1049.09 822.201 1049.09" fill="#B8AFA3" />
        <path d="M807.188 1049.11C802.462 1049.36 800.774 1054.92 803.622 1057.53C806.586 1060.25 811.429 1057.65 811.37 1053.38C811.341 1050.97 809.492 1049.09 807.188 1049.09" fill="#B8AFA3" />
        <path d="M792.043 1049.11C787.302 1049.36 785.688 1054.92 788.594 1057.53C791.602 1060.25 796.445 1057.65 796.328 1053.38C796.254 1050.94 794.42 1049.09 792.043 1049.09" fill="#B8AFA3" />
        <path d="M450.852 1049.11C447.007 1049.34 447.007 1054.49 450.015 1057.22C452.921 1059.88 456.443 1058.52 456.194 1054.83C455.988 1051.88 453.391 1049.11 450.852 1049.11Z" fill="#B8AFA3" />
        <path d="M437.614 1049.11C433.814 1049.34 433.902 1054.49 436.91 1057.22C439.816 1059.88 443.279 1058.52 442.971 1054.83C442.722 1051.88 440.124 1049.11 437.614 1049.11Z" fill="#B8AFA3" />
        <path d="M424.568 1049.11C420.826 1049.34 420.987 1054.49 423.996 1057.22C426.755 1059.75 429.998 1058.69 429.969 1055.29C429.939 1052.22 427.21 1049.11 424.568 1049.11Z" fill="#B8AFA3" />
        <path d="M411.683 1049.11C407.985 1049.34 408.219 1054.49 411.228 1057.22C414.002 1059.75 417.186 1058.69 417.098 1055.29C417.025 1052.22 414.295 1049.11 411.683 1049.11Z" fill="#B8AFA3" />
        <path d="M398.856 1049.11C395.232 1049.34 395.554 1054.49 398.548 1057.22C401.307 1059.75 404.419 1058.69 404.286 1055.29C404.169 1052.22 401.425 1049.11 398.856 1049.11Z" fill="#B8AFA3" />
        <path d="M386.353 1049.11C382.787 1049.34 383.183 1054.49 386.177 1057.22C388.936 1059.75 391.988 1058.69 391.798 1055.29C391.621 1052.22 388.877 1049.11 386.353 1049.11Z" fill="#B8AFA3" />
        <path d="M374.04 1049.11C370.533 1049.34 371.002 1054.49 373.996 1057.22C376.755 1059.75 379.749 1058.69 379.5 1055.29C379.279 1052.22 376.52 1049.11 374.04 1049.11Z" fill="#B8AFA3" />
        <path d="M361.933 1049.11C358.469 1049.34 359.012 1054.49 362.021 1057.22C364.78 1059.75 367.7 1058.69 367.407 1055.29C367.143 1052.22 364.384 1049.11 361.933 1049.11Z" fill="#B8AFA3" />
        <path d="M350.016 1049.11C346.626 1049.34 347.257 1054.49 350.237 1057.22C352.819 1059.59 355.578 1058.79 355.52 1055.71C355.461 1052.56 352.57 1049.09 350.016 1049.09" fill="#B8AFA3" />
        <path d="M1333.67 1033.95C1332.56 1034.14 1330.68 1037.24 1330.11 1038.31C1328.21 1041.84 1328.11 1043.41 1328.51 1043.59C1329.81 1044.21 1334.6 1035.92 1333.95 1034.15C1333.91 1034.02 1333.79 1033.93 1333.67 1033.93" fill="#B8AFA3" />
        <path d="M1329.17 1033.95C1326.94 1034.3 1323.12 1042.65 1323.93 1043.52C1324.9 1044.56 1329.28 1037.69 1329.53 1034.77C1329.58 1034.23 1329.46 1033.95 1329.17 1033.93" fill="#B8AFA3" />
        <path d="M1324.35 1033.95C1321.99 1034.3 1318.23 1042.65 1319.13 1043.52C1320.26 1044.62 1324.94 1037.13 1324.76 1034.54C1324.73 1034.04 1324.48 1033.95 1324.34 1033.95" fill="#B8AFA3" />
        <path d="M1319.2 1033.95C1316.69 1034.3 1313.01 1042.65 1314.01 1043.52C1315.24 1044.6 1319.96 1037.13 1319.67 1034.54C1319.61 1034.04 1319.35 1033.95 1319.2 1033.95Z" fill="#B8AFA3" />
        <path d="M1313.67 1033.95C1311.04 1034.3 1307.42 1042.65 1308.5 1043.52C1309.85 1044.62 1314.59 1037.15 1314.2 1034.54C1314.12 1034.02 1313.84 1033.95 1313.68 1033.95" fill="#B8AFA3" />
        <path d="M1307.89 1033.95C1305.13 1034.3 1301.58 1042.65 1302.74 1043.52C1304.2 1044.62 1308.94 1037.15 1308.44 1034.54C1308.34 1034.02 1308.05 1033.95 1307.87 1033.95" fill="#B8AFA3" />
        <path d="M1301.78 1033.95C1298.89 1034.3 1295.41 1042.65 1296.66 1043.52C1298.23 1044.62 1303 1037.13 1302.4 1034.52C1302.28 1034.01 1301.96 1033.93 1301.78 1033.93" fill="#B8AFA3" />
        <path d="M1295.38 1033.95C1293.87 1034.12 1292.1 1036.77 1291.27 1038.31C1289.98 1040.74 1289.56 1043.03 1290.29 1043.52C1291.96 1044.62 1296.75 1037.13 1296.03 1034.52C1295.9 1034.01 1295.56 1033.93 1295.37 1033.93" fill="#B8AFA3" />
        <path d="M1288.66 1033.95C1287.09 1034.12 1285.32 1036.77 1284.49 1038.31C1283.22 1040.74 1282.82 1043.03 1283.61 1043.52C1285.42 1044.63 1290.2 1037.15 1289.37 1034.52C1289.2 1034.01 1288.85 1033.93 1288.65 1033.93" fill="#B8AFA3" />
        <path d="M1281.66 1033.95C1278.64 1034.27 1275.13 1041.99 1276.51 1043.4C1277.93 1044.87 1282.42 1038.86 1282.53 1035.37C1282.56 1034.14 1282 1033.95 1281.68 1033.95" fill="#B8AFA3" />
        <path d="M1274.37 1033.95C1271.24 1034.27 1267.78 1041.99 1269.25 1043.4C1270.76 1044.87 1275.28 1038.86 1275.29 1035.37C1275.29 1034.14 1274.72 1033.95 1274.37 1033.95Z" fill="#B8AFA3" />
        <path d="M1266.69 1033.95C1263.45 1034.27 1260.04 1041.99 1261.6 1043.4C1263.2 1044.87 1267.75 1038.85 1267.69 1035.37C1267.66 1034.14 1267.06 1033.95 1266.69 1033.95Z" fill="#B8AFA3" />
        <path d="M968.647 1033.95C964.083 1034.21 961.853 1040.38 964.45 1042.8C967.195 1045.35 972.126 1041.74 971.905 1037.35C971.803 1035.34 970.467 1033.95 968.647 1033.93" fill="#B8AFA3" />
        <path d="M954.794 1033.95C950.2 1034.21 948.043 1040.38 950.685 1042.8C953.473 1045.35 958.419 1041.74 958.125 1037.35C957.993 1035.31 956.643 1033.95 954.779 1033.93" fill="#B8AFA3" />
        <path d="M897.912 1033.95C893.142 1034.21 891.234 1040.38 894.14 1042.8C897.207 1045.37 902.153 1041.76 901.595 1037.35C901.346 1035.34 899.834 1033.95 897.926 1033.93" fill="#B8AFA3" />
        <path d="M883.163 1033.95C878.349 1034.21 876.515 1040.38 879.479 1042.8C882.605 1045.37 887.551 1041.76 886.934 1037.35C886.655 1035.34 885.1 1033.95 883.177 1033.93" fill="#B8AFA3" />
        <path d="M868.443 1033.95C863.585 1034.21 861.824 1040.38 864.848 1042.8C868.047 1045.37 872.978 1041.76 872.288 1037.35C871.98 1035.34 870.395 1033.95 868.458 1033.93" fill="#B8AFA3" />
        <path d="M853.606 1033.95C848.925 1034.2 847.061 1039.86 849.776 1042.52C852.594 1045.28 857.495 1042.65 857.583 1038.31C857.642 1035.83 855.925 1033.95 853.591 1033.95" fill="#B8AFA3" />
        <path d="M838.637 1033.95C833.926 1034.2 832.121 1039.86 834.895 1042.52C837.771 1045.28 842.673 1042.65 842.717 1038.31C842.746 1035.83 840.985 1033.95 838.637 1033.95Z" fill="#B8AFA3" />
        <path d="M823.536 1033.95C818.767 1034.2 817.02 1039.86 819.867 1042.52C822.817 1045.28 827.719 1042.64 827.704 1038.31C827.704 1035.83 825.899 1033.95 823.536 1033.95Z" fill="#B8AFA3" />
        <path d="M808.332 1033.95C803.533 1034.2 801.846 1039.86 804.752 1042.52C807.76 1045.28 812.676 1042.64 812.588 1038.31C812.544 1035.83 810.71 1033.95 808.332 1033.95Z" fill="#B8AFA3" />
        <path d="M792.996 1033.95C788.183 1034.2 786.569 1039.86 789.518 1042.52C792.571 1045.28 797.472 1042.64 797.34 1038.31C797.267 1035.83 795.389 1033.95 792.996 1033.95Z" fill="#B8AFA3" />
        <path d="M474.626 1033.95C470.605 1034.18 470.4 1039.42 473.408 1042.21C476.314 1044.91 480.041 1043.52 479.939 1039.77C479.851 1036.78 477.282 1033.95 474.641 1033.95" fill="#B8AFA3" />
        <path d="M460.875 1033.95C456.913 1034.18 456.781 1039.42 459.789 1042.21C462.695 1044.91 466.364 1043.52 466.202 1039.77C466.07 1036.78 463.487 1033.95 460.875 1033.95Z" fill="#B8AFA3" />
        <path d="M447.286 1033.95C443.367 1034.18 443.323 1039.42 446.332 1042.21C449.252 1044.91 452.833 1043.52 452.628 1039.77C452.466 1036.78 449.869 1033.95 447.286 1033.95Z" fill="#B8AFA3" />
        <path d="M433.887 1033.95C430.027 1034.18 430.042 1039.42 433.065 1042.21C435.985 1044.91 439.508 1043.52 439.243 1039.77C439.038 1036.78 436.44 1033.95 433.887 1033.95Z" fill="#B8AFA3" />
        <path d="M420.664 1033.95C416.863 1034.18 416.951 1039.42 419.975 1042.21C422.748 1044.76 426.036 1043.71 426.05 1040.24C426.05 1037.13 423.35 1033.95 420.664 1033.95Z" fill="#B8AFA3" />
        <path d="M407.618 1033.95C403.861 1034.18 404.022 1039.42 407.045 1042.21C409.819 1044.76 413.062 1043.71 413.018 1040.24C412.989 1037.13 410.259 1033.95 407.618 1033.95Z" fill="#B8AFA3" />
        <path d="M394.601 1033.95C390.917 1034.18 391.166 1039.42 394.175 1042.21C396.934 1044.76 400.104 1043.71 400.016 1040.24C399.942 1037.12 397.198 1033.95 394.601 1033.95Z" fill="#B8AFA3" />
        <path d="M381.936 1033.95C378.311 1034.18 378.634 1039.42 381.642 1042.21C384.401 1044.76 387.512 1043.69 387.366 1040.24C387.248 1037.12 384.504 1033.95 381.936 1033.95Z" fill="#B8AFA3" />
        <path d="M369.476 1033.95C365.91 1034.18 366.306 1039.42 369.3 1042.21C372.059 1044.78 375.097 1043.71 374.906 1040.24C374.73 1037.13 372 1033.95 369.476 1033.95Z" fill="#B8AFA3" />
        <path d="M357.207 1033.95C353.685 1034.18 354.155 1039.42 357.149 1042.21C359.908 1044.76 362.887 1043.69 362.652 1040.24C362.432 1037.13 359.688 1033.95 357.207 1033.95Z" fill="#B8AFA3" />
        <path d="M345.129 1033.95C341.475 1034.2 342.297 1039.86 345.57 1042.52C348.226 1044.68 350.853 1043.49 350.574 1040.23C350.31 1037.1 347.566 1033.93 345.129 1033.93" fill="#B8AFA3" />
        <path d="M1336.77 1018.58C1334.54 1018.94 1330.9 1027.39 1331.75 1028.27C1332.76 1029.33 1337 1022.37 1337.16 1019.42C1337.19 1018.86 1337.06 1018.58 1336.77 1018.58Z" fill="#B8AFA3" />
        <path d="M1331.88 1018.58C1329.5 1018.94 1325.94 1027.39 1326.88 1028.27C1327.99 1029.33 1332.28 1022.38 1332.34 1019.42C1332.34 1018.86 1332.19 1018.58 1331.88 1018.58Z" fill="#B8AFA3" />
        <path d="M1326.67 1018.58C1324.15 1018.94 1320.65 1027.39 1321.68 1028.27C1322.96 1029.37 1327.52 1021.81 1327.16 1019.17C1327.08 1018.66 1326.82 1018.58 1326.66 1018.58" fill="#B8AFA3" />
        <path d="M1321.07 1018.58C1318.42 1018.94 1314.99 1027.39 1316.1 1028.27C1317.5 1029.38 1322.08 1021.81 1321.61 1019.17C1321.52 1018.66 1321.23 1018.58 1321.07 1018.58Z" fill="#B8AFA3" />
        <path d="M1315.21 1018.58C1312.44 1018.94 1309.08 1027.39 1310.28 1028.27C1311.79 1029.38 1316.38 1021.81 1315.81 1019.17C1315.69 1018.66 1315.4 1018.58 1315.22 1018.58" fill="#B8AFA3" />
        <path d="M1309.03 1018.58C1306.11 1018.94 1302.84 1027.39 1304.13 1028.27C1305.74 1029.38 1310.37 1021.81 1309.68 1019.17C1309.54 1018.66 1309.22 1018.58 1309.03 1018.58Z" fill="#B8AFA3" />
        <path d="M1302.54 1018.58C1301.02 1018.76 1299.3 1021.43 1298.51 1022.99C1297.26 1025.45 1296.89 1027.77 1297.66 1028.27C1299.39 1029.38 1304.01 1021.81 1303.22 1019.17C1303.07 1018.66 1302.72 1018.58 1302.53 1018.58" fill="#B8AFA3" />
        <path d="M1295.75 1018.58C1294.16 1018.76 1292.43 1021.43 1291.66 1022.99C1290.42 1025.45 1290.08 1027.77 1290.91 1028.27C1292.67 1029.34 1297.1 1022.4 1296.56 1019.42C1296.45 1018.86 1296.19 1018.58 1295.75 1018.58Z" fill="#B8AFA3" />
        <path d="M1288.66 1018.58C1285.62 1018.91 1282.28 1026.71 1283.7 1028.15C1285.18 1029.63 1289.56 1023.56 1289.57 1020.02C1289.57 1018.77 1289 1018.58 1288.66 1018.58Z" fill="#B8AFA3" />
        <path d="M985.51 1018.94C981.298 1019.19 979.228 1024.97 981.621 1027.24C984.086 1029.59 988.738 1026.16 988.533 1022.13C988.43 1020.26 987.197 1018.95 985.524 1018.94" fill="#B8AFA3" />
        <path d="M971.744 1018.58C967.136 1018.85 964.949 1025.08 967.606 1027.54C970.409 1030.13 975.384 1026.48 975.09 1022.03C974.958 1020.01 973.579 1018.58 971.759 1018.58" fill="#B8AFA3" />
        <path d="M900.128 1018.58C895.314 1018.85 893.436 1025.08 896.385 1027.54C899.511 1030.15 904.501 1026.49 903.885 1022.03C903.606 1020.01 902.065 1018.58 900.128 1018.58Z" fill="#B8AFA3" />
        <path d="M885.188 1018.58C880.33 1018.85 878.511 1025.08 881.519 1027.54C884.718 1030.15 889.693 1026.49 889.018 1022.03C888.71 1020.01 887.14 1018.58 885.188 1018.58Z" fill="#B8AFA3" />
        <path d="M870.292 1018.58C865.611 1018.83 863.688 1024.57 866.389 1027.26C869.133 1030 874.137 1027.29 874.255 1022.99C874.328 1020.52 872.582 1018.58 870.278 1018.58" fill="#B8AFA3" />
        <path d="M855.265 1018.58C850.539 1018.83 848.69 1024.57 851.449 1027.26C854.252 1030 859.271 1027.29 859.33 1022.99C859.374 1020.52 857.583 1018.58 855.265 1018.58Z" fill="#B8AFA3" />
        <path d="M840.105 1018.58C835.35 1018.83 833.545 1024.57 836.363 1027.26C839.224 1029.99 844.243 1027.29 844.258 1022.99C844.258 1020.52 842.438 1018.58 840.105 1018.58Z" fill="#B8AFA3" />
        <path d="M824.828 1018.58C820.014 1018.83 818.268 1024.57 821.159 1027.26C824.167 1030.06 829.127 1027.39 829.083 1022.99C829.054 1020.52 827.19 1018.58 824.842 1018.58" fill="#B8AFA3" />
        <path d="M809.433 1018.58C804.59 1018.83 802.903 1024.57 805.838 1027.26C808.905 1030.06 813.865 1027.39 813.762 1022.99C813.704 1020.52 811.811 1018.58 809.433 1018.58Z" fill="#B8AFA3" />
        <path d="M793.906 1018.58C789.049 1018.83 787.434 1024.57 790.414 1027.26C793.525 1030.06 798.47 1027.39 798.324 1022.99C798.236 1020.48 796.343 1018.58 793.906 1018.58Z" fill="#B8AFA3" />
        <path d="M471.559 1018.58C467.494 1018.82 467.215 1024.13 470.223 1026.95C473.144 1029.69 476.916 1028.28 476.857 1024.48C476.813 1021.46 474.23 1018.58 471.559 1018.6" fill="#B8AFA3" />
        <path d="M457.647 1018.58C453.64 1018.82 453.435 1024.13 456.443 1026.95C459.364 1029.68 463.077 1028.28 462.974 1024.48C462.886 1021.46 460.303 1018.58 457.661 1018.6" fill="#B8AFA3" />
        <path d="M443.896 1018.58C439.933 1018.82 439.816 1024.13 442.824 1026.95C445.745 1029.68 449.399 1028.28 449.237 1024.48C449.105 1021.46 446.523 1018.58 443.91 1018.6" fill="#B8AFA3" />
        <path d="M430.321 1018.58C426.417 1018.82 426.358 1024.13 429.367 1026.95C432.287 1029.68 435.868 1028.28 435.663 1024.48C435.487 1021.45 432.904 1018.58 430.321 1018.6" fill="#B8AFA3" />
        <path d="M416.922 1018.58C413.077 1018.82 413.092 1024.13 416.1 1026.95C419.021 1029.68 422.528 1028.27 422.264 1024.48C422.058 1021.45 419.461 1018.58 416.922 1018.6" fill="#B8AFA3" />
        <path d="M403.714 1018.58C399.913 1018.82 399.986 1024.12 403.01 1026.95C405.783 1029.55 409.071 1028.46 409.1 1024.95C409.1 1021.8 406.4 1018.6 403.729 1018.6" fill="#B8AFA3" />
        <path d="M390.55 1018.58C386.823 1018.82 386.984 1024.13 389.978 1026.95C392.737 1029.55 395.965 1028.46 395.921 1024.95C395.892 1021.8 393.177 1018.58 390.535 1018.6" fill="#B8AFA3" />
        <path d="M377.724 1018.58C373.82 1018.83 374.334 1024.57 377.636 1027.26C380.512 1029.6 383.462 1028.09 383.08 1024.47C382.757 1021.43 380.145 1018.57 377.724 1018.58Z" fill="#B8AFA3" />
        <path d="M365.103 1018.58C361.272 1018.83 361.845 1024.57 365.132 1027.26C368.009 1029.6 370.885 1028.09 370.459 1024.47C370.092 1021.43 367.495 1018.57 365.103 1018.58Z" fill="#B8AFA3" />
        <path d="M352.687 1018.58C348.901 1018.83 349.547 1024.57 352.834 1027.26C355.696 1029.6 358.514 1028.09 358.029 1024.47C357.633 1021.43 355.021 1018.57 352.673 1018.58" fill="#B8AFA3" />
        <path d="M340.448 1018.58C336.75 1018.83 337.484 1024.57 340.741 1027.26C343.398 1029.44 346.069 1028.24 345.849 1024.94C345.643 1021.78 342.913 1018.57 340.448 1018.58Z" fill="#B8AFA3" />
        <path d="M1344.02 1002.98C1341.76 1003.35 1338.32 1011.91 1339.2 1012.8C1340.25 1013.87 1344.36 1006.83 1344.43 1003.83C1344.43 1003.28 1344.3 1002.98 1344 1002.98" fill="#B8AFA3" />
        <path d="M1328.14 1002.98C1325.47 1003.35 1322.24 1011.91 1323.38 1012.8C1324.76 1013.87 1328.96 1006.84 1328.74 1003.83C1328.7 1003.28 1328.49 1002.98 1328.14 1002.98Z" fill="#B8AFA3" />
        <path d="M1322.21 1002.98C1319.41 1003.35 1316.24 1011.91 1317.48 1012.8C1318.97 1013.89 1323.19 1006.84 1322.87 1003.83C1322.81 1003.28 1322.59 1002.98 1322.21 1002.98Z" fill="#B8AFA3" />
        <path d="M1315.96 1002.98C1313.01 1003.35 1309.93 1011.91 1311.25 1012.8C1312.85 1013.87 1317.1 1006.83 1316.66 1003.83C1316.59 1003.28 1316.34 1002.98 1315.94 1002.98" fill="#B8AFA3" />
        <path d="M1309.4 1002.98C1307.86 1003.16 1306.18 1005.87 1305.44 1007.44C1304.25 1009.95 1303.92 1012.3 1304.72 1012.8C1306.42 1013.87 1310.69 1006.83 1310.16 1003.83C1310.06 1003.28 1309.81 1002.98 1309.4 1002.98Z" fill="#B8AFA3" />
        <path d="M1302.52 1002.98C1300.92 1003.16 1299.24 1005.87 1298.49 1007.44C1297.31 1009.95 1297.04 1012.3 1297.88 1012.8C1299.7 1013.89 1304 1006.84 1303.35 1003.83C1303.23 1003.28 1302.96 1002.98 1302.52 1002.98Z" fill="#B8AFA3" />
        <path d="M988.709 1002.98C984.116 1003.25 981.929 1009.57 984.556 1012.07C987.285 1014.65 992.319 1010.89 992.04 1006.49C991.908 1004.44 990.543 1003 988.709 1003" fill="#B8AFA3" />
        <path d="M974.664 1003.17C970.203 1003.44 968.148 1009.51 970.731 1011.92C973.417 1014.42 978.275 1010.79 977.952 1006.54C977.805 1004.55 976.455 1003.17 974.664 1003.17Z" fill="#B8AFA3" />
        <path d="M931.68 1002.98C926.896 1003.25 924.929 1009.57 927.806 1012.07C930.785 1014.64 935.848 1010.88 935.334 1006.49C935.099 1004.44 933.588 1003 931.665 1003" fill="#B8AFA3" />
        <path d="M917.034 1002.98C912.205 1003.25 910.298 1009.57 913.233 1012.07C916.359 1014.71 921.363 1011.01 920.776 1006.49C920.512 1004.44 918.971 1003 917.034 1003" fill="#B8AFA3" />
        <path d="M902.241 1002.98C897.369 1003.25 895.519 1009.57 898.513 1012.07C901.492 1014.53 906.306 1011.29 906.101 1006.96C905.983 1004.66 904.369 1002.98 902.226 1002.98" fill="#B8AFA3" />
        <path d="M887.14 1002.98C882.223 1003.25 880.433 1009.57 883.5 1012.07C886.538 1014.53 891.366 1011.29 891.102 1006.96C890.955 1004.66 889.297 1002.98 887.14 1002.98Z" fill="#B8AFA3" />
        <path d="M872.068 1002.98C867.328 1003.25 865.435 1009.04 868.179 1011.77C870.982 1014.55 876.03 1011.8 876.118 1007.44C876.177 1004.94 874.387 1002.98 872.068 1002.98Z" fill="#B8AFA3" />
        <path d="M856.85 1002.98C852.065 1003.25 850.231 1009.04 853.034 1011.77C855.896 1014.55 860.944 1011.8 860.988 1007.44C861.017 1004.94 859.198 1002.98 856.85 1002.98Z" fill="#B8AFA3" />
        <path d="M841.514 1002.98C836.7 1003.25 834.91 1009.04 837.771 1011.77C840.692 1014.55 845.755 1011.8 845.74 1007.44C845.74 1004.94 843.876 1002.98 841.514 1002.98Z" fill="#B8AFA3" />
        <path d="M826.06 1002.98C821.188 1003.25 819.442 1009.04 822.377 1011.77C825.429 1014.62 830.434 1011.91 830.375 1007.44C830.346 1004.94 828.438 1002.98 826.06 1002.98Z" fill="#B8AFA3" />
        <path d="M810.475 1002.98C805.573 1003.25 803.886 1009.04 806.88 1011.77C809.991 1014.62 814.995 1011.91 814.878 1007.44C814.804 1004.94 812.882 1002.98 810.475 1002.98Z" fill="#B8AFA3" />
        <path d="M794.772 1002.98C789.856 1003.25 788.242 1009.04 791.265 1011.77C794.42 1014.62 799.424 1011.91 799.248 1007.44C799.145 1004.91 797.223 1002.98 794.758 1002.98" fill="#B8AFA3" />
        <path d="M778.791 1002.98C773.845 1003.25 772.275 1009.04 775.356 1011.77C778.497 1014.56 783.575 1011.8 783.355 1007.44C783.223 1004.94 781.212 1002.98 778.776 1002.98" fill="#B8AFA3" />
        <path d="M483.094 1003.17C478.985 1003.41 478.618 1008.52 481.582 1011.33C484.4 1014 488.157 1012.63 488.186 1008.91C488.201 1005.96 485.735 1003.17 483.109 1003.17" fill="#B8AFA3" />
        <path d="M468.638 1002.98C464.529 1003.23 464.192 1008.6 467.186 1011.45C470.106 1014.22 473.951 1012.8 473.936 1008.94C473.922 1005.87 471.339 1002.97 468.638 1002.97" fill="#B8AFA3" />
        <path d="M454.55 1002.98C450.485 1003.23 450.221 1008.6 453.229 1011.45C456.15 1014.22 459.936 1012.8 459.863 1008.94C459.804 1005.87 457.221 1002.97 454.55 1002.97" fill="#B8AFA3" />
        <path d="M440.638 1002.98C436.631 1003.23 436.44 1008.6 439.434 1011.45C442.355 1014.22 446.068 1012.8 445.95 1008.94C445.862 1005.87 443.265 1002.97 440.638 1002.97" fill="#B8AFA3" />
        <path d="M426.901 1002.98C422.954 1003.23 422.822 1008.6 425.83 1011.45C428.75 1014.22 432.39 1012.8 432.229 1008.94C432.096 1005.87 429.514 1002.97 426.901 1002.97" fill="#B8AFA3" />
        <path d="M413.356 1002.98C409.217 1003.25 409.423 1009.04 412.769 1011.77C415.836 1014.28 419.182 1012.39 418.639 1008.46C418.228 1005.54 415.763 1002.98 413.356 1002.98Z" fill="#B8AFA3" />
        <path d="M399.986 1002.98C395.892 1003.25 396.171 1009.04 399.502 1011.77C402.408 1014.15 405.563 1012.63 405.314 1008.96C405.108 1005.89 402.511 1002.98 399.986 1002.98Z" fill="#B8AFA3" />
        <path d="M386.661 1002.98C382.655 1003.25 383.007 1009.04 386.324 1011.77C389.215 1014.15 392.297 1012.63 392.003 1008.96C391.754 1005.89 389.171 1002.98 386.676 1002.98" fill="#B8AFA3" />
        <path d="M373.688 1002.98C369.74 1003.25 370.166 1009.04 373.468 1011.77C376.344 1014.15 379.353 1012.63 379.015 1008.96C378.736 1005.89 376.139 1002.98 373.688 1002.98Z" fill="#B8AFA3" />
        <path d="M360.92 1002.98C357.046 1003.25 357.53 1009.04 360.818 1011.77C363.694 1014.17 366.629 1012.63 366.247 1008.96C365.925 1005.89 363.342 1002.98 360.92 1002.98Z" fill="#B8AFA3" />
        <path d="M348.358 1002.98C344.528 1003.25 345.085 1009.04 348.358 1011.77C351.22 1014.15 354.096 1012.63 353.671 1008.96C353.318 1005.89 350.735 1002.98 348.343 1002.98" fill="#B8AFA3" />
        <path d="M335.987 1002.98C332.244 1003.25 332.875 1009.04 336.133 1011.77C338.79 1014 341.519 1012.77 341.343 1009.43C341.182 1006.23 338.481 1002.98 335.987 1002.98Z" fill="#B8AFA3" />
        <path d="M323.835 1002.98C320.152 1003.25 320.871 1009.04 324.099 1011.77C326.726 1013.99 329.397 1012.76 329.192 1009.43C329.001 1006.23 326.301 1002.98 323.835 1002.98Z" fill="#B8AFA3" />
        <path d="M1350.93 987.178C1348.64 987.545 1345.41 996.218 1346.34 997.128C1347.42 998.199 1351.38 991.067 1351.38 988.044C1351.38 987.471 1351.24 987.178 1350.94 987.178" fill="#B8AFA3" />
        <path d="M1334.87 987.178C1332.17 987.545 1329.14 996.218 1330.33 997.128C1331.75 998.199 1335.81 991.067 1335.49 988.044C1335.43 987.471 1335.23 987.178 1334.86 987.178" fill="#B8AFA3" />
        <path d="M1328.87 987.178C1326.03 987.545 1323.06 996.218 1324.35 997.128C1325.88 998.214 1329.97 991.067 1329.56 988.044C1329.49 987.471 1329.25 987.178 1328.87 987.178Z" fill="#B8AFA3" />
        <path d="M1322.56 987.178C1319.57 987.545 1316.68 996.218 1318.06 997.128C1319.7 998.199 1323.81 991.067 1323.3 988.044C1323.19 987.471 1322.94 987.178 1322.55 987.178" fill="#B8AFA3" />
        <path d="M991.688 987.178C987.036 987.457 984.893 993.855 987.594 996.379C990.455 999.05 995.445 995.293 995.093 990.714C994.931 988.631 993.537 987.178 991.688 987.178Z" fill="#B8AFA3" />
        <path d="M934.028 987.178C929.17 987.457 927.248 993.87 930.198 996.379C933.323 999.036 938.342 995.279 937.77 990.714C937.506 988.631 935.965 987.178 934.028 987.178Z" fill="#B8AFA3" />
        <path d="M919.221 987.178C914.319 987.457 912.44 993.87 915.464 996.379C918.428 998.859 923.286 995.572 923.08 991.199C922.977 988.865 921.348 987.178 919.221 987.178Z" fill="#B8AFA3" />
        <path d="M904.266 987.178C899.32 987.457 897.501 993.87 900.568 996.379C903.591 998.859 908.449 995.572 908.199 991.199C908.067 988.865 906.409 987.178 904.251 987.178" fill="#B8AFA3" />
        <path d="M888.989 987.178C883.999 987.457 882.238 993.87 885.364 996.379C888.446 998.859 893.318 995.572 893.01 991.199C892.848 988.865 891.161 987.178 888.974 987.178" fill="#B8AFA3" />
        <path d="M873.741 987.178C868.927 987.442 867.049 993.327 869.867 996.1C872.787 998.977 877.806 996.218 877.865 991.712C877.909 989.174 876.089 987.192 873.741 987.192" fill="#B8AFA3" />
        <path d="M858.376 987.178C853.533 987.442 851.698 993.327 854.575 996.1C857.554 998.977 862.573 996.218 862.588 991.712C862.588 989.174 860.739 987.192 858.376 987.192" fill="#B8AFA3" />
        <path d="M842.864 987.178C837.977 987.442 836.201 993.327 839.136 996.1C842.174 998.977 847.208 996.218 847.164 991.712C847.149 989.174 845.256 987.192 842.864 987.192" fill="#B8AFA3" />
        <path d="M827.234 987.178C822.289 987.442 820.557 993.327 823.551 996.1C826.647 998.962 831.696 996.218 831.622 991.712C831.578 989.174 829.641 987.192 827.234 987.192" fill="#B8AFA3" />
        <path d="M811.488 987.178C806.513 987.442 804.84 993.327 807.877 996.1C811.033 998.962 816.096 996.218 815.949 991.712C815.876 989.174 813.909 987.192 811.473 987.192" fill="#B8AFA3" />
        <path d="M795.594 987.178C790.604 987.442 788.99 993.327 792.087 996.1C795.286 998.962 800.334 996.218 800.158 991.712C800.055 989.13 798.089 987.192 795.609 987.192" fill="#B8AFA3" />
        <path d="M779.378 988.88C776.032 989.056 774.99 992.975 777.074 994.809C779.245 996.732 782.621 994.897 782.459 991.874C782.371 990.187 781.021 988.88 779.378 988.88Z" fill="#B8AFA3" />
        <path d="M480.423 987.178C476.196 987.427 475.727 992.872 478.75 995.778C481.685 998.595 485.647 997.142 485.706 993.239C485.765 990.128 483.197 987.178 480.423 987.178Z" fill="#B8AFA3" />
        <path d="M465.85 987.178C461.682 987.427 461.271 992.872 464.295 995.778C467.215 998.581 471.119 997.142 471.148 993.239C471.148 990.128 468.594 987.178 465.85 987.178Z" fill="#B8AFA3" />
        <path d="M451.6 987.178C447.227 987.442 447.139 993.327 450.529 996.1C453.64 998.639 457.25 996.731 456.869 992.74C456.59 989.775 454.124 987.178 451.6 987.192" fill="#B8AFA3" />
        <path d="M437.541 987.178C433.226 987.442 433.212 993.327 436.587 996.1C439.684 998.639 443.235 996.717 442.81 992.74C442.501 989.775 440.036 987.178 437.541 987.192" fill="#B8AFA3" />
        <path d="M423.658 987.178C419.402 987.442 419.461 993.327 422.822 996.1C425.903 998.639 429.396 996.717 428.927 992.74C428.589 989.775 426.124 987.178 423.658 987.192" fill="#B8AFA3" />
        <path d="M409.951 987.178C405.754 987.442 405.886 993.327 409.232 996.1C412.314 998.639 415.719 996.717 415.22 992.74C414.838 989.775 412.387 987.178 409.951 987.192" fill="#B8AFA3" />
        <path d="M396.45 987.178C392.297 987.442 392.487 993.327 395.848 996.1C398.754 998.507 401.968 996.952 401.762 993.239C401.586 990.128 399.018 987.178 396.45 987.178Z" fill="#B8AFA3" />
        <path d="M382.978 987.178C378.898 987.442 379.177 993.327 382.508 996.1C385.399 998.507 388.54 996.952 388.29 993.239C388.085 990.128 385.502 987.178 382.978 987.178Z" fill="#B8AFA3" />
        <path d="M369.858 987.178C365.851 987.442 366.189 993.327 369.505 996.1C372.382 998.507 375.449 996.952 375.156 993.239C374.921 990.128 372.338 987.178 369.858 987.178Z" fill="#B8AFA3" />
        <path d="M356.943 987.178C352.995 987.442 353.406 993.327 356.694 996.1C359.555 998.507 362.564 996.966 362.226 993.239C361.948 990.128 359.379 987.178 356.929 987.178" fill="#B8AFA3" />
        <path d="M344.234 987.178C340.345 987.442 340.815 993.327 344.102 996.1C346.949 998.507 349.899 996.952 349.517 993.239C349.209 990.128 346.641 987.178 344.234 987.178Z" fill="#B8AFA3" />
        <path d="M331.716 987.178C327.915 987.442 328.458 993.327 331.716 996.1C334.548 998.507 337.41 996.966 336.999 993.239C336.647 990.128 334.079 987.178 331.731 987.178" fill="#B8AFA3" />
        <path d="M319.447 987.178C315.705 987.442 316.321 993.327 319.565 996.1C322.192 998.346 324.907 997.098 324.745 993.723C324.598 990.48 321.928 987.178 319.447 987.192" fill="#B8AFA3" />
        <path d="M307.384 987.178C303.715 987.442 304.405 993.327 307.619 996.1C310.231 998.346 312.873 997.098 312.682 993.723C312.491 990.48 309.82 987.178 307.399 987.192" fill="#B8AFA3" />
        <path d="M1335.12 971.387C1332.28 971.754 1329.49 980.545 1330.81 981.469C1332.38 982.57 1336.33 975.35 1335.84 972.268C1335.76 971.695 1335.51 971.402 1335.12 971.402" fill="#B8AFA3" />
        <path d="M936.215 971.387C931.328 971.666 929.435 978.153 932.428 980.706C935.393 983.23 940.25 979.899 940.06 975.467C939.957 973.104 938.343 971.387 936.215 971.387Z" fill="#B8AFA3" />
        <path d="M921.26 971.387C916.329 971.666 914.495 978.153 917.533 980.706C920.556 983.23 925.428 979.899 925.193 975.467C925.076 973.104 923.418 971.387 921.26 971.387Z" fill="#B8AFA3" />
        <path d="M906.159 971.387C901.184 971.666 899.394 978.153 902.505 980.706C905.587 983.23 910.459 979.899 910.18 975.467C910.034 973.104 908.346 971.387 906.159 971.387Z" fill="#B8AFA3" />
        <path d="M890.721 971.387C885.702 971.666 883.97 978.153 887.125 980.706C890.266 983.23 895.153 979.899 894.815 975.467C894.639 973.104 892.907 971.387 890.721 971.387Z" fill="#B8AFA3" />
        <path d="M875.326 971.387C870.483 971.651 868.619 977.61 871.466 980.413C874.372 983.26 879.479 980.442 879.523 975.966C879.538 973.398 877.703 971.387 875.326 971.387Z" fill="#B8AFA3" />
        <path d="M859.785 971.387C854.898 971.651 853.092 977.61 855.998 980.413C858.948 983.26 864.084 980.442 864.07 975.966C864.07 973.398 862.177 971.387 859.785 971.387Z" fill="#B8AFA3" />
        <path d="M844.126 971.387C839.21 971.651 837.449 977.61 840.398 980.413C843.407 983.26 848.558 980.442 848.499 975.966C848.47 973.398 846.547 971.387 844.126 971.387Z" fill="#B8AFA3" />
        <path d="M828.335 971.387C823.36 971.651 821.628 977.61 824.651 980.413C827.807 983.333 832.884 980.545 832.782 975.966C832.723 973.398 830.771 971.387 828.335 971.387Z" fill="#B8AFA3" />
        <path d="M812.412 971.387C807.393 971.651 805.72 977.61 808.802 980.413C812.001 983.333 817.108 980.545 816.947 975.966C816.859 973.398 814.863 971.387 812.412 971.387Z" fill="#B8AFA3" />
        <path d="M796.372 971.387C791.353 971.651 789.738 977.61 792.85 980.413C796.093 983.333 801.185 980.545 800.98 975.966C800.862 973.354 798.881 971.387 796.372 971.387Z" fill="#B8AFA3" />
        <path d="M477.957 971.387C473.437 971.651 473.144 977.61 476.534 980.413C479.66 982.996 483.475 981.058 483.226 977.008C483.035 974.014 480.57 971.387 477.957 971.387Z" fill="#B8AFA3" />
        <path d="M463.238 971.387C458.777 971.651 458.556 977.61 461.932 980.413C465.058 982.996 468.8 981.058 468.506 977.008C468.286 974.014 465.821 971.387 463.238 971.387Z" fill="#B8AFA3" />
        <path d="M448.841 971.387C444.439 971.651 444.277 977.61 447.652 980.413C450.764 982.996 454.447 981.058 454.11 977.008C453.86 974.014 451.395 971.387 448.841 971.387Z" fill="#B8AFA3" />
        <path d="M434.635 971.387C430.291 971.651 430.203 977.61 433.564 980.413C436.661 982.996 440.271 981.058 439.904 977.008C439.625 974.014 437.16 971.387 434.635 971.387Z" fill="#B8AFA3" />
        <path d="M420.606 971.387C416.306 971.651 416.306 977.61 419.652 980.413C422.734 982.996 426.285 981.058 425.859 977.008C425.551 974.014 423.086 971.387 420.606 971.387Z" fill="#B8AFA3" />
        <path d="M406.767 971.387C402.54 971.651 402.584 977.61 405.93 980.413C409.012 982.996 412.475 981.058 412.02 977.008C411.683 974.014 409.232 971.387 406.767 971.387Z" fill="#B8AFA3" />
        <path d="M393.118 971.387C388.936 971.651 389.039 977.61 392.385 980.413C395.452 982.996 398.856 981.058 398.357 977.008C397.991 974.014 395.54 971.387 393.118 971.387Z" fill="#B8AFA3" />
        <path d="M379.499 971.387C375.39 971.651 375.581 977.61 378.898 980.413C381.789 982.863 384.973 981.293 384.783 977.522C384.621 974.366 382.053 971.402 379.499 971.402" fill="#B8AFA3" />
        <path d="M366.262 971.387C362.226 971.651 362.476 977.61 365.763 980.413C368.64 982.863 371.751 981.293 371.516 977.522C371.325 974.366 368.757 971.402 366.248 971.402" fill="#B8AFA3" />
        <path d="M353.201 971.387C349.224 971.651 349.547 977.61 352.819 980.413C355.681 982.863 358.734 981.293 358.455 977.522C358.22 974.366 355.666 971.402 353.201 971.402" fill="#B8AFA3" />
        <path d="M340.375 971.387C336.456 971.651 336.838 977.61 340.096 980.413C342.943 982.849 345.937 981.278 345.614 977.522C345.35 974.366 342.796 971.402 340.375 971.402" fill="#B8AFA3" />
        <path d="M327.724 971.387C323.894 971.651 324.349 977.61 327.578 980.413C330.41 982.863 333.316 981.293 332.963 977.522C332.655 974.366 330.116 971.387 327.739 971.402" fill="#B8AFA3" />
        <path d="M315.323 971.387C311.552 971.651 312.08 977.61 315.294 980.413C318.097 982.849 320.944 981.278 320.548 977.522C320.21 974.366 317.686 971.402 315.338 971.402" fill="#B8AFA3" />
        <path d="M303.143 971.387C299.445 971.651 300.032 977.61 303.216 980.413C305.814 982.687 308.499 981.425 308.367 978.006C308.235 974.733 305.594 971.387 303.143 971.402" fill="#B8AFA3" />
        <path d="M291.05 971.387C287.425 971.651 288.071 977.61 291.241 980.413C293.824 982.702 296.451 981.44 296.26 978.006C296.084 974.733 293.457 971.387 291.05 971.402" fill="#B8AFA3" />
        <path d="M1372.75 955.186C1371.7 955.391 1370.15 958.678 1369.71 959.823C1368.2 963.624 1368.26 965.297 1368.67 965.488C1370.01 966.133 1373.84 957.284 1373.05 955.42C1372.99 955.274 1372.87 955.186 1372.75 955.186Z" fill="#B8AFA3" />
        <path d="M1363.61 955.186C1361.31 955.567 1358.46 964.475 1359.44 965.4C1360.62 966.515 1364.27 959.177 1364.11 956.066C1364.08 955.479 1363.9 955.186 1363.61 955.186Z" fill="#B8AFA3" />
        <path d="M1320.35 956.521C1318.1 956.77 1316.08 962.86 1317.23 963.99C1318.36 965.091 1321.11 960.776 1321.12 957.915C1321.12 957.034 1320.84 956.521 1320.36 956.521" fill="#B8AFA3" />
        <path d="M1297.14 956.521C1294.63 956.77 1292.71 962.86 1294.06 963.99C1295.44 965.12 1298.26 960.864 1298.08 957.915C1298.04 957.034 1297.69 956.521 1297.14 956.521Z" fill="#B8AFA3" />
        <path d="M938.298 955.391C933.558 955.655 931.768 961.98 934.703 964.475C937.609 966.955 942.32 963.697 942.099 959.353C941.982 957.064 940.382 955.391 938.313 955.391" fill="#B8AFA3" />
        <path d="M923.212 955.186C918.237 955.464 916.432 962.039 919.528 964.637C922.61 967.205 927.497 963.815 927.218 959.309C927.072 956.917 925.384 955.186 923.212 955.186Z" fill="#B8AFA3" />
        <path d="M907.964 955.186C902.931 955.464 901.184 962.039 904.339 964.637C907.48 967.205 912.382 963.815 912.059 959.309C911.883 956.917 910.166 955.186 907.964 955.186Z" fill="#B8AFA3" />
        <path d="M892.379 955.186C887.301 955.464 885.599 962.039 888.813 964.637C891.997 967.205 896.914 963.815 896.547 959.309C896.356 956.917 894.595 955.186 892.379 955.186Z" fill="#B8AFA3" />
        <path d="M876.837 955.185C871.951 955.449 870.101 961.496 872.993 964.328C875.942 967.219 881.093 964.357 881.108 959.808C881.108 957.21 879.23 955.17 876.837 955.17" fill="#B8AFA3" />
        <path d="M861.15 955.185C856.219 955.449 854.428 961.496 857.363 964.328C860.372 967.219 865.537 964.357 865.493 959.808C865.479 957.21 863.556 955.17 861.135 955.17" fill="#B8AFA3" />
        <path d="M845.329 955.185C840.369 955.449 838.608 961.496 841.616 964.328C844.669 967.219 849.849 964.357 849.776 959.808C849.732 957.21 847.78 955.17 845.344 955.17" fill="#B8AFA3" />
        <path d="M829.392 955.185C824.373 955.449 822.656 961.496 825.723 964.328C828.922 967.292 834.044 964.46 833.912 959.808C833.838 957.21 831.857 955.17 829.392 955.17" fill="#B8AFA3" />
        <path d="M813.322 955.185C808.259 955.449 806.586 961.496 809.712 964.328C812.955 967.292 818.106 964.46 817.915 959.808C817.813 957.21 815.802 955.17 813.322 955.17" fill="#B8AFA3" />
        <path d="M797.106 955.185C792.028 955.449 790.414 961.496 793.569 964.328C796.856 967.292 801.993 964.46 801.772 959.808C801.64 957.166 799.63 955.17 797.091 955.17" fill="#B8AFA3" />
        <path d="M490.476 955.185C485.853 955.449 485.442 961.496 488.847 964.328C492.178 967.102 496.272 964.724 495.7 960.336C495.319 957.489 492.985 955.17 490.476 955.17" fill="#B8AFA3" />
        <path d="M475.609 955.185C471.045 955.449 470.693 961.496 474.083 964.328C477.224 966.955 481.083 964.974 480.863 960.865C480.702 957.827 478.236 955.17 475.595 955.17" fill="#B8AFA3" />
        <path d="M460.728 955.185C456.223 955.449 455.93 961.496 459.32 964.328C462.445 966.955 466.246 964.974 465.982 960.865C465.791 957.827 463.326 955.17 460.714 955.17" fill="#B8AFA3" />
        <path d="M446.2 955.185C441.738 955.449 441.533 961.496 444.908 964.328C448.019 966.955 451.762 964.974 451.468 960.865C451.248 957.827 448.797 955.17 446.214 955.17" fill="#B8AFA3" />
        <path d="M431.862 955.185C427.459 955.449 427.312 961.496 430.673 964.328C433.784 966.955 437.438 964.974 437.101 960.865C436.851 957.827 434.401 955.17 431.847 955.17" fill="#B8AFA3" />
        <path d="M417.685 955.185C413.341 955.449 413.268 961.496 416.614 964.328C419.71 966.955 423.306 964.974 422.924 960.865C422.645 957.827 420.195 955.17 417.685 955.17" fill="#B8AFA3" />
        <path d="M403.714 955.185C399.443 955.449 399.414 961.496 402.76 964.328C405.842 966.955 409.364 964.974 408.953 960.865C408.645 957.827 406.209 955.17 403.729 955.17" fill="#B8AFA3" />
        <path d="M389.934 955.185C385.707 955.449 385.737 961.496 389.068 964.328C392.135 966.94 395.598 964.974 395.144 960.865C394.806 957.827 392.37 955.17 389.919 955.17" fill="#B8AFA3" />
        <path d="M376.183 955.185C372.03 955.449 372.147 961.496 375.449 964.328C378.34 966.808 381.583 965.208 381.437 961.378C381.319 958.194 378.766 955.17 376.197 955.17" fill="#B8AFA3" />
        <path d="M362.813 955.185C358.734 955.449 358.91 961.496 362.182 964.328C365.059 966.808 368.229 965.208 368.038 961.378C367.876 958.194 365.338 955.17 362.813 955.17" fill="#B8AFA3" />
        <path d="M349.635 955.185C345.614 955.449 345.849 961.496 349.121 964.328C351.983 966.823 355.094 965.223 354.859 961.378C354.669 958.194 352.13 955.17 349.635 955.17" fill="#B8AFA3" />
        <path d="M336.676 955.185C332.714 955.449 333.007 961.496 336.265 964.328C339.098 966.808 342.15 965.208 341.886 961.378C341.666 958.194 339.142 955.17 336.691 955.17" fill="#B8AFA3" />
        <path d="M323.909 955.185C320.034 955.449 320.401 961.496 323.615 964.328C326.433 966.808 329.397 965.223 329.089 961.378C328.825 958.12 326.359 955.17 323.909 955.17" fill="#B8AFA3" />
        <path d="M311.376 955.185C307.575 955.449 308 961.496 311.2 964.328C313.988 966.808 316.894 965.208 316.542 961.378C316.248 958.179 313.739 955.17 311.376 955.17" fill="#B8AFA3" />
        <path d="M299.078 955.185C295.335 955.449 295.834 961.496 299.004 964.328C301.587 966.647 304.332 965.355 304.244 961.877C304.17 958.56 301.558 955.17 299.078 955.17" fill="#B8AFA3" />
        <path d="M286.868 955.185C283.213 955.449 283.756 961.496 286.897 964.328C289.465 966.647 292.136 965.37 292.019 961.877C291.901 958.56 289.289 955.17 286.868 955.17" fill="#B8AFA3" />
        <path d="M275.142 955.582C271.825 955.831 272.383 961.408 275.274 964.02C277.622 966.148 280.044 964.974 279.897 961.76C279.75 958.693 277.358 955.582 275.157 955.582" fill="#B8AFA3" />
        <path d="M1374.23 938.822C1373.09 939.028 1371.62 942.359 1371.2 943.504C1369.79 947.334 1369.96 949.022 1370.42 949.213C1371.93 949.873 1375.58 940.935 1374.57 939.057C1374.5 938.91 1374.37 938.822 1374.23 938.822Z" fill="#B8AFA3" />
        <path d="M1369.45 938.822C1367.13 939.204 1364.5 948.2 1365.52 949.139C1366.74 950.269 1370.23 942.858 1369.98 939.703C1369.93 939.116 1369.76 938.822 1369.45 938.822Z" fill="#B8AFA3" />
        <path d="M1364.3 938.822C1361.83 939.204 1359.27 948.2 1360.38 949.139C1361.72 950.269 1365.25 942.873 1364.9 939.703C1364.83 939.116 1364.64 938.822 1364.31 938.822" fill="#B8AFA3" />
        <path d="M1285.74 938.822C1282.09 939.174 1279.77 947.481 1281.82 949.007C1283.85 950.519 1287.69 944.619 1287.22 940.715C1287.08 939.512 1286.53 938.822 1285.74 938.822Z" fill="#B8AFA3" />
        <path d="M1276.76 938.822C1273 939.174 1270.71 947.481 1272.87 949.007C1274.98 950.519 1278.86 944.619 1278.33 940.715C1278.17 939.512 1277.6 938.822 1276.76 938.822Z" fill="#B8AFA3" />
        <path d="M1267.48 938.822C1263.61 939.174 1261.38 947.481 1263.63 949.007C1265.83 950.519 1269.74 944.619 1269.13 940.715C1268.94 939.512 1268.34 938.822 1267.48 938.822Z" fill="#B8AFA3" />
        <path d="M940.295 938.822C935.32 939.101 933.5 945.749 936.596 948.361C939.663 950.944 944.55 947.54 944.286 942.99C944.139 940.583 942.466 938.822 940.295 938.822Z" fill="#B8AFA3" />
        <path d="M925.061 938.822C920.028 939.101 918.266 945.749 921.422 948.361C924.548 950.944 929.449 947.54 929.141 942.99C928.98 940.583 927.263 938.822 925.061 938.822Z" fill="#B8AFA3" />
        <path d="M909.667 938.822C904.589 939.101 902.872 945.749 906.086 948.361C909.27 950.944 914.187 947.54 913.834 942.99C913.644 940.583 911.897 938.822 909.681 938.822" fill="#B8AFA3" />
        <path d="M893.934 938.822C889.047 939.086 887.184 945.191 890.075 948.053C893.01 950.974 898.176 948.083 898.205 943.504C898.205 940.833 896.385 938.822 893.949 938.822" fill="#B8AFA3" />
        <path d="M878.246 938.822C873.315 939.086 871.496 945.191 874.431 948.053C877.425 950.974 882.605 948.083 882.59 943.504C882.59 940.833 880.712 938.822 878.246 938.822Z" fill="#B8AFA3" />
        <path d="M862.426 938.822C857.451 939.086 855.675 945.191 858.669 948.053C861.707 950.974 866.917 948.083 866.858 943.504C866.829 940.833 864.921 938.822 862.441 938.822" fill="#B8AFA3" />
        <path d="M846.459 938.822C841.44 939.086 839.709 945.191 842.746 948.053C845.916 951.047 851.067 948.2 850.95 943.504C850.891 940.833 848.954 938.822 846.445 938.822" fill="#B8AFA3" />
        <path d="M830.375 938.822C825.297 939.086 823.595 945.191 826.706 948.053C829.935 951.032 835.1 948.185 834.954 943.504C834.866 940.833 832.899 938.822 830.375 938.822Z" fill="#B8AFA3" />
        <path d="M814.159 938.822C809.052 939.086 807.393 945.191 810.548 948.053C813.836 951.032 819.016 948.185 818.811 943.504C818.693 940.833 816.697 938.822 814.159 938.822Z" fill="#B8AFA3" />
        <path d="M797.81 938.822C792.688 939.086 791.074 945.191 794.273 948.053C797.605 951.047 802.77 948.185 802.536 943.504C802.403 940.833 800.364 938.822 797.795 938.822" fill="#B8AFA3" />
        <path d="M488.392 938.822C483.725 939.086 483.241 945.191 486.66 948.053C489.991 950.856 494.159 948.464 493.616 944.032C493.264 941.156 490.916 938.808 488.392 938.808" fill="#B8AFA3" />
        <path d="M473.379 938.822C468.756 939.086 468.345 945.191 471.75 948.053C474.89 950.695 478.809 948.714 478.633 944.575C478.5 941.508 476.05 938.822 473.379 938.822Z" fill="#B8AFA3" />
        <path d="M458.38 938.822C453.816 939.086 453.464 945.191 456.854 948.053C459.98 950.695 463.84 948.714 463.619 944.575C463.458 941.508 461.007 938.822 458.366 938.822" fill="#B8AFA3" />
        <path d="M443.719 938.822C439.214 939.086 438.935 945.191 442.311 948.053C445.422 950.695 449.223 948.714 448.959 944.575C448.768 941.508 446.317 938.822 443.719 938.822Z" fill="#B8AFA3" />
        <path d="M429.235 938.822C424.788 939.086 424.568 945.191 427.929 948.053C431.025 950.695 434.753 948.714 434.459 944.575C434.239 941.508 431.803 938.822 429.22 938.822" fill="#B8AFA3" />
        <path d="M414.941 938.822C410.553 939.086 410.391 945.191 413.737 948.053C416.819 950.695 420.488 948.714 420.151 944.575C419.901 941.508 417.465 938.822 414.926 938.822" fill="#B8AFA3" />
        <path d="M400.838 938.822C396.523 939.086 396.42 945.191 399.752 948.053C402.819 950.695 406.414 948.714 406.047 944.575C405.783 941.508 403.347 938.822 400.838 938.822Z" fill="#B8AFA3" />
        <path d="M386.94 938.822C382.669 939.086 382.611 945.191 385.942 948.053C389.009 950.695 392.531 948.714 392.135 944.575C391.842 941.508 389.42 938.822 386.94 938.822Z" fill="#B8AFA3" />
        <path d="M373.072 938.822C368.874 939.086 368.904 945.191 372.191 948.053C375.229 950.695 378.678 948.714 378.237 944.575C377.915 941.508 375.493 938.822 373.072 938.822Z" fill="#B8AFA3" />
        <path d="M359.57 938.822C355.446 939.086 355.534 945.191 358.807 948.053C361.669 950.563 364.897 948.948 364.765 945.089C364.663 941.86 362.138 938.822 359.57 938.822Z" fill="#B8AFA3" />
        <path d="M346.274 938.822C342.209 939.086 342.356 945.191 345.614 948.053C348.461 950.563 351.616 948.963 351.455 945.089C351.308 941.86 348.798 938.822 346.274 938.822Z" fill="#B8AFA3" />
        <path d="M333.198 938.822C329.192 939.086 329.397 945.191 332.626 948.053C335.458 950.563 338.555 948.948 338.349 945.089C338.173 941.86 335.678 938.822 333.198 938.822Z" fill="#B8AFA3" />
        <path d="M320.313 938.822C316.395 939.086 316.659 945.191 319.873 948.053C322.676 950.563 325.699 948.948 325.45 945.089C325.244 941.801 322.793 938.822 320.313 938.822Z" fill="#B8AFA3" />
        <path d="M307.678 938.822C303.833 939.086 304.155 945.191 307.34 948.053C310.114 950.563 313.063 948.948 312.785 945.089C312.55 941.86 310.07 938.822 307.678 938.822Z" fill="#B8AFA3" />
        <path d="M295.262 938.822C291.49 939.086 291.872 945.191 295.027 948.053C297.772 950.563 300.663 948.948 300.34 945.089C300.076 941.86 297.61 938.822 295.262 938.822Z" fill="#B8AFA3" />
        <path d="M282.935 938.822C279.236 939.086 279.677 945.191 282.803 948.053C285.356 950.387 288.071 949.095 288.012 945.588C287.954 942.227 285.385 938.822 282.935 938.822Z" fill="#B8AFA3" />
        <path d="M271.004 938.822C267.379 939.086 267.892 945.191 270.989 948.053C273.513 950.387 276.169 949.095 276.067 945.588C275.979 942.227 273.425 938.822 271.018 938.822" fill="#B8AFA3" />
        <path d="M1374.92 922.253C1372.61 922.635 1370.17 931.734 1371.23 932.688C1372.43 933.788 1375.58 926.979 1375.5 923.457C1375.5 923.002 1375.39 922.253 1374.92 922.253Z" fill="#B8AFA3" />
        <path d="M1369.74 922.253C1367.28 922.635 1364.9 931.734 1366.05 932.688C1367.41 933.818 1370.8 926.348 1370.36 923.163C1370.27 922.562 1370.07 922.268 1369.74 922.253Z" fill="#B8AFA3" />
        <path d="M1364.2 922.253C1361.57 922.635 1359.27 931.734 1360.51 932.688C1361.98 933.818 1365.41 926.333 1364.89 923.163C1364.78 922.562 1364.56 922.268 1364.21 922.253" fill="#B8AFA3" />
        <path d="M1358.25 922.253C1355.49 922.635 1353.25 931.734 1354.57 932.688C1356.15 933.832 1359.63 926.348 1358.99 923.163C1358.87 922.562 1358.62 922.268 1358.25 922.253Z" fill="#B8AFA3" />
        <path d="M1323.84 922.253C1320.65 922.606 1318.32 931.015 1320.05 932.556C1321.75 934.067 1325.32 928.124 1325.06 924.176C1324.98 922.958 1324.53 922.253 1323.84 922.253Z" fill="#B8AFA3" />
        <path d="M1262.47 922.253C1258.74 922.576 1256.45 930.369 1258.59 932.379C1260.62 934.287 1264.49 929.342 1264.33 925.012C1264.27 923.31 1263.55 922.253 1262.47 922.253Z" fill="#B8AFA3" />
        <path d="M942.158 922.253C937.139 922.547 935.378 929.254 938.519 931.895C941.645 934.507 946.546 931.073 946.223 926.465C946.062 924.029 944.345 922.253 942.158 922.253Z" fill="#B8AFA3" />
        <path d="M926.793 922.253C921.73 922.547 919.998 929.254 923.197 931.895C926.367 934.507 931.298 931.073 930.946 926.465C930.755 924.029 929.009 922.253 926.793 922.253Z" fill="#B8AFA3" />
        <path d="M911.266 922.253C906.159 922.547 904.471 929.254 907.715 931.895C910.943 934.507 915.889 931.073 915.493 926.465C915.287 924.029 913.512 922.253 911.266 922.253Z" fill="#B8AFA3" />
        <path d="M895.402 922.253C890.471 922.532 888.637 928.696 891.572 931.587C894.566 934.537 899.746 931.616 899.731 926.994C899.731 924.337 897.824 922.253 895.402 922.253Z" fill="#B8AFA3" />
        <path d="M879.582 922.253C874.607 922.532 872.802 928.696 875.796 931.587C878.833 934.537 884.043 931.616 883.999 926.994C883.97 924.337 882.033 922.253 879.597 922.253" fill="#B8AFA3" />
        <path d="M863.63 922.253C858.611 922.532 856.85 928.696 859.887 931.587C862.984 934.537 868.208 931.616 868.12 926.994C868.062 924.337 866.095 922.253 863.63 922.253Z" fill="#B8AFA3" />
        <path d="M847.531 922.253C842.482 922.532 840.751 928.696 843.832 931.587C846.973 934.537 852.227 931.616 852.095 926.994C852.021 924.337 850.011 922.253 847.531 922.253Z" fill="#B8AFA3" />
        <path d="M831.3 922.253C826.192 922.532 824.49 928.696 827.645 931.587C830.918 934.61 836.128 931.734 835.952 926.994C835.849 924.337 833.809 922.253 831.314 922.253" fill="#B8AFA3" />
        <path d="M814.951 922.253C809.8 922.532 808.142 928.696 811.341 931.587C814.672 934.61 819.882 931.734 819.662 926.994C819.544 924.337 817.475 922.253 814.951 922.253Z" fill="#B8AFA3" />
        <path d="M798.456 922.253C793.29 922.532 791.69 928.696 794.919 931.587C798.294 934.61 803.504 931.734 803.24 926.994C803.093 924.293 801.039 922.253 798.456 922.253Z" fill="#B8AFA3" />
        <path d="M781.696 922.253C776.501 922.532 774.931 928.696 778.204 931.587C781.55 934.551 786.847 931.631 786.554 926.994C786.378 924.337 784.25 922.253 781.696 922.253Z" fill="#B8AFA3" />
        <path d="M471.309 922.253C466.657 922.532 466.173 928.696 469.578 931.587C472.909 934.419 477.062 931.998 476.519 927.522C476.167 924.616 473.834 922.239 471.309 922.239" fill="#B8AFA3" />
        <path d="M456.164 922.253C451.571 922.532 451.145 928.696 454.535 931.587C457.661 934.258 461.58 932.262 461.403 928.065C461.271 924.968 458.82 922.253 456.164 922.253Z" fill="#B8AFA3" />
        <path d="M441.386 922.253C436.837 922.532 436.484 928.696 439.86 931.587C442.971 934.258 446.816 932.262 446.61 928.065C446.449 924.968 444.013 922.253 441.386 922.253Z" fill="#B8AFA3" />
        <path d="M426.784 922.253C422.308 922.532 422 928.696 425.36 931.587C428.457 934.258 432.243 932.262 431.994 928.065C431.818 924.968 429.382 922.253 426.784 922.253Z" fill="#B8AFA3" />
        <path d="M412.373 922.253C407.955 922.532 407.706 928.696 411.052 931.587C414.134 934.258 417.847 932.247 417.568 928.065C417.362 924.968 414.926 922.253 412.373 922.253Z" fill="#B8AFA3" />
        <path d="M398.152 922.253C393.793 922.532 393.617 928.696 396.934 931.587C400.001 934.258 403.641 932.247 403.332 928.065C403.098 924.968 400.676 922.253 398.152 922.253Z" fill="#B8AFA3" />
        <path d="M384.122 922.253C379.808 922.532 379.676 928.696 382.992 931.587C386.045 934.258 389.626 932.247 389.273 928.065C389.009 924.968 386.602 922.253 384.108 922.253" fill="#B8AFA3" />
        <path d="M370.136 922.253C365.91 922.532 365.851 928.696 369.124 931.587C372.147 934.258 375.654 932.247 375.273 928.065C374.994 924.968 372.587 922.253 370.136 922.253Z" fill="#B8AFA3" />
        <path d="M356.532 922.253C352.364 922.532 352.364 928.696 355.622 931.587C358.469 934.126 361.757 932.497 361.669 928.593C361.61 925.335 359.101 922.253 356.518 922.253" fill="#B8AFA3" />
        <path d="M343.119 922.253C339.024 922.532 339.083 928.696 342.312 931.587C345.144 934.126 348.358 932.497 348.241 928.593C348.153 925.335 345.658 922.253 343.119 922.253Z" fill="#B8AFA3" />
        <path d="M329.926 922.253C325.875 922.532 325.993 928.696 329.207 931.587C332.024 934.111 335.165 932.497 335.018 928.593C334.886 925.335 332.42 922.253 329.911 922.253" fill="#B8AFA3" />
        <path d="M316.938 922.253C312.975 922.532 313.152 928.696 316.336 931.587C319.124 934.126 322.206 932.497 322.016 928.593C321.854 925.335 319.389 922.253 316.938 922.253Z" fill="#B8AFA3" />
        <path d="M304.2 922.253C300.31 922.532 300.545 928.696 303.701 931.587C306.46 934.126 309.468 932.497 309.248 928.593C309.057 925.335 306.606 922.253 304.2 922.253Z" fill="#B8AFA3" />
        <path d="M291.681 922.253C287.866 922.532 288.159 928.696 291.285 931.587C294.015 934.126 296.95 932.497 296.7 928.593C296.48 925.335 294.044 922.253 291.681 922.253Z" fill="#B8AFA3" />
        <path d="M279.251 922.253C275.347 922.547 275.993 929.254 279.31 931.895C282.128 934.141 284.769 932.057 284.182 928.065C283.727 924.968 281.423 922.239 279.251 922.253Z" fill="#B8AFA3" />
        <path d="M267.217 922.253C263.387 922.547 264.106 929.254 267.379 931.895C269.962 933.979 272.471 932.247 272.178 928.593C271.899 925.335 269.492 922.253 267.217 922.253Z" fill="#B8AFA3" />
        <path d="M255.418 922.253C251.676 922.547 252.439 929.254 255.682 931.895C258.236 933.979 260.687 932.247 260.349 928.593C260.056 925.335 257.663 922.253 255.433 922.253" fill="#B8AFA3" />
        <path d="M1369.22 905.494C1366.57 905.876 1364.48 915.077 1365.75 916.046C1367.22 917.146 1370.33 910.264 1369.96 906.727C1369.92 906.272 1369.76 905.509 1369.22 905.509" fill="#B8AFA3" />
        <path d="M1356.95 905.494C1354.03 905.876 1352.04 915.077 1353.5 916.046C1355.24 917.191 1358.59 909.633 1357.77 906.419C1357.61 905.817 1357.33 905.509 1356.95 905.509" fill="#B8AFA3" />
        <path d="M1328.55 905.494C1325.34 905.846 1323.18 914.344 1324.97 915.914C1326.73 917.44 1330.18 911.438 1329.83 907.446C1329.72 906.213 1329.25 905.509 1328.55 905.494Z" fill="#B8AFA3" />
        <path d="M1312.26 905.699C1308.94 906.037 1306.93 914.226 1308.84 915.737C1310.72 917.22 1314.14 911.423 1313.65 907.578C1313.51 906.389 1312.99 905.714 1312.26 905.714" fill="#B8AFA3" />
        <path d="M1303.79 905.494C1300.23 905.846 1298.17 914.344 1300.26 915.914C1302.3 917.455 1305.89 911.438 1305.32 907.446C1305.14 906.213 1304.58 905.509 1303.81 905.494" fill="#B8AFA3" />
        <path d="M1294.96 905.494C1291.27 905.846 1289.26 914.344 1291.44 915.914C1293.64 917.499 1297.22 911.555 1296.56 907.446C1296.35 906.213 1295.78 905.509 1294.96 905.494Z" fill="#B8AFA3" />
        <path d="M1276.22 906.287C1273.12 906.565 1271.26 913.287 1273.05 915.019C1274.76 916.677 1277.95 912.406 1277.79 908.679C1277.73 907.211 1277.13 906.287 1276.22 906.287Z" fill="#B8AFA3" />
        <path d="M1266.69 905.494C1262.95 905.832 1260.79 913.698 1262.99 915.723C1265.08 917.66 1268.86 912.656 1268.63 908.282C1268.53 906.565 1267.79 905.494 1266.69 905.479" fill="#B8AFA3" />
        <path d="M1256.7 905.494C1252.82 905.832 1250.71 913.698 1253 915.723C1255.17 917.645 1259.02 912.641 1258.71 908.282C1258.59 906.565 1257.81 905.494 1256.68 905.479" fill="#B8AFA3" />
        <path d="M959.196 905.699C954.383 905.978 952.695 912.523 955.704 915.092C958.712 917.66 963.423 914.284 963.115 909.794C962.953 907.416 961.31 905.699 959.196 905.699Z" fill="#B8AFA3" />
        <path d="M943.89 905.494C938.842 905.788 937.11 912.568 940.294 915.239C943.464 917.88 948.381 914.402 948.028 909.75C947.838 907.285 946.106 905.494 943.89 905.494Z" fill="#B8AFA3" />
        <path d="M928.393 905.494C923.286 905.788 921.598 912.568 924.841 915.239C928.07 917.88 933.001 914.402 932.604 909.75C932.399 907.285 930.623 905.494 928.393 905.494Z" fill="#B8AFA3" />
        <path d="M912.749 905.494C907.597 905.788 905.939 912.568 909.241 915.239C912.514 917.88 917.474 914.402 917.034 909.75C916.799 907.285 914.994 905.494 912.749 905.494Z" fill="#B8AFA3" />
        <path d="M896.767 905.494C891.792 905.773 889.987 912.01 892.966 914.931C896.004 917.924 901.213 914.96 901.169 910.278C901.14 907.593 899.218 905.494 896.781 905.494" fill="#B8AFA3" />
        <path d="M880.829 905.494C875.825 905.773 874.035 912.01 877.058 914.931C880.14 917.924 885.379 914.96 885.291 910.278C885.247 907.593 883.28 905.494 880.815 905.494" fill="#B8AFA3" />
        <path d="M864.745 905.494C859.697 905.773 857.95 912.01 861.017 914.931C864.143 917.924 869.412 914.96 869.294 910.278C869.221 907.593 867.225 905.494 864.745 905.494Z" fill="#B8AFA3" />
        <path d="M848.528 905.494C843.436 905.773 841.734 912.01 844.845 914.931C848.029 917.91 853.298 914.96 853.151 910.278C853.063 907.593 851.038 905.494 848.528 905.494Z" fill="#B8AFA3" />
        <path d="M832.165 905.494C827.014 905.773 825.327 911.995 828.511 914.931C831.828 917.983 837.052 915.077 836.862 910.278C836.744 907.593 834.69 905.494 832.165 905.494Z" fill="#B8AFA3" />
        <path d="M815.685 905.494C810.49 905.773 808.846 911.995 812.075 914.931C815.45 917.983 820.689 915.077 820.454 910.278C820.322 907.593 818.224 905.494 815.685 905.494Z" fill="#B8AFA3" />
        <path d="M799.072 905.494C793.862 905.773 792.277 912.01 795.535 914.931C798.94 917.983 804.194 915.077 803.915 910.278C803.754 907.549 801.684 905.494 799.072 905.494Z" fill="#B8AFA3" />
        <path d="M782.181 905.494C776.941 905.773 775.371 911.995 778.688 914.931C782.063 917.924 787.405 914.975 787.097 910.278C786.921 907.593 784.763 905.494 782.181 905.494Z" fill="#B8AFA3" />
        <path d="M439.331 906.492C435.589 906.727 435.252 911.805 437.996 914.182C440.535 916.384 443.719 914.725 443.573 911.276C443.47 908.723 441.489 906.478 439.331 906.492Z" fill="#B8AFA3" />
        <path d="M424.495 905.494C419.974 905.773 419.608 912.01 422.954 914.931C426.05 917.631 429.88 915.606 429.675 911.364C429.528 908.238 427.107 905.479 424.48 905.479" fill="#B8AFA3" />
        <path d="M409.98 905.494C405.519 905.773 405.211 912.01 408.542 914.931C411.624 917.631 415.381 915.606 415.146 911.364C414.97 908.224 412.563 905.479 409.98 905.479" fill="#B8AFA3" />
        <path d="M395.643 905.494C391.24 905.773 390.99 912.01 394.307 914.931C397.36 917.631 401.058 915.606 400.794 911.364C400.588 908.224 398.196 905.479 395.643 905.479" fill="#B8AFA3" />
        <path d="M381.51 905.494C377.151 905.773 376.946 911.995 380.248 914.931C383.286 917.631 386.925 915.606 386.632 911.364C386.412 908.238 384.02 905.479 381.51 905.479" fill="#B8AFA3" />
        <path d="M367.407 905.494C363.136 905.773 363.004 912.01 366.262 914.931C369.285 917.631 372.837 915.606 372.499 911.364C372.25 908.224 369.872 905.479 367.392 905.479" fill="#B8AFA3" />
        <path d="M353.685 905.494C349.488 905.773 349.4 912.01 352.643 914.931C355.637 917.631 359.13 915.606 358.763 911.364C358.499 908.224 356.121 905.479 353.685 905.479" fill="#B8AFA3" />
        <path d="M340.184 905.494C336.045 905.773 336.016 911.995 339.23 914.931C342.048 917.499 345.32 915.855 345.262 911.893C345.217 908.591 342.752 905.479 340.184 905.479" fill="#B8AFA3" />
        <path d="M326.888 905.494C322.808 905.773 322.823 912.01 326.022 914.931C328.825 917.484 332.024 915.84 331.936 911.893C331.863 908.591 329.412 905.479 326.888 905.479" fill="#B8AFA3" />
        <path d="M313.797 905.494C309.806 905.773 309.894 912.01 313.049 914.931C315.822 917.499 318.948 915.855 318.816 911.893C318.699 908.591 316.263 905.479 313.797 905.479" fill="#B8AFA3" />
        <path d="M300.956 905.494C297.038 905.773 297.17 912.01 300.31 914.931C303.055 917.499 306.107 915.855 305.946 911.893C305.814 908.591 303.392 905.479 300.956 905.479" fill="#B8AFA3" />
        <path d="M288.335 905.494C284.314 905.788 284.798 912.568 288.144 915.239C290.918 917.455 293.736 915.327 293.252 911.379C292.87 908.238 290.566 905.494 288.335 905.494Z" fill="#B8AFA3" />
        <path d="M275.817 905.494C271.869 905.788 272.412 912.568 275.714 915.239C278.517 917.499 281.218 915.415 280.689 911.379C280.278 908.238 278.004 905.494 275.817 905.494Z" fill="#B8AFA3" />
        <path d="M263.68 905.494C259.821 905.788 260.422 912.568 263.68 915.239C266.249 917.352 268.817 915.606 268.567 911.907C268.347 908.605 265.97 905.494 263.68 905.494Z" fill="#B8AFA3" />
        <path d="M1340.54 888.573C1337.44 888.94 1335.42 897.54 1337.16 899.125C1338.81 900.622 1341.95 895.119 1341.82 890.965C1341.77 889.483 1341.29 888.588 1340.54 888.588" fill="#B8AFA3" />
        <path d="M1332.89 888.573C1329.66 888.94 1327.68 897.54 1329.52 899.125C1331.32 900.681 1334.67 894.59 1334.21 890.54C1334.08 889.292 1333.6 888.573 1332.88 888.573" fill="#B8AFA3" />
        <path d="M1316.56 888.573C1313.08 888.94 1311.17 897.54 1313.2 899.125C1315.25 900.725 1318.66 894.708 1318.04 890.54C1317.87 889.292 1317.32 888.573 1316.55 888.573" fill="#B8AFA3" />
        <path d="M1307.97 888.573C1304.38 888.94 1302.5 897.54 1304.63 899.125C1306.71 900.681 1310.21 894.59 1309.54 890.54C1309.34 889.292 1308.77 888.573 1307.97 888.573Z" fill="#B8AFA3" />
        <path d="M1299.07 888.573C1295.35 888.94 1293.52 897.54 1295.74 899.125C1297.91 900.681 1301.44 894.59 1300.71 890.54C1300.49 889.292 1299.89 888.573 1299.07 888.573Z" fill="#B8AFA3" />
        <path d="M1260.54 888.573C1256.65 888.911 1254.67 896.88 1257.02 898.934C1259.25 900.886 1263.02 895.808 1262.63 891.391C1262.47 889.645 1261.67 888.573 1260.53 888.573" fill="#B8AFA3" />
        <path d="M976.191 888.573C971.201 888.867 969.455 895.735 972.581 898.435C975.677 901.106 980.549 897.584 980.241 892.873C980.08 890.378 978.377 888.573 976.191 888.573Z" fill="#B8AFA3" />
        <path d="M960.928 888.573C955.894 888.867 954.177 895.735 957.362 898.435C960.517 901.121 965.419 897.584 965.067 892.873C964.876 890.378 963.144 888.573 960.943 888.573" fill="#B8AFA3" />
        <path d="M945.489 888.573C940.397 888.867 938.709 895.735 941.953 898.435C945.167 901.121 950.083 897.584 949.687 892.873C949.481 890.378 947.705 888.573 945.489 888.573Z" fill="#B8AFA3" />
        <path d="M929.889 888.573C924.753 888.867 923.095 895.735 926.382 898.435C929.655 901.121 934.6 897.584 934.16 892.873C933.925 890.378 932.135 888.573 929.889 888.573Z" fill="#B8AFA3" />
        <path d="M914.128 888.573C908.933 888.867 907.319 895.735 910.665 898.435C913.981 901.121 918.956 897.584 918.472 892.873C918.223 890.378 916.388 888.573 914.128 888.573Z" fill="#B8AFA3" />
        <path d="M898.029 888.573C893.025 888.852 891.249 895.163 894.257 898.127C897.339 901.15 902.564 898.156 902.49 893.416C902.446 890.701 900.494 888.573 898.029 888.573Z" fill="#B8AFA3" />
        <path d="M881.974 888.573C876.926 888.852 875.179 895.163 878.232 898.127C881.358 901.15 886.611 898.156 886.494 893.416C886.435 890.701 884.439 888.573 881.959 888.573" fill="#B8AFA3" />
        <path d="M865.772 888.573C860.68 888.852 858.963 895.163 862.074 898.127C865.244 901.15 870.527 898.156 870.38 893.416C870.292 890.701 868.267 888.573 865.772 888.573Z" fill="#B8AFA3" />
        <path d="M849.438 888.573C844.317 888.852 842.614 895.163 845.784 898.127C848.998 901.15 854.311 898.156 854.12 893.416C854.017 890.701 851.963 888.573 849.438 888.573Z" fill="#B8AFA3" />
        <path d="M832.973 888.573C827.777 888.852 826.119 895.163 829.333 898.127C832.694 901.224 837.948 898.274 837.727 893.416C837.61 890.701 835.511 888.573 832.973 888.573Z" fill="#B8AFA3" />
        <path d="M816.374 888.573C811.15 888.852 809.506 895.163 812.779 898.127C816.184 901.224 821.452 898.274 821.203 893.416C821.056 890.701 818.943 888.573 816.389 888.573" fill="#B8AFA3" />
        <path d="M799.63 888.573C794.391 888.852 792.791 895.163 796.093 898.127C799.542 901.224 804.81 898.274 804.517 893.416C804.355 890.657 802.242 888.573 799.63 888.573Z" fill="#B8AFA3" />
        <path d="M782.621 888.573C777.352 888.852 775.782 895.163 779.113 898.127C782.518 901.165 787.904 898.156 787.581 893.416C787.39 890.701 785.218 888.573 782.621 888.573Z" fill="#B8AFA3" />
        <path d="M393.324 888.573C388.892 888.852 388.554 895.163 391.856 898.127C394.909 900.871 398.651 898.802 398.431 894.517C398.269 891.347 395.877 888.573 393.309 888.573" fill="#B8AFA3" />
        <path d="M379.089 888.573C374.701 888.852 374.422 895.163 377.709 898.127C380.747 900.871 384.43 898.802 384.181 894.517C383.99 891.347 381.613 888.573 379.089 888.573Z" fill="#B8AFA3" />
        <path d="M364.883 888.573C360.583 888.852 360.363 895.163 363.606 898.127C366.614 900.871 370.225 898.802 369.946 894.517C369.74 891.347 367.378 888.573 364.883 888.573Z" fill="#B8AFA3" />
        <path d="M351.073 888.573C346.832 888.852 346.67 895.163 349.899 898.127C352.878 900.871 356.415 898.802 356.107 894.517C355.872 891.347 353.524 888.573 351.073 888.573Z" fill="#B8AFA3" />
        <path d="M337.454 888.573C333.286 888.852 333.169 895.163 336.368 898.127C339.171 900.725 342.488 899.066 342.473 895.045C342.473 891.714 340.022 888.559 337.454 888.559" fill="#B8AFA3" />
        <path d="M324.07 888.573C319.961 888.852 319.888 895.163 323.072 898.127C325.86 900.725 329.104 899.052 329.06 895.045C329.03 891.714 326.594 888.559 324.07 888.559" fill="#B8AFA3" />
        <path d="M310.892 888.573C306.87 888.852 306.856 895.163 309.996 898.127C312.755 900.725 315.925 899.066 315.852 895.045C315.793 891.655 313.416 888.559 310.892 888.559" fill="#B8AFA3" />
        <path d="M297.948 888.573C293.809 888.867 294.147 895.735 297.507 898.435C300.296 900.68 303.246 898.523 302.849 894.517C302.526 891.347 300.252 888.573 297.962 888.573" fill="#B8AFA3" />
        <path d="M285.253 888.573C281.188 888.867 281.584 895.735 284.901 898.435C287.66 900.68 290.537 898.523 290.111 894.517C289.773 891.347 287.499 888.573 285.253 888.573Z" fill="#B8AFA3" />
        <path d="M272.632 888.573C268.655 888.867 269.096 895.735 272.368 898.435C275.157 900.725 277.901 898.597 277.446 894.517C277.079 891.347 274.834 888.573 272.632 888.573Z" fill="#B8AFA3" />
        <path d="M260.408 888.573C256.504 888.867 257.003 895.735 260.232 898.435C262.976 900.725 265.662 898.597 265.163 894.517C264.781 891.347 262.55 888.573 260.393 888.573" fill="#B8AFA3" />
        <path d="M1320.45 871.506C1316.96 871.873 1315.22 880.531 1317.31 882.131C1319.41 883.745 1322.69 877.684 1321.99 873.487C1321.78 872.225 1321.21 871.506 1320.45 871.506Z" fill="#B8AFA3" />
        <path d="M1311.8 871.506C1308.19 871.873 1306.49 880.531 1308.68 882.131C1310.88 883.745 1314.21 877.684 1313.43 873.487C1313.2 872.225 1312.61 871.506 1311.8 871.506Z" fill="#B8AFA3" />
        <path d="M1274.19 871.506C1270.41 871.843 1268.56 879.871 1270.86 881.955C1272.97 883.848 1276.42 879.328 1276.29 874.837C1276.23 872.812 1275.41 871.506 1274.19 871.506Z" fill="#B8AFA3" />
        <path d="M1253.53 871.506C1249.54 871.843 1247.73 879.871 1250.21 881.955C1252.57 883.921 1256.32 878.814 1255.77 874.368C1255.55 872.607 1254.7 871.521 1253.53 871.521" fill="#B8AFA3" />
        <path d="M993.082 871.506C988.092 871.799 986.375 878.726 989.501 881.441C992.612 884.141 997.441 880.575 997.118 875.85C996.942 873.326 995.239 871.506 993.082 871.506Z" fill="#B8AFA3" />
        <path d="M977.864 871.506C972.845 871.799 971.157 878.726 974.327 881.441C977.467 884.141 982.34 880.59 981.987 875.85C981.797 873.326 980.065 871.506 977.864 871.506Z" fill="#B8AFA3" />
        <path d="M962.498 871.506C957.435 871.799 955.762 878.726 958.991 881.441C962.19 884.141 967.092 880.59 966.696 875.85C966.49 873.326 964.714 871.506 962.498 871.506Z" fill="#B8AFA3" />
        <path d="M946.957 871.506C941.835 871.799 940.192 878.726 943.479 881.441C946.737 884.141 951.653 880.59 951.228 875.85C950.993 873.326 949.202 871.506 946.957 871.506Z" fill="#B8AFA3" />
        <path d="M931.254 871.506C926.088 871.799 924.474 878.726 927.806 881.441C931.122 884.141 936.068 880.59 935.598 875.85C935.349 873.326 933.529 871.506 931.254 871.506Z" fill="#B8AFA3" />
        <path d="M915.39 871.506C910.166 871.799 908.595 878.726 911.971 881.441C915.331 884.141 920.306 880.59 919.793 875.85C919.529 873.326 917.665 871.506 915.39 871.506Z" fill="#B8AFA3" />
        <path d="M899.188 871.506C894.155 871.785 892.394 878.139 895.461 881.133C898.572 884.185 903.826 881.162 903.708 876.393C903.65 873.649 901.668 871.506 899.188 871.506Z" fill="#B8AFA3" />
        <path d="M883.031 871.506C877.953 871.785 876.221 878.139 879.332 881.133C882.502 884.185 887.771 881.162 887.624 876.393C887.551 873.649 885.526 871.506 883.031 871.506Z" fill="#B8AFA3" />
        <path d="M866.726 871.506C861.604 871.785 859.902 878.139 863.057 881.133C866.271 884.185 871.569 881.162 871.393 876.393C871.29 873.649 869.25 871.506 866.726 871.506Z" fill="#B8AFA3" />
        <path d="M850.29 871.506C845.124 871.785 843.451 878.154 846.65 881.133C849.908 884.185 855.235 881.162 855.03 876.393C854.912 873.649 852.828 871.506 850.29 871.506Z" fill="#B8AFA3" />
        <path d="M833.706 871.506C828.482 871.785 826.824 878.139 830.081 881.133C833.472 884.259 838.755 881.28 838.505 876.393C838.373 873.649 836.26 871.506 833.706 871.506Z" fill="#B8AFA3" />
        <path d="M817.006 871.506C811.737 871.785 810.123 878.139 813.41 881.133C816.844 884.259 822.142 881.28 821.863 876.393C821.702 873.649 819.574 871.506 816.991 871.506" fill="#B8AFA3" />
        <path d="M800.158 871.506C794.89 871.785 793.305 878.154 796.621 881.133C800.099 884.259 805.397 881.28 805.089 876.393C804.913 873.604 802.785 871.506 800.158 871.506Z" fill="#B8AFA3" />
        <path d="M783.032 871.506C777.719 871.785 776.164 878.139 779.524 881.133C782.958 884.185 788.374 881.177 788.036 876.393C787.845 873.649 785.644 871.506 783.032 871.506Z" fill="#B8AFA3" />
        <path d="M391.181 871.505C386.72 871.784 386.309 878.153 389.596 881.133C392.634 883.892 396.435 881.822 396.259 877.493C396.127 874.294 393.764 871.491 391.181 871.491" fill="#B8AFA3" />
        <path d="M376.858 871.505C372.441 871.784 372.074 878.139 375.346 881.133C378.37 883.892 382.112 881.822 381.906 877.493C381.76 874.294 379.397 871.491 376.858 871.491" fill="#B8AFA3" />
        <path d="M362.564 871.505C358.235 871.784 357.912 878.153 361.155 881.133C364.149 883.892 367.803 881.822 367.583 877.493C367.421 874.294 365.073 871.491 362.564 871.491" fill="#B8AFA3" />
        <path d="M348.652 871.505C344.381 871.784 344.117 878.153 347.331 881.133C350.295 883.892 353.891 881.822 353.627 877.493C353.436 874.294 351.117 871.491 348.637 871.491" fill="#B8AFA3" />
        <path d="M334.959 871.505C330.762 871.784 330.542 878.139 333.727 881.133C336.662 883.906 340.198 881.837 339.905 877.493C339.7 874.294 337.381 871.491 334.959 871.491" fill="#B8AFA3" />
        <path d="M321.487 871.506C317.334 871.785 317.173 878.139 320.343 881.133C323.102 883.745 326.404 882.072 326.418 878.036C326.433 874.676 324.041 871.506 321.487 871.506Z" fill="#B8AFA3" />
        <path d="M308.221 871.505C303.979 871.799 304.155 878.726 307.531 881.441C310.348 883.701 313.416 881.529 313.093 877.493C312.843 874.294 310.569 871.491 308.221 871.491" fill="#B8AFA3" />
        <path d="M295.203 871.505C291.036 871.799 291.256 878.726 294.602 881.441C297.375 883.701 300.384 881.529 300.046 877.493C299.782 874.294 297.522 871.491 295.218 871.491" fill="#B8AFA3" />
        <path d="M282.406 871.505C278.312 871.799 278.591 878.726 281.893 881.441C284.637 883.701 287.557 881.529 287.205 877.493C286.912 874.294 284.681 871.491 282.421 871.491" fill="#B8AFA3" />
        <path d="M269.712 871.505C265.706 871.799 266.028 878.726 269.286 881.441C272.001 883.701 274.848 881.529 274.467 877.493C274.159 874.294 271.943 871.491 269.727 871.491" fill="#B8AFA3" />
        <path d="M1324 854.247C1320.49 854.614 1318.94 863.361 1321.06 864.975C1323.06 866.486 1326.14 860.895 1325.66 856.669C1325.48 855.157 1324.87 854.247 1324 854.247Z" fill="#B8AFA3" />
        <path d="M1267.28 854.247C1263.35 854.585 1261.67 862.7 1264.14 864.784C1266.38 866.692 1269.83 862.128 1269.55 857.608C1269.44 855.568 1268.54 854.247 1267.28 854.247Z" fill="#B8AFA3" />
        <path d="M1245.93 854.247C1241.82 854.585 1240.17 862.7 1242.8 864.784C1245.19 866.707 1248.74 862.128 1248.38 857.608C1248.22 855.568 1247.25 854.247 1245.93 854.247Z" fill="#B8AFA3" />
        <path d="M1009.81 854.247C1004.88 854.541 1003.19 861.541 1006.29 864.285C1009.39 867.015 1014.19 863.434 1013.83 858.635C1013.66 856.096 1011.95 854.247 1009.8 854.247" fill="#B8AFA3" />
        <path d="M994.696 854.247C989.692 854.541 988.019 861.541 991.189 864.285C994.344 867.015 999.172 863.419 998.806 858.635C998.6 856.096 996.883 854.247 994.696 854.247Z" fill="#B8AFA3" />
        <path d="M979.39 854.247C974.342 854.541 972.713 861.541 975.927 864.285C979.126 867.015 983.984 863.419 983.573 858.635C983.352 856.096 981.591 854.247 979.39 854.247Z" fill="#B8AFA3" />
        <path d="M963.922 854.247C958.83 854.541 957.215 861.541 960.473 864.285C963.731 867.015 968.618 863.419 968.178 858.635C967.943 856.096 966.153 854.247 963.922 854.247Z" fill="#B8AFA3" />
        <path d="M948.293 854.247C943.141 854.541 941.556 861.541 944.873 864.285C948.175 867.015 953.091 863.419 952.622 858.635C952.372 856.096 950.553 854.247 948.293 854.247Z" fill="#B8AFA3" />
        <path d="M932.502 854.247C927.307 854.541 925.736 861.541 929.112 864.285C932.458 867.015 937.418 863.419 936.904 858.635C936.626 856.096 934.776 854.247 932.502 854.247Z" fill="#B8AFA3" />
        <path d="M916.549 854.247C911.296 854.541 909.755 861.541 913.189 864.285C916.593 867.015 921.568 863.419 921.025 858.635C920.732 856.096 918.853 854.247 916.564 854.247" fill="#B8AFA3" />
        <path d="M900.245 854.247C895.182 854.541 893.465 860.954 896.547 863.962C899.702 867.044 904.956 863.992 904.824 859.178C904.75 856.419 902.725 854.247 900.245 854.247Z" fill="#B8AFA3" />
        <path d="M883.999 854.247C878.892 854.541 877.19 860.954 880.33 863.962C883.53 867.044 888.813 863.992 888.651 859.178C888.549 856.419 886.509 854.247 883.999 854.247Z" fill="#B8AFA3" />
        <path d="M867.592 854.247C862.441 854.541 860.768 860.954 863.952 863.962C867.196 867.044 872.508 863.992 872.317 859.178C872.2 856.419 870.131 854.247 867.592 854.247Z" fill="#B8AFA3" />
        <path d="M851.053 854.247C845.858 854.541 844.214 860.954 847.442 863.962C850.73 867.044 856.072 863.992 855.851 859.178C855.719 856.419 853.621 854.247 851.067 854.247" fill="#B8AFA3" />
        <path d="M834.381 854.247C829.127 854.526 827.484 860.954 830.771 863.962C834.205 867.117 839.503 864.109 839.224 859.178C839.077 856.419 836.949 854.247 834.367 854.247" fill="#B8AFA3" />
        <path d="M817.578 854.247C812.28 854.526 810.68 860.954 813.997 863.962C817.475 867.117 822.788 864.109 822.494 859.178C822.333 856.419 820.161 854.247 817.578 854.247Z" fill="#B8AFA3" />
        <path d="M800.628 854.247C795.315 854.541 793.745 860.954 797.106 863.962C800.613 867.117 805.94 864.124 805.617 859.178C805.427 856.36 803.284 854.247 800.642 854.247" fill="#B8AFA3" />
        <path d="M783.399 854.247C778.057 854.526 776.501 860.954 779.891 863.962C783.355 867.044 788.785 864.006 788.432 859.178C788.227 856.419 786.011 854.247 783.384 854.247" fill="#B8AFA3" />
        <path d="M766.243 854.247C760.842 854.526 759.316 860.954 762.765 863.962C766.36 867.117 771.746 864.109 771.35 859.178C771.13 856.419 768.885 854.247 766.243 854.247Z" fill="#B8AFA3" />
        <path d="M748.941 854.247C743.54 854.541 742.043 860.954 745.521 863.962C749.146 867.117 754.532 864.109 754.106 859.178C753.872 856.36 751.641 854.247 748.941 854.247Z" fill="#B8AFA3" />
        <path d="M696.578 854.438C691.31 854.717 689.974 860.895 693.408 863.801C696.916 866.765 702.184 863.845 701.7 859.193C701.421 856.522 699.161 854.423 696.578 854.423" fill="#B8AFA3" />
        <path d="M678.938 854.247C673.538 854.526 672.188 860.954 675.739 863.962C679.364 867.044 684.779 864.006 684.251 859.178C683.943 856.404 681.624 854.247 678.953 854.247" fill="#B8AFA3" />
        <path d="M661.636 854.247C656.265 854.526 654.973 860.954 658.51 863.962C662.135 867.044 667.492 864.006 666.934 859.178C666.611 856.404 664.292 854.247 661.636 854.247Z" fill="#B8AFA3" />
        <path d="M374.833 854.247C370.386 854.526 369.931 860.954 373.189 863.962C376.198 866.751 379.984 864.652 379.837 860.293C379.734 857.065 377.386 854.232 374.833 854.232" fill="#B8AFA3" />
        <path d="M360.451 854.247C356.092 854.541 355.696 860.954 358.91 863.962C361.889 866.751 365.602 864.667 365.426 860.293C365.294 857.065 362.975 854.232 360.451 854.232" fill="#B8AFA3" />
        <path d="M346.465 854.247C342.165 854.541 341.813 860.954 345.012 863.962C347.962 866.751 351.601 864.667 351.396 860.293C351.249 857.065 348.945 854.232 346.465 854.232" fill="#B8AFA3" />
        <path d="M332.685 854.247C328.253 854.541 328.238 861.541 331.672 864.285C334.754 866.751 338.1 864.168 337.542 859.736C337.161 856.713 334.974 854.247 332.699 854.247" fill="#B8AFA3" />
        <path d="M319.124 854.247C314.751 854.541 314.781 861.541 318.185 864.285C321.238 866.751 324.51 864.153 323.923 859.736C323.527 856.713 321.37 854.247 319.124 854.247Z" fill="#B8AFA3" />
        <path d="M305.784 854.247C301.514 854.541 301.587 861.541 304.933 864.285C307.736 866.575 310.847 864.373 310.598 860.308C310.393 857.079 308.147 854.247 305.784 854.247Z" fill="#B8AFA3" />
        <path d="M292.679 854.247C288.482 854.541 288.599 861.541 291.916 864.285C294.675 866.575 297.728 864.373 297.449 860.308C297.229 857.079 294.998 854.247 292.679 854.247Z" fill="#B8AFA3" />
        <path d="M279.823 854.247C275.7 854.541 275.876 861.541 279.148 864.285C281.878 866.575 284.857 864.373 284.549 860.308C284.314 857.079 282.098 854.247 279.823 854.247Z" fill="#B8AFA3" />
        <path d="M267.056 854.247C263.02 854.541 263.225 861.541 266.454 864.285C269.14 866.575 272.045 864.373 271.723 860.308C271.458 857.079 269.272 854.247 267.041 854.247" fill="#B8AFA3" />
        <path d="M1351.59 836.827C1348.46 837.194 1347 846.029 1348.89 847.658C1350.67 849.184 1353.47 843.549 1353.06 839.278C1352.91 837.752 1352.35 836.827 1351.59 836.827Z" fill="#B8AFA3" />
        <path d="M1177.88 838.266C1174.65 838.5 1173.43 844.15 1175.5 845.985C1177.48 847.731 1180.44 844.664 1180.18 841.157C1180.05 839.454 1179.11 838.266 1177.89 838.266" fill="#B8AFA3" />
        <path d="M1011.34 836.827C1006.38 837.121 1004.75 844.18 1007.9 846.953C1011.05 849.712 1015.83 846.087 1015.43 841.259C1015.23 838.691 1013.5 836.827 1011.34 836.827Z" fill="#B8AFA3" />
        <path d="M996.149 836.827C991.116 837.135 989.501 844.18 992.73 846.953C995.929 849.698 1000.76 846.073 1000.33 841.259C1000.11 838.691 998.351 836.827 996.164 836.827" fill="#B8AFA3" />
        <path d="M980.755 836.827C975.692 837.135 974.107 844.18 977.365 846.953C980.593 849.698 985.451 846.087 984.996 841.259C984.761 838.691 982.971 836.827 980.755 836.827Z" fill="#B8AFA3" />
        <path d="M965.213 836.827C960.092 837.135 958.521 844.18 961.838 846.953C965.125 849.712 970.012 846.087 969.528 841.259C969.264 838.691 967.459 836.827 965.213 836.827Z" fill="#B8AFA3" />
        <path d="M949.496 836.827C944.316 837.135 942.775 844.18 946.135 846.953C949.481 849.712 954.398 846.087 953.884 841.259C953.605 838.691 951.756 836.827 949.496 836.827Z" fill="#B8AFA3" />
        <path d="M933.617 836.827C928.393 837.135 926.866 844.18 930.286 846.953C933.676 849.712 938.636 846.087 938.078 841.259C937.785 838.691 935.906 836.827 933.617 836.827Z" fill="#B8AFA3" />
        <path d="M917.591 836.827C912.543 837.121 910.841 843.593 913.923 846.63C917.063 849.742 922.302 846.674 922.156 841.802C922.068 839.014 920.072 836.827 917.591 836.827Z" fill="#B8AFA3" />
        <path d="M901.199 836.827C896.106 837.121 894.419 843.593 897.545 846.63C900.744 849.742 906.012 846.674 905.836 841.802C905.734 839.014 903.708 836.827 901.199 836.827Z" fill="#B8AFA3" />
        <path d="M884.865 836.827C879.728 837.121 878.056 843.593 881.225 846.63C884.469 849.742 889.767 846.674 889.561 841.802C889.444 839.014 887.374 836.827 884.865 836.827Z" fill="#B8AFA3" />
        <path d="M868.37 836.827C863.189 837.121 861.546 843.593 864.76 846.63C868.047 849.742 873.374 846.674 873.139 841.802C873.007 839.014 870.909 836.827 868.37 836.827Z" fill="#B8AFA3" />
        <path d="M851.742 836.827C846.518 837.121 844.889 843.593 848.147 846.63C851.478 849.742 856.835 846.66 856.571 841.802C856.424 839.014 854.296 836.827 851.742 836.827Z" fill="#B8AFA3" />
        <path d="M834.983 836.827C829.7 837.121 828.086 843.593 831.402 846.63C834.866 849.815 840.178 846.792 839.885 841.802C839.723 839.014 837.566 836.827 834.983 836.827Z" fill="#B8AFA3" />
        <path d="M818.092 836.827C812.764 837.121 811.165 843.593 814.525 846.63C818.033 849.815 823.36 846.792 823.052 841.802C822.876 839.014 820.689 836.827 818.092 836.827Z" fill="#B8AFA3" />
        <path d="M801.053 836.827C795.711 837.121 794.156 843.593 797.531 846.63C801.068 849.815 806.41 846.792 806.072 841.802C805.881 838.97 803.724 836.827 801.053 836.827Z" fill="#B8AFA3" />
        <path d="M783.736 836.827C778.365 837.121 776.824 843.593 780.229 846.63C783.721 849.742 789.181 846.674 788.814 841.802C788.608 839.014 786.378 836.827 783.736 836.827Z" fill="#B8AFA3" />
        <path d="M766.478 836.827C761.048 837.121 759.522 843.593 763 846.63C766.625 849.815 772.025 846.792 771.629 841.802C771.409 839.014 769.149 836.827 766.492 836.827" fill="#B8AFA3" />
        <path d="M749.102 836.827C743.672 837.121 742.175 843.593 745.668 846.63C749.322 849.815 754.723 846.792 754.297 841.802C754.048 838.97 751.817 836.827 749.102 836.827Z" fill="#B8AFA3" />
        <path d="M731.638 836.827C726.164 837.121 724.697 843.593 728.234 846.63C731.844 849.742 737.347 846.66 736.892 841.802C736.628 839.014 734.324 836.827 731.638 836.827Z" fill="#B8AFA3" />
        <path d="M714.072 836.827C708.583 837.121 707.13 843.593 710.696 846.63C714.336 849.742 719.854 846.66 719.384 841.802C719.105 839.014 716.772 836.827 714.072 836.827Z" fill="#B8AFA3" />
        <path d="M696.446 836.827C690.972 837.121 689.563 843.593 693.144 846.63C696.799 849.742 702.287 846.674 701.788 841.802C701.495 839.014 699.161 836.827 696.446 836.827Z" fill="#B8AFA3" />
        <path d="M678.718 836.827C673.288 837.121 671.924 843.593 675.49 846.63C679.129 849.742 684.574 846.674 684.045 841.802C683.752 839.014 681.404 836.827 678.718 836.827Z" fill="#B8AFA3" />
        <path d="M661.328 836.827C655.927 837.121 654.607 843.593 658.158 846.63C661.798 849.742 667.183 846.674 666.64 841.802C666.332 839.014 663.999 836.827 661.328 836.827Z" fill="#B8AFA3" />
        <path d="M644.04 836.827C638.684 837.121 637.407 843.593 640.958 846.63C644.583 849.742 649.925 846.674 649.353 841.802C649.03 839.014 646.696 836.827 644.055 836.827" fill="#B8AFA3" />
        <path d="M626.884 836.827C621.572 837.121 620.324 843.593 623.876 846.63C627.486 849.742 632.769 846.674 632.182 841.802C631.845 839.014 629.526 836.827 626.899 836.827" fill="#B8AFA3" />
        <path d="M344.484 836.827C339.964 837.135 339.802 844.18 343.251 846.953C346.348 849.448 349.811 846.836 349.327 842.374C348.989 839.322 346.817 836.827 344.484 836.827Z" fill="#B8AFA3" />
        <path d="M330.63 836.827C326.169 837.121 326.051 844.18 329.471 846.953C332.538 849.448 335.943 846.836 335.429 842.374C335.077 839.322 332.934 836.827 330.63 836.827Z" fill="#B8AFA3" />
        <path d="M317.011 836.827C312.609 837.135 312.535 844.18 315.925 846.953C318.963 849.433 322.294 846.821 321.766 842.374C321.399 839.322 319.271 836.827 317.011 836.827Z" fill="#B8AFA3" />
        <path d="M303.598 836.827C299.298 837.135 299.269 844.18 302.6 846.953C305.594 849.448 308.837 846.836 308.294 842.374C307.927 839.322 305.814 836.827 303.598 836.827Z" fill="#B8AFA3" />
        <path d="M290.419 836.827C286.193 837.135 286.207 844.18 289.495 846.953C292.239 849.257 295.335 847.041 295.115 842.932C294.939 839.674 292.738 836.827 290.405 836.827" fill="#B8AFA3" />
        <path d="M277.49 836.827C273.337 837.135 273.396 844.18 276.654 846.953C279.354 849.257 282.392 847.041 282.142 842.932C281.951 839.674 279.779 836.827 277.49 836.827Z" fill="#B8AFA3" />
        <path d="M264.664 836.827C260.599 837.135 260.701 844.18 263.901 846.953C266.571 849.257 269.536 847.041 269.272 842.932C269.066 839.674 266.909 836.827 264.664 836.827Z" fill="#B8AFA3" />
        <path d="M240.024 836.827C236.12 837.135 236.311 844.18 239.422 846.953C242.005 849.257 244.822 847.041 244.514 842.932C244.279 839.674 242.166 836.827 240.024 836.827Z" fill="#B8AFA3" />
        <path d="M1338.43 820.303C1335.67 820.611 1334.67 827.875 1336.4 829.225C1338.03 830.488 1340.32 825.835 1339.82 822.328C1339.64 821.066 1339.12 820.317 1338.44 820.317" fill="#B8AFA3" />
        <path d="M1293.03 819.275C1289.31 819.628 1287.9 827.89 1290.29 830.033C1292.48 831.984 1295.65 827.318 1295.29 822.695C1295.13 820.626 1294.25 819.275 1293.05 819.275" fill="#B8AFA3" />
        <path d="M1167.5 819.275C1163.05 819.598 1161.53 827.288 1164.43 829.798C1167.22 832.19 1171.23 828.007 1170.74 823.208C1170.51 820.89 1169.17 819.275 1167.49 819.275" fill="#B8AFA3" />
        <path d="M1027.86 820.112C1023.68 820.376 1022.35 826.422 1025.02 828.814C1027.69 831.192 1031.71 828.066 1031.36 823.913C1031.17 821.711 1029.7 820.126 1027.86 820.126" fill="#B8AFA3" />
        <path d="M1012.67 819.481C1007.88 819.774 1006.36 826.628 1009.45 829.328C1012.51 831.999 1017.11 828.477 1016.67 823.781C1016.43 821.301 1014.76 819.496 1012.66 819.481" fill="#B8AFA3" />
        <path d="M997.441 819.275C992.378 819.584 990.837 826.716 994.095 829.519C997.338 832.293 1002.15 828.638 1001.67 823.751C1001.42 821.169 999.627 819.29 997.426 819.29" fill="#B8AFA3" />
        <path d="M981.973 819.275C976.88 819.584 975.354 826.716 978.656 829.519C981.944 832.307 986.786 828.638 986.287 823.751C986.023 821.169 984.204 819.29 981.973 819.29" fill="#B8AFA3" />
        <path d="M966.358 819.275C961.207 819.584 959.695 826.716 963.056 829.519C966.388 832.307 971.274 828.638 970.731 823.751C970.453 821.169 968.604 819.29 966.358 819.29" fill="#B8AFA3" />
        <path d="M950.567 819.275C945.372 819.584 943.875 826.716 947.28 829.519C950.67 832.307 955.586 828.638 955.014 823.751C954.72 821.169 952.842 819.29 950.567 819.29" fill="#B8AFA3" />
        <path d="M934.615 819.275C929.361 819.584 927.894 826.716 931.342 829.519C934.776 832.307 939.722 828.638 939.135 823.751C938.827 821.169 936.919 819.29 934.63 819.29" fill="#B8AFA3" />
        <path d="M918.501 819.275C913.203 819.584 911.736 826.716 915.243 829.519C918.721 832.307 923.696 828.638 923.08 823.751C922.757 821.169 920.82 819.29 918.501 819.29" fill="#B8AFA3" />
        <path d="M902.05 819.275C896.943 819.569 895.285 826.114 898.44 829.196C901.668 832.337 906.952 829.225 906.746 824.294C906.629 821.477 904.574 819.275 902.05 819.275Z" fill="#B8AFA3" />
        <path d="M885.628 819.275C880.477 819.569 878.833 826.114 882.033 829.196C885.305 832.337 890.618 829.225 890.383 824.294C890.251 821.477 888.167 819.275 885.628 819.275Z" fill="#B8AFA3" />
        <path d="M869.059 819.275C863.864 819.569 862.235 826.114 865.479 829.196C868.795 832.337 874.137 829.225 873.873 824.294C873.726 821.477 871.613 819.275 869.059 819.275Z" fill="#B8AFA3" />
        <path d="M852.359 819.275C847.12 819.569 845.505 826.114 848.793 829.196C852.153 832.337 857.525 829.225 857.246 824.294C857.084 821.477 854.942 819.275 852.359 819.275Z" fill="#B8AFA3" />
        <path d="M835.511 819.275C830.199 819.569 828.599 826.114 831.945 829.196C835.438 832.41 840.765 829.343 840.457 824.294C840.281 821.477 838.109 819.275 835.511 819.275Z" fill="#B8AFA3" />
        <path d="M818.546 819.275C813.204 819.569 811.62 826.114 814.995 829.196C818.532 832.41 823.888 829.343 823.551 824.294C823.36 821.477 821.159 819.275 818.546 819.275Z" fill="#B8AFA3" />
        <path d="M801.42 819.275C796.064 819.569 794.508 826.114 797.913 829.196C801.479 832.41 806.85 829.357 806.483 824.294C806.278 821.433 804.106 819.275 801.42 819.275Z" fill="#B8AFA3" />
        <path d="M784.03 819.275C778.644 819.569 777.088 826.114 780.537 829.196C784.059 832.351 789.533 829.24 789.151 824.294C788.931 821.477 786.686 819.275 784.03 819.275Z" fill="#B8AFA3" />
        <path d="M766.698 819.275C761.239 819.569 759.712 826.114 763.22 829.196C766.874 832.41 772.289 829.343 771.878 824.294C771.644 821.477 769.369 819.275 766.698 819.275Z" fill="#B8AFA3" />
        <path d="M749.234 819.275C743.775 819.569 742.278 826.114 745.8 829.196C749.484 832.41 754.914 829.343 754.473 824.294C754.224 821.433 751.978 819.275 749.249 819.275" fill="#B8AFA3" />
        <path d="M731.682 819.275C726.194 819.569 724.711 826.114 728.263 829.196C731.888 832.337 737.42 829.225 736.965 824.294C736.701 821.477 734.382 819.275 731.682 819.275Z" fill="#B8AFA3" />
        <path d="M714.042 819.275C708.524 819.569 707.071 826.114 710.652 829.196C714.306 832.337 719.854 829.225 719.369 824.294C719.091 821.477 716.757 819.275 714.027 819.275" fill="#B8AFA3" />
        <path d="M696.344 819.275C690.84 819.569 689.432 826.114 693.012 829.196C696.681 832.351 702.214 829.24 701.7 824.294C701.407 821.477 699.059 819.275 696.344 819.275Z" fill="#B8AFA3" />
        <path d="M678.528 819.275C673.068 819.569 671.689 826.114 675.255 829.196C678.924 832.351 684.383 829.24 683.869 824.294C683.576 821.477 681.228 819.275 678.528 819.275Z" fill="#B8AFA3" />
        <path d="M661.049 819.275C655.619 819.569 654.283 826.114 657.85 829.196C661.504 832.351 666.919 829.24 666.376 824.294C666.068 821.477 663.72 819.275 661.049 819.275Z" fill="#B8AFA3" />
        <path d="M643.688 819.275C638.302 819.569 636.996 826.114 640.562 829.196C644.202 832.351 649.573 829.24 649 824.294C648.678 821.477 646.344 819.275 643.688 819.275Z" fill="#B8AFA3" />
        <path d="M626.444 819.275C621.102 819.569 619.84 826.114 623.377 829.196C627.002 832.351 632.314 829.24 631.742 824.294C631.404 821.477 629.086 819.275 626.444 819.275Z" fill="#B8AFA3" />
        <path d="M328.81 819.275C324.334 819.584 324.114 826.716 327.504 829.519C330.557 832.043 334.005 829.387 333.551 824.867C333.242 821.785 331.114 819.275 328.81 819.275Z" fill="#B8AFA3" />
        <path d="M315.235 820.303C311.64 820.552 311.493 826.364 314.223 828.638C316.688 830.693 319.433 828.536 319.051 824.852C318.787 822.343 317.07 820.303 315.221 820.303" fill="#B8AFA3" />
        <path d="M301.646 819.275C297.317 819.584 297.185 826.716 300.501 829.519C303.48 832.043 306.782 829.387 306.298 824.867C305.975 821.785 303.891 819.275 301.661 819.275" fill="#B8AFA3" />
        <path d="M288.423 819.275C284.167 819.584 284.079 826.716 287.352 829.519C290.287 832.043 293.516 829.387 293.017 824.867C292.679 821.785 290.61 819.275 288.423 819.275Z" fill="#B8AFA3" />
        <path d="M275.421 819.275C271.253 819.584 271.194 826.716 274.423 829.519C277.109 831.852 280.19 829.607 280 825.454C279.853 822.166 277.71 819.29 275.421 819.29" fill="#B8AFA3" />
        <path d="M225.803 819.275C221.958 819.584 222.075 826.716 225.099 829.519C227.623 831.852 230.411 829.607 230.147 825.454C229.941 822.166 227.902 819.29 225.788 819.29" fill="#B8AFA3" />
        <path d="M1357.09 801.782C1354.08 802.149 1352.94 811.204 1354.85 812.789C1356.64 814.271 1359.1 809.149 1358.74 804.732C1358.59 802.912 1357.96 801.782 1357.09 801.782Z" fill="#B8AFA3" />
        <path d="M1305.07 801.782C1301.56 802.12 1300.26 810.529 1302.53 812.598C1304.56 814.433 1307.48 810.265 1307.33 805.745C1307.26 803.411 1306.33 801.782 1305.07 801.782Z" fill="#B8AFA3" />
        <path d="M1295.32 801.782C1291.71 802.12 1290.41 810.529 1292.79 812.598C1295.02 814.55 1298.11 809.854 1297.66 805.231C1297.45 803.132 1296.54 801.782 1295.34 801.782" fill="#B8AFA3" />
        <path d="M1285.29 801.782C1281.43 802.134 1280.19 810.455 1282.73 812.598C1285.04 814.55 1288.21 809.854 1287.71 805.231C1287.49 803.132 1286.53 801.782 1285.29 801.782Z" fill="#B8AFA3" />
        <path d="M1263.99 803.675C1261.28 803.91 1260.47 809.443 1262.28 810.881C1263.93 812.187 1266.12 809.061 1265.72 805.965C1265.55 804.57 1264.87 803.675 1263.99 803.675Z" fill="#B8AFA3" />
        <path d="M1182.04 801.782C1177.64 802.105 1176.22 809.854 1179.14 812.363C1181.9 814.741 1185.8 810.529 1185.29 805.745C1185.04 803.411 1183.7 801.782 1182.03 801.782" fill="#B8AFA3" />
        <path d="M1169.29 801.782C1164.81 802.105 1163.41 809.854 1166.39 812.363C1169.22 814.755 1173.18 810.544 1172.62 805.745C1172.36 803.411 1170.98 801.782 1169.29 801.782Z" fill="#B8AFA3" />
        <path d="M1156.23 802.633C1152.36 802.912 1151.15 809.501 1153.75 811.644C1156.23 813.684 1159.65 810.103 1159.15 805.994C1158.9 804.013 1157.71 802.633 1156.24 802.633" fill="#B8AFA3" />
        <path d="M1043.99 803.675C1040.73 803.881 1039.72 808.65 1041.82 810.529C1043.9 812.393 1047 809.927 1046.71 806.654C1046.55 804.923 1045.41 803.675 1043.99 803.661" fill="#B8AFA3" />
        <path d="M967.341 801.782C962.161 802.09 960.693 809.267 964.113 812.084C967.488 814.873 972.36 811.189 971.773 806.288C971.465 803.675 969.601 801.782 967.341 801.782Z" fill="#B8AFA3" />
        <path d="M951.492 801.782C946.253 802.09 944.814 809.267 948.263 812.084C951.683 814.873 956.584 811.189 955.983 806.288C955.66 803.675 953.767 801.782 951.492 801.782Z" fill="#B8AFA3" />
        <path d="M935.481 801.782C930.183 802.09 928.759 809.267 932.267 812.084C935.73 814.873 940.676 811.189 940.045 806.288C939.707 803.675 937.785 801.782 935.481 801.782Z" fill="#B8AFA3" />
        <path d="M919.308 801.782C914.201 802.076 912.572 808.665 915.742 811.762C918.956 814.917 924.195 811.776 923.99 806.845C923.873 804.013 921.818 801.782 919.308 801.782Z" fill="#B8AFA3" />
        <path d="M902.769 801.782C897.618 802.076 895.989 808.665 899.203 811.762C902.461 814.917 907.744 811.776 907.509 806.845C907.377 804.013 905.293 801.782 902.769 801.782Z" fill="#B8AFA3" />
        <path d="M886.289 801.782C881.093 802.076 879.479 808.665 882.737 811.762C886.127 814.99 891.366 811.908 891.087 806.845C890.941 804.013 888.827 801.782 886.289 801.782Z" fill="#B8AFA3" />
        <path d="M869.661 801.782C864.422 802.076 862.822 808.665 866.11 811.762C869.544 814.99 874.812 811.908 874.519 806.845C874.357 804.013 872.215 801.782 869.646 801.782" fill="#B8AFA3" />
        <path d="M852.887 801.782C847.604 802.076 846.019 808.665 849.35 811.762C852.828 814.99 858.126 811.908 857.803 806.845C857.627 804.013 855.47 801.782 852.872 801.782" fill="#B8AFA3" />
        <path d="M835.981 801.782C830.639 802.076 829.054 808.665 832.444 811.762C835.966 814.99 841.308 811.908 840.971 806.845C840.78 804.013 838.593 801.782 835.981 801.782Z" fill="#B8AFA3" />
        <path d="M818.943 801.782C813.557 802.076 811.987 808.665 815.421 811.762C818.987 814.99 824.343 811.908 823.991 806.845C823.786 804.013 821.584 801.782 818.957 801.782" fill="#B8AFA3" />
        <path d="M801.758 801.782C796.357 802.076 794.816 808.665 798.265 811.762C801.846 814.99 807.232 811.908 806.865 806.845C806.645 803.954 804.458 801.782 801.772 801.782" fill="#B8AFA3" />
        <path d="M784.279 801.782C778.849 802.076 777.308 808.665 780.787 811.762C784.323 814.917 789.827 811.791 789.43 806.845C789.21 804.013 786.936 801.782 784.279 801.782Z" fill="#B8AFA3" />
        <path d="M766.889 801.782C761.4 802.076 759.874 808.665 763.411 811.762C767.08 814.99 772.524 811.908 772.099 806.845C771.864 804.013 769.574 801.782 766.889 801.782Z" fill="#B8AFA3" />
        <path d="M749.352 801.782C743.848 802.076 742.351 808.665 745.903 811.762C749.601 814.99 755.046 811.908 754.605 806.845C754.356 803.954 752.096 801.782 749.352 801.782Z" fill="#B8AFA3" />
        <path d="M731.726 801.782C726.194 802.076 724.711 808.665 728.307 811.762C732.034 814.99 737.508 811.908 737.039 806.845C736.775 804.013 734.441 801.782 731.726 801.782Z" fill="#B8AFA3" />
        <path d="M714.013 801.782C708.451 802.076 706.983 808.665 710.608 811.762C714.38 814.99 719.868 811.908 719.369 806.845C719.091 804.013 716.743 801.782 714.013 801.782Z" fill="#B8AFA3" />
        <path d="M696.241 801.782C690.694 802.076 689.27 808.665 692.88 811.762C696.564 814.917 702.111 811.791 701.612 806.845C701.319 804.013 698.971 801.782 696.241 801.782Z" fill="#B8AFA3" />
        <path d="M678.366 801.782C672.863 802.076 671.469 808.665 675.079 811.762C678.748 814.917 684.251 811.791 683.737 806.845C683.444 804.013 681.081 801.782 678.381 801.782" fill="#B8AFA3" />
        <path d="M660.814 801.782C655.34 802.076 653.99 808.665 657.586 811.762C661.24 814.917 666.699 811.791 666.156 806.845C665.848 804.013 663.5 801.782 660.814 801.782Z" fill="#B8AFA3" />
        <path d="M643.38 801.782C637.95 802.076 636.629 808.665 640.21 811.762C643.849 814.917 649.25 811.791 648.707 806.845C648.399 804.013 646.051 801.782 643.38 801.782Z" fill="#B8AFA3" />
        <path d="M626.077 801.782C620.691 802.076 619.4 808.665 622.966 811.762C626.591 814.917 631.947 811.791 631.375 806.845C631.052 804.013 628.719 801.782 626.077 801.782Z" fill="#B8AFA3" />
        <path d="M608.892 801.782C603.55 802.076 602.303 808.665 605.854 811.762C609.332 814.799 614.337 812.187 614.219 807.418C614.146 804.306 611.754 801.782 608.892 801.782Z" fill="#B8AFA3" />
        <path d="M223.822 801.782C219.727 802.105 219.991 809.854 223.264 812.363C225.862 814.359 228.503 811.629 228.034 807.418C227.696 804.306 225.803 801.782 223.807 801.782" fill="#B8AFA3" />
        <path d="M212.037 801.782C208.046 802.105 208.339 809.854 211.553 812.363C214.107 814.359 216.675 811.629 216.191 807.418C215.838 804.306 213.974 801.782 212.037 801.782Z" fill="#B8AFA3" />
        <path d="M1297.31 783.922C1293.56 784.274 1292.46 792.683 1294.97 794.855C1297.11 796.719 1300.02 792.507 1299.76 787.943C1299.62 785.58 1298.61 783.937 1297.31 783.937" fill="#B8AFA3" />
        <path d="M1287.24 783.922C1283.38 784.274 1282.31 792.683 1284.89 794.855C1287.11 796.719 1290.07 792.507 1289.79 787.943C1289.64 785.58 1288.6 783.937 1287.25 783.937" fill="#B8AFA3" />
        <path d="M1276.86 783.922C1272.89 784.274 1271.8 792.683 1274.48 794.855C1276.92 796.822 1280.06 792.096 1279.45 787.415C1279.17 785.301 1278.15 783.937 1276.86 783.937" fill="#B8AFA3" />
        <path d="M1266.08 783.922C1262.01 784.274 1260.94 792.683 1263.7 794.855C1266.21 796.836 1269.41 792.096 1268.75 787.415C1268.45 785.301 1267.4 783.937 1266.08 783.937" fill="#B8AFA3" />
        <path d="M1183.63 783.922C1179.23 784.245 1177.92 792.067 1180.88 794.606C1183.53 796.88 1187.24 793.153 1187 788.471C1186.87 785.83 1185.45 783.922 1183.63 783.922Z" fill="#B8AFA3" />
        <path d="M1170.85 783.922C1166.37 784.245 1165.06 792.067 1168.09 794.606C1170.79 796.88 1174.56 793.153 1174.3 788.471C1174.15 785.83 1172.7 783.922 1170.85 783.922Z" fill="#B8AFA3" />
        <path d="M1157.81 783.922C1153.25 784.245 1151.96 792.067 1155.06 794.606C1157.81 796.88 1161.65 793.153 1161.35 788.471C1161.19 785.83 1159.71 783.922 1157.81 783.922Z" fill="#B8AFA3" />
        <path d="M1030.21 784.143C1025.44 784.436 1024.06 791.407 1027.19 794.137C1030.28 796.852 1034.79 793.285 1034.29 788.516C1034.03 785.977 1032.31 784.143 1030.21 784.143Z" fill="#B8AFA3" />
        <path d="M1014.88 783.922C1009.86 784.23 1008.42 791.48 1011.71 794.327C1014.96 797.159 1019.7 793.432 1019.16 788.471C1018.87 785.83 1017.06 783.922 1014.88 783.922Z" fill="#B8AFA3" />
        <path d="M999.51 783.922C994.403 784.23 992.98 791.48 996.34 794.327C999.657 797.144 1004.44 793.417 1003.87 788.471C1003.56 785.83 1001.73 783.922 999.51 783.922Z" fill="#B8AFA3" />
        <path d="M983.925 783.922C978.788 784.23 977.379 791.48 980.769 794.327C984.115 797.144 988.929 793.432 988.342 788.471C988.034 785.83 986.17 783.922 983.925 783.922Z" fill="#B8AFA3" />
        <path d="M952.299 783.922C947.06 784.23 945.666 791.48 949.144 794.327C952.592 797.144 957.494 793.432 956.848 788.471C956.511 785.83 954.588 783.922 952.299 783.922Z" fill="#B8AFA3" />
        <path d="M936.215 783.922C930.917 784.23 929.537 791.48 933.059 794.327C936.552 797.144 941.483 793.432 940.823 788.471C940.471 785.83 938.533 783.922 936.215 783.922Z" fill="#B8AFA3" />
        <path d="M919.984 783.922C914.877 784.215 913.277 790.878 916.476 794.004C919.734 797.189 924.959 794.033 924.709 789.044C924.562 786.167 922.493 783.922 919.984 783.922Z" fill="#B8AFA3" />
        <path d="M903.4 783.922C898.234 784.215 896.649 790.878 899.893 794.004C903.18 797.189 908.463 794.033 908.199 789.044C908.038 786.167 905.939 783.922 903.415 783.922" fill="#B8AFA3" />
        <path d="M886.861 783.922C881.651 784.215 880.081 790.878 883.354 794.004C886.685 797.189 891.997 794.033 891.718 789.044C891.557 786.167 889.429 783.922 886.876 783.922" fill="#B8AFA3" />
        <path d="M870.175 783.922C864.921 784.215 863.351 790.878 866.667 794.004C870.043 797.189 875.385 794.033 875.076 789.044C874.9 786.167 872.743 783.922 870.175 783.922Z" fill="#B8AFA3" />
        <path d="M853.342 783.922C848.044 784.215 846.488 790.878 849.834 794.004C853.239 797.189 858.625 794.033 858.302 789.044C858.111 786.167 855.94 783.922 853.342 783.922Z" fill="#B8AFA3" />
        <path d="M836.377 783.922C831.021 784.215 829.465 790.863 832.855 794.004C836.407 797.262 841.748 794.165 841.396 789.044C841.191 786.167 838.989 783.922 836.377 783.922Z" fill="#B8AFA3" />
        <path d="M819.28 783.922C813.88 784.215 812.339 790.863 815.773 794.004C819.354 797.262 824.725 794.165 824.358 789.044C824.153 786.167 821.922 783.922 819.28 783.922Z" fill="#B8AFA3" />
        <path d="M802.037 783.922C796.621 784.215 795.095 790.878 798.558 794.004C802.169 797.262 807.555 794.165 807.173 789.044C806.953 786.123 804.751 783.922 802.037 783.922Z" fill="#B8AFA3" />
        <path d="M784.499 783.922C779.055 784.215 777.528 790.863 781.021 794.004C784.587 797.203 790.091 794.048 789.68 789.044C789.445 786.123 787.214 783.922 784.499 783.922Z" fill="#B8AFA3" />
        <path d="M767.05 783.922C761.547 784.215 760.035 790.863 763.572 794.004C767.256 797.262 772.715 794.165 772.289 789.044C772.04 786.123 769.794 783.922 767.05 783.922Z" fill="#B8AFA3" />
        <path d="M749.454 783.922C743.936 784.215 742.439 790.878 746.005 794.004C749.718 797.262 755.178 794.165 754.737 789.044C754.488 786.123 752.213 783.922 749.454 783.922Z" fill="#B8AFA3" />
        <path d="M731.77 783.922C726.223 784.215 724.741 790.878 728.336 794.004C731.99 797.189 737.567 794.033 737.097 789.044C736.833 786.167 734.485 783.922 731.77 783.922Z" fill="#B8AFA3" />
        <path d="M713.998 783.922C708.421 784.215 706.954 790.878 710.579 794.004C714.262 797.189 719.854 794.033 719.369 789.044C719.091 786.167 716.728 783.922 713.998 783.922Z" fill="#B8AFA3" />
        <path d="M696.153 783.922C690.605 784.215 689.153 790.878 692.777 794.004C696.476 797.203 702.038 794.048 701.539 789.044C701.26 786.167 698.882 783.922 696.153 783.922Z" fill="#B8AFA3" />
        <path d="M678.219 783.922C672.701 784.215 671.292 790.878 674.903 794.004C678.586 797.203 684.104 794.048 683.591 789.044C683.297 786.167 680.934 783.922 678.219 783.922Z" fill="#B8AFA3" />
        <path d="M660.609 783.922C655.135 784.215 653.755 790.863 657.336 794.004C661.005 797.189 666.479 794.048 665.951 789.044C665.657 786.167 663.294 783.922 660.594 783.922" fill="#B8AFA3" />
        <path d="M643.116 783.922C637.671 784.215 636.335 790.878 639.902 794.004C643.556 797.189 648.971 794.048 648.443 789.044C648.135 786.167 645.786 783.922 643.116 783.922Z" fill="#B8AFA3" />
        <path d="M625.74 783.922C620.339 784.215 619.018 790.863 622.584 794.004C626.224 797.189 631.595 794.048 631.038 789.044C630.729 786.167 628.396 783.922 625.725 783.922" fill="#B8AFA3" />
        <path d="M608.511 783.922C603.154 784.215 601.877 790.878 605.414 794.004C608.892 797.071 613.926 794.459 613.823 789.631C613.764 786.49 611.372 783.922 608.496 783.922" fill="#B8AFA3" />
        <path d="M222.105 783.922C218.01 784.245 218.142 792.067 221.371 794.606C223.954 796.631 226.639 793.887 226.243 789.617C225.95 786.476 224.101 783.908 222.105 783.908" fill="#B8AFA3" />
        <path d="M210.291 783.922C206.285 784.245 206.446 792.067 209.616 794.606C212.14 796.631 214.767 793.887 214.356 789.617C214.063 786.476 212.228 783.908 210.276 783.908" fill="#B8AFA3" />
        <path d="M198.741 783.922C194.838 784.245 195.014 792.067 198.125 794.606C200.605 796.631 203.144 793.887 202.733 789.617C202.425 786.476 200.634 783.908 198.727 783.908" fill="#B8AFA3" />
        <path d="M187.353 783.922C183.538 784.245 183.758 792.067 186.81 794.606C189.232 796.631 191.712 793.887 191.286 789.617C190.978 786.476 189.217 783.908 187.353 783.908" fill="#B8AFA3" />
        <path d="M1298.93 765.959C1295.19 766.312 1294.27 774.765 1296.81 776.937C1298.99 778.815 1301.83 774.589 1301.47 769.981C1301.28 767.618 1300.24 765.959 1298.93 765.959Z" fill="#B8AFA3" />
        <path d="M1288.84 765.959C1284.99 766.312 1284.07 774.765 1286.7 776.937C1288.96 778.815 1291.86 774.589 1291.46 769.981C1291.26 767.618 1290.19 765.959 1288.84 765.959Z" fill="#B8AFA3" />
        <path d="M1278.43 765.959C1274.46 766.312 1273.53 774.765 1276.26 776.937C1278.59 778.801 1281.56 774.574 1281.15 769.981C1280.93 767.618 1279.81 765.959 1278.43 765.959Z" fill="#B8AFA3" />
        <path d="M1267.62 765.959C1263.55 766.312 1262.64 774.765 1265.43 776.937C1267.84 778.815 1270.86 774.589 1270.42 769.981C1270.19 767.618 1269.04 765.959 1267.62 765.959Z" fill="#B8AFA3" />
        <path d="M1256.64 765.959C1252.47 766.312 1251.58 774.765 1254.44 776.937C1257.07 778.933 1260.26 774.178 1259.46 769.452C1259.11 767.324 1257.99 765.959 1256.62 765.959" fill="#B8AFA3" />
        <path d="M1197.48 766.811C1193.8 767.089 1192.79 773.796 1195.28 775.983C1197.51 777.935 1200.59 774.735 1200.34 770.714C1200.2 768.454 1198.99 766.811 1197.48 766.811Z" fill="#B8AFA3" />
        <path d="M1184.95 765.959C1180.56 766.282 1179.37 774.148 1182.37 776.702C1185.05 778.991 1188.72 775.249 1188.4 770.524C1188.22 767.882 1186.77 765.959 1184.95 765.959Z" fill="#B8AFA3" />
        <path d="M1172.11 765.959C1167.63 766.282 1166.44 774.148 1169.51 776.702C1172.26 778.991 1175.98 775.249 1175.65 770.524C1175.45 767.882 1173.97 765.959 1172.11 765.959Z" fill="#B8AFA3" />
        <path d="M1159.05 765.959C1154.48 766.282 1153.31 774.148 1156.44 776.702C1159.24 778.991 1163.02 775.249 1162.66 770.524C1162.45 767.882 1160.93 765.959 1159.05 765.959Z" fill="#B8AFA3" />
        <path d="M1046.15 765.959C1041.23 766.268 1039.85 773.547 1043.1 776.423C1046.18 779.153 1050.55 775.968 1050.4 771.111C1050.32 768.234 1048.45 765.974 1046.15 765.974" fill="#B8AFA3" />
        <path d="M1031.11 765.959C1026.15 766.268 1024.78 773.561 1028.05 776.423C1031.18 779.153 1035.58 775.983 1035.42 771.111C1035.32 768.175 1033.47 765.974 1031.09 765.974" fill="#B8AFA3" />
        <path d="M1015.71 765.959C1010.69 766.268 1009.33 773.547 1012.64 776.423C1015.76 779.109 1020.28 775.865 1020.1 771.111C1020 768.234 1018.06 765.974 1015.71 765.974" fill="#B8AFA3" />
        <path d="M1000.29 765.959C995.181 766.268 993.831 773.547 997.206 776.423C1000.57 779.255 1005.32 775.528 1004.71 770.538C1004.37 767.897 1002.52 765.974 1000.29 765.974" fill="#B8AFA3" />
        <path d="M984.673 765.959C979.537 766.268 978.187 773.561 981.606 776.423C984.996 779.27 989.795 775.528 989.149 770.538C988.812 767.882 986.919 765.959 984.673 765.974" fill="#B8AFA3" />
        <path d="M952.945 765.959C947.691 766.268 946.355 773.561 949.863 776.423C953.356 779.27 958.228 775.528 957.538 770.538C957.171 767.897 955.234 765.974 952.945 765.974" fill="#B8AFA3" />
        <path d="M936.831 765.959C931.533 766.268 930.198 773.561 933.749 776.423C937.286 779.27 942.202 775.528 941.498 770.538C941.116 767.897 939.164 765.974 936.831 765.974" fill="#B8AFA3" />
        <path d="M920.556 765.959C915.434 766.253 913.878 772.945 917.107 776.086C920.262 779.182 925.193 776.541 925.34 771.683C925.443 768.528 923.285 765.959 920.556 765.959Z" fill="#B8AFA3" />
        <path d="M903.929 765.959C898.763 766.253 897.207 772.945 900.465 776.086C903.797 779.3 909.065 776.13 908.757 771.096C908.581 768.219 906.453 765.959 903.914 765.959" fill="#B8AFA3" />
        <path d="M887.33 765.959C882.121 766.253 880.58 772.945 883.867 776.086C887.228 779.3 892.54 776.13 892.217 771.096C892.027 768.219 889.884 765.959 887.33 765.959Z" fill="#B8AFA3" />
        <path d="M870.6 765.959C865.347 766.253 863.806 772.945 867.137 776.086C870.542 779.3 875.884 776.13 875.546 771.096C875.355 768.219 873.183 765.959 870.6 765.959Z" fill="#B8AFA3" />
        <path d="M853.724 765.959C848.426 766.253 846.885 772.945 850.26 776.086C853.694 779.3 859.08 776.13 858.728 771.096C858.523 768.219 856.321 765.959 853.724 765.959Z" fill="#B8AFA3" />
        <path d="M836.7 765.959C831.344 766.253 829.803 772.945 833.207 776.086C836.685 779.3 842.115 776.115 841.748 771.096C841.543 768.219 839.312 765.959 836.685 765.959" fill="#B8AFA3" />
        <path d="M819.559 765.959C814.158 766.253 812.617 772.945 816.081 776.086C819.603 779.285 825.062 776.115 824.681 771.096C824.461 768.219 822.215 765.959 819.574 765.959" fill="#B8AFA3" />
        <path d="M802.257 765.959C796.841 766.253 795.315 772.945 798.793 776.086C802.418 779.373 807.819 776.247 807.422 771.096C807.188 768.161 804.972 765.959 802.257 765.959Z" fill="#B8AFA3" />
        <path d="M784.69 765.959C779.246 766.253 777.719 772.945 781.227 776.086C784.808 779.314 790.326 776.13 789.9 771.096C789.665 768.22 787.376 765.959 784.69 765.959Z" fill="#B8AFA3" />
        <path d="M767.182 765.959C761.664 766.253 760.153 772.945 763.704 776.086C767.314 779.285 772.876 776.115 772.436 771.096C772.186 768.219 769.882 765.959 767.182 765.959Z" fill="#B8AFA3" />
        <path d="M749.528 765.959C744.01 766.253 742.513 772.945 746.079 776.086C749.806 779.373 755.295 776.247 754.825 771.096C754.561 768.161 752.287 765.959 749.528 765.959Z" fill="#B8AFA3" />
        <path d="M731.8 765.959C726.252 766.253 724.755 772.945 728.351 776.086C732.02 779.3 737.611 776.13 737.141 771.096C736.877 768.219 734.529 765.959 731.8 765.959Z" fill="#B8AFA3" />
        <path d="M713.969 765.959C708.392 766.253 706.91 772.945 710.535 776.086C714.233 779.3 719.839 776.13 719.355 771.096C719.076 768.219 716.713 765.959 713.969 765.959Z" fill="#B8AFA3" />
        <path d="M696.094 765.959C690.532 766.253 689.079 772.945 692.704 776.086C696.417 779.3 702.008 776.13 701.509 771.096C701.23 768.219 698.853 765.959 696.109 765.959" fill="#B8AFA3" />
        <path d="M678.102 765.959C672.584 766.253 671.146 772.945 674.756 776.086C678.439 779.3 683.987 776.13 683.488 771.096C683.194 768.219 680.832 765.959 678.102 765.959Z" fill="#B8AFA3" />
        <path d="M660.433 765.959C654.944 766.253 653.55 772.945 657.131 776.086C660.8 779.3 666.303 776.13 665.789 771.096C665.496 768.219 663.133 765.959 660.433 765.959Z" fill="#B8AFA3" />
        <path d="M642.895 765.959C637.451 766.253 636.086 772.945 639.652 776.086C643.306 779.3 648.766 776.13 648.237 771.096C647.929 768.219 645.596 765.959 642.91 765.959" fill="#B8AFA3" />
        <path d="M625.476 765.959C620.075 766.253 618.725 772.945 622.276 776.086C625.916 779.3 631.316 776.13 630.773 771.096C630.465 768.219 628.132 765.959 625.461 765.959" fill="#B8AFA3" />
        <path d="M608.203 765.959C602.846 766.253 601.525 772.945 605.062 776.086C608.54 779.182 613.603 776.541 613.515 771.683C613.471 768.528 611.079 765.959 608.203 765.959Z" fill="#B8AFA3" />
        <path d="M197.274 765.959C193.355 766.282 193.399 774.148 196.467 776.702C198.917 778.742 201.515 775.983 201.192 771.683C200.943 768.528 199.196 765.959 197.274 765.959Z" fill="#B8AFA3" />
        <path d="M185.842 765.959C182.026 766.282 182.085 774.148 185.093 776.702C187.485 778.742 190.024 775.968 189.672 771.683C189.422 768.528 187.705 765.959 185.842 765.959Z" fill="#B8AFA3" />
        <path d="M174.82 765.959C171.093 766.282 171.195 774.148 174.131 776.702C176.479 778.742 178.929 775.968 178.577 771.683C178.313 768.528 176.625 765.959 174.82 765.959Z" fill="#B8AFA3" />
        <path d="M164.092 765.959C160.468 766.282 160.6 774.148 163.461 776.702C165.751 778.742 168.128 775.968 167.776 771.683C167.512 768.528 165.868 765.959 164.092 765.959Z" fill="#B8AFA3" />
        <path d="M153.644 765.959C150.107 766.282 150.268 774.148 153.071 776.702C155.199 778.639 157.4 776.32 157.283 772.27C157.18 768.909 155.478 765.959 153.644 765.959Z" fill="#B8AFA3" />
        <path d="M1310.04 747.85C1306.4 748.202 1305.64 756.714 1308.15 758.915C1310.31 760.808 1312.99 756.552 1312.57 751.9C1312.35 749.508 1311.31 747.85 1310.04 747.85Z" fill="#B8AFA3" />
        <path d="M1290.08 747.85C1286.23 748.202 1285.48 756.714 1288.15 758.915C1290.45 760.808 1293.27 756.552 1292.8 751.9C1292.55 749.508 1291.44 747.85 1290.08 747.85Z" fill="#B8AFA3" />
        <path d="M1279.67 747.85C1275.69 748.202 1274.93 756.714 1277.7 758.915C1280.08 760.793 1282.97 756.538 1282.47 751.9C1282.2 749.523 1281.06 747.85 1279.67 747.85Z" fill="#B8AFA3" />
        <path d="M1268.83 747.85C1264.77 748.202 1264.02 756.714 1266.85 758.915C1269.3 760.808 1272.25 756.552 1271.73 751.9C1271.45 749.508 1270.26 747.85 1268.83 747.85Z" fill="#B8AFA3" />
        <path d="M1257.83 747.85C1253.66 748.202 1252.91 756.714 1255.83 758.915C1258.34 760.808 1261.37 756.552 1260.81 751.9C1260.51 749.508 1259.3 747.85 1257.83 747.85Z" fill="#B8AFA3" />
        <path d="M1246.54 748.07C1242.73 748.393 1241.71 756.009 1244.31 758.489C1246.56 760.632 1249.55 757.521 1249.55 753.045C1249.55 750.256 1248.23 748.07 1246.54 748.07Z" fill="#B8AFA3" />
        <path d="M1211.04 748.275C1207.12 748.584 1206.14 755.921 1208.84 758.299C1211.26 760.427 1214.49 756.934 1214.17 752.531C1213.98 750.066 1212.67 748.261 1211.04 748.261" fill="#B8AFA3" />
        <path d="M1198.58 747.85C1194.25 748.187 1193.18 756.097 1196.18 758.665C1198.85 760.969 1202.41 757.198 1202.03 752.443C1201.83 749.772 1200.37 747.835 1198.58 747.835" fill="#B8AFA3" />
        <path d="M1185.96 747.85C1181.56 748.187 1180.5 756.097 1183.54 758.665C1186.27 760.969 1189.88 757.198 1189.5 752.443C1189.28 749.772 1187.8 747.835 1185.96 747.835" fill="#B8AFA3" />
        <path d="M1173.11 747.85C1168.62 748.187 1167.56 756.097 1170.67 758.665C1173.46 760.969 1177.14 757.198 1176.72 752.443C1176.48 749.772 1174.96 747.835 1173.11 747.835" fill="#B8AFA3" />
        <path d="M1160.02 747.85C1155.45 748.187 1154.38 756.097 1157.57 758.665C1160.41 760.969 1164.15 757.198 1163.71 752.443C1163.46 749.772 1161.91 747.835 1160.02 747.835" fill="#B8AFA3" />
        <path d="M1146.68 747.85C1142.02 748.187 1140.97 756.097 1144.2 758.665C1147.1 760.969 1150.89 757.198 1150.45 752.443C1150.2 749.772 1148.61 747.835 1146.68 747.835" fill="#B8AFA3" />
        <path d="M1061.75 747.85C1056.89 748.158 1055.6 755.496 1058.81 758.387C1061.9 761.146 1066.18 757.932 1065.99 753.03C1065.87 750.124 1064.01 747.85 1061.73 747.85" fill="#B8AFA3" />
        <path d="M1046.87 747.85C1041.94 748.158 1040.65 755.496 1043.92 758.387C1047.04 761.131 1051.39 757.932 1051.18 753.03C1051.07 750.124 1049.16 747.85 1046.87 747.85Z" fill="#B8AFA3" />
        <path d="M1031.78 747.85C1026.82 748.158 1025.53 755.496 1028.83 758.387C1032 761.146 1036.38 757.932 1036.17 753.03C1036.04 750.08 1034.16 747.85 1031.78 747.85Z" fill="#B8AFA3" />
        <path d="M1016.36 747.85C1011.32 748.158 1010.03 755.496 1013.39 758.387C1016.53 761.087 1021.04 757.829 1020.82 753.03C1020.69 750.124 1018.72 747.85 1016.36 747.85Z" fill="#B8AFA3" />
        <path d="M1000.92 747.85C995.812 748.158 994.506 755.496 997.925 758.387C1001.18 761.131 1005.67 757.932 1005.44 753.03C1005.29 750.124 1003.31 747.85 1000.92 747.85Z" fill="#B8AFA3" />
        <path d="M985.26 747.85C980.109 748.158 978.832 755.496 982.281 758.387C985.583 761.146 990.103 757.932 989.854 753.03C989.692 750.08 987.726 747.85 985.275 747.85" fill="#B8AFA3" />
        <path d="M969.44 747.85C964.23 748.158 962.953 755.496 966.446 758.387C969.719 761.072 974.356 757.829 974.092 753.03C973.931 750.124 971.891 747.85 969.44 747.85Z" fill="#B8AFA3" />
        <path d="M937.315 747.85C932.003 748.158 930.726 755.496 934.307 758.387C937.873 761.248 942.775 757.491 942.026 752.458C941.63 749.787 939.649 747.85 937.315 747.85Z" fill="#B8AFA3" />
        <path d="M920.996 747.85C915.874 748.143 914.363 754.879 917.606 758.049C920.791 761.16 925.722 758.504 925.839 753.617C925.912 750.432 923.74 747.85 921.011 747.85" fill="#B8AFA3" />
        <path d="M904.325 747.85C899.144 748.143 897.633 754.879 900.92 758.049C904.149 761.16 909.109 758.504 909.212 753.617C909.285 750.432 907.084 747.85 904.325 747.85Z" fill="#B8AFA3" />
        <path d="M887.697 747.85C882.473 748.143 880.961 754.879 884.278 758.049C887.536 761.16 892.54 758.504 892.643 753.617C892.702 750.432 890.486 747.85 887.697 747.85Z" fill="#B8AFA3" />
        <path d="M870.923 747.85C865.655 748.143 864.143 754.879 867.504 758.049C870.938 761.292 876.28 758.093 875.913 753.03C875.708 750.124 873.506 747.85 870.923 747.85Z" fill="#B8AFA3" />
        <path d="M854.017 747.85C848.705 748.143 847.193 754.879 850.583 758.049C854.047 761.292 859.432 758.093 859.051 753.03C858.831 750.124 856.615 747.85 854.017 747.85Z" fill="#B8AFA3" />
        <path d="M836.964 747.85C831.593 748.143 830.067 754.879 833.515 758.049C837.023 761.278 842.453 758.093 842.057 753.03C841.836 750.124 839.591 747.85 836.964 747.85Z" fill="#B8AFA3" />
        <path d="M819.779 747.85C814.364 748.143 812.852 754.879 816.316 758.049C819.853 761.278 825.312 758.093 824.916 753.03C824.681 750.124 822.421 747.85 819.779 747.85Z" fill="#B8AFA3" />
        <path d="M802.447 747.85C797.017 748.143 795.521 754.879 798.999 758.049C802.653 761.366 808.053 758.211 807.628 753.03C807.393 750.08 805.162 747.85 802.447 747.85Z" fill="#B8AFA3" />
        <path d="M784.837 747.85C779.377 748.143 777.866 754.879 781.388 758.049C784.984 761.292 790.516 758.108 790.076 753.03C789.826 750.124 787.537 747.85 784.837 747.85Z" fill="#B8AFA3" />
        <path d="M767.285 747.85C761.767 748.143 760.255 754.879 763.822 758.049C767.461 761.278 773.008 758.078 772.568 753.03C772.319 750.124 770 747.85 767.285 747.85Z" fill="#B8AFA3" />
        <path d="M749.601 747.85C744.068 748.143 742.571 754.879 746.152 758.049C749.894 761.366 755.383 758.211 754.913 753.03C754.649 750.08 752.36 747.85 749.586 747.85" fill="#B8AFA3" />
        <path d="M731.829 747.85C726.267 748.143 724.77 754.879 728.38 758.049C732.064 761.278 737.655 758.093 737.185 753.03C736.921 750.124 734.559 747.85 731.829 747.85Z" fill="#B8AFA3" />
        <path d="M713.954 747.85C708.363 748.143 706.881 754.879 710.505 758.049C714.218 761.278 719.839 758.093 719.355 753.03C719.076 750.124 716.698 747.85 713.954 747.85Z" fill="#B8AFA3" />
        <path d="M696.035 747.85C690.459 748.143 689.006 754.879 692.616 758.049C696.329 761.292 701.935 758.108 701.436 753.03C701.157 750.124 698.78 747.85 696.021 747.85" fill="#B8AFA3" />
        <path d="M678.014 747.85C672.481 748.143 671.043 754.879 674.638 758.049C678.337 761.292 683.899 758.093 683.4 753.03C683.106 750.124 680.744 747.85 678.014 747.85Z" fill="#B8AFA3" />
        <path d="M660.301 747.85C654.797 748.143 653.388 754.879 656.969 758.049C660.653 761.292 666.171 758.093 665.657 753.03C665.364 750.124 663.016 747.85 660.301 747.85Z" fill="#B8AFA3" />
        <path d="M642.719 747.85C637.26 748.143 635.866 754.879 639.432 758.049C643.086 761.292 648.56 758.093 648.046 753.03C647.753 750.124 645.405 747.85 642.719 747.85Z" fill="#B8AFA3" />
        <path d="M625.27 747.85C619.855 748.143 618.475 754.879 622.027 758.049C625.666 761.292 631.096 758.093 630.568 753.03C630.274 750.124 627.941 747.85 625.27 747.85Z" fill="#B8AFA3" />
        <path d="M607.953 748.07C602.758 748.363 601.466 754.85 604.871 757.902C608.217 760.896 613.119 758.343 613.06 753.617C613.016 750.565 610.727 748.085 607.953 748.085" fill="#B8AFA3" />
        <path d="M283.067 749.347C279.853 749.581 279.471 755.011 281.79 757.154C283.889 759.077 286.427 757.066 286.266 753.617C286.149 751.254 284.71 749.347 283.067 749.347Z" fill="#B8AFA3" />
        <path d="M256.783 747.85C252.395 748.187 252.175 756.097 255.521 758.665C258.397 760.881 261.479 757.668 260.921 753.015C260.569 750.066 258.793 747.835 256.798 747.835" fill="#B8AFA3" />
        <path d="M196.114 747.85C192.181 748.187 192.079 756.097 195.116 758.665C197.538 760.72 200.194 757.932 199.93 753.602C199.739 750.418 198.022 747.835 196.114 747.835" fill="#B8AFA3" />
        <path d="M162.86 747.85C159.22 748.187 159.191 756.097 162.023 758.665C164.283 760.72 166.719 757.932 166.441 753.602C166.235 750.418 164.635 747.835 162.86 747.835" fill="#B8AFA3" />
        <path d="M152.396 747.85C148.551 748.202 148.903 756.714 151.897 758.915C154.363 760.735 156.564 757.051 155.757 752.458C155.287 749.787 153.878 747.85 152.396 747.85Z" fill="#B8AFA3" />
        <path d="M142.197 747.85C138.469 748.216 138.851 756.714 141.756 758.915C143.987 760.603 146.1 757.359 145.572 753.03C145.22 750.08 143.767 747.85 142.197 747.85Z" fill="#B8AFA3" />
        <path d="M1310.98 729.608C1307.34 729.975 1306.76 738.56 1309.31 740.776C1311.39 742.582 1313.9 738.795 1313.64 734.246C1313.49 731.56 1312.36 729.608 1310.98 729.608Z" fill="#B8AFA3" />
        <path d="M1301.14 729.608C1297.39 729.975 1296.79 738.56 1299.43 740.776C1301.58 742.582 1304.16 738.795 1303.89 734.246C1303.73 731.56 1302.57 729.608 1301.14 729.608Z" fill="#B8AFA3" />
        <path d="M1290.99 729.608C1287.14 729.975 1286.55 738.56 1289.26 740.776C1291.61 742.684 1294.36 738.384 1293.78 733.688C1293.49 731.281 1292.35 729.608 1290.98 729.608" fill="#B8AFA3" />
        <path d="M1280.56 729.608C1276.57 729.975 1275.98 738.546 1278.8 740.776C1281.22 742.67 1284.04 738.37 1283.44 733.688C1283.13 731.281 1281.94 729.608 1280.55 729.608" fill="#B8AFA3" />
        <path d="M1269.7 729.608C1265.62 729.975 1265.03 738.546 1267.93 740.776C1270.42 742.684 1273.3 738.384 1272.68 733.688C1272.36 731.281 1271.14 729.608 1269.7 729.608Z" fill="#B8AFA3" />
        <path d="M1258.68 729.608C1254.5 729.975 1253.91 738.546 1256.87 740.776C1259.43 742.684 1262.38 738.384 1261.73 733.688C1261.39 731.281 1260.15 729.608 1258.68 729.608Z" fill="#B8AFA3" />
        <path d="M1247.38 729.608C1243.42 729.946 1242.51 737.929 1245.27 740.527C1247.6 742.728 1250.7 739.426 1250.62 734.818C1250.56 731.898 1249.15 729.608 1247.39 729.608" fill="#B8AFA3" />
        <path d="M1223.96 729.608C1219.82 729.946 1218.89 737.929 1221.79 740.527C1224.28 742.772 1227.46 739.514 1227.36 734.818C1227.29 731.854 1225.84 729.608 1223.96 729.608Z" fill="#B8AFA3" />
        <path d="M1211.85 729.608C1207.62 729.946 1206.68 737.929 1209.65 740.527C1212.3 742.86 1215.74 739.045 1215.3 734.246C1215.05 731.56 1213.6 729.608 1211.85 729.608Z" fill="#B8AFA3" />
        <path d="M1199.35 729.608C1195 729.946 1194.06 737.929 1197.12 740.527C1199.85 742.846 1203.34 739.03 1202.88 734.246C1202.63 731.56 1201.14 729.608 1199.35 729.608Z" fill="#B8AFA3" />
        <path d="M1186.71 729.608C1182.31 729.946 1181.37 737.929 1184.47 740.527C1187.24 742.86 1190.81 739.045 1190.34 734.246C1190.07 731.56 1188.55 729.608 1186.73 729.608" fill="#B8AFA3" />
        <path d="M1173.83 729.608C1169.33 729.946 1168.4 737.929 1171.55 740.527C1174.38 742.86 1178.01 739.045 1177.52 734.246C1177.24 731.56 1175.69 729.608 1173.83 729.608Z" fill="#B8AFA3" />
        <path d="M1160.71 729.608C1156.13 729.946 1155.19 737.929 1158.4 740.527C1161.29 742.86 1164.98 739.045 1164.48 734.246C1164.2 731.56 1162.6 729.608 1160.71 729.608Z" fill="#B8AFA3" />
        <path d="M1147.35 729.608C1142.7 729.946 1141.75 737.929 1145.03 740.527C1147.98 742.86 1151.72 739.045 1151.2 734.246C1150.9 731.56 1149.29 729.608 1147.35 729.608Z" fill="#B8AFA3" />
        <path d="M1133.76 729.608C1129.04 729.946 1128.08 737.929 1131.41 740.527C1134.42 742.86 1138.22 739.045 1137.68 734.246C1137.37 731.56 1135.73 729.608 1133.76 729.608Z" fill="#B8AFA3" />
        <path d="M1062.29 729.608C1057.42 729.931 1056.22 737.328 1059.47 740.233C1062.59 743.007 1066.86 739.779 1066.61 734.818C1066.46 731.898 1064.57 729.608 1062.29 729.608Z" fill="#B8AFA3" />
        <path d="M1047.4 729.608C1042.47 729.931 1041.25 737.328 1044.56 740.233C1047.73 743.007 1052.05 739.764 1051.78 734.818C1051.62 731.898 1049.7 729.608 1047.4 729.608Z" fill="#B8AFA3" />
        <path d="M1032.28 729.608C1027.31 729.931 1026.09 737.328 1029.45 740.233C1032.65 743.007 1037.01 739.779 1036.74 734.818C1036.58 731.854 1034.67 729.608 1032.3 729.608" fill="#B8AFA3" />
        <path d="M1016.83 729.608C1011.79 729.917 1010.56 737.328 1013.97 740.233C1017.14 742.963 1021.63 739.661 1021.35 734.818C1021.19 731.898 1019.19 729.608 1016.83 729.608Z" fill="#B8AFA3" />
        <path d="M1001.36 729.608C996.237 729.931 995.019 737.328 998.468 740.233C1001.77 743.007 1006.23 739.764 1005.94 734.818C1005.76 731.898 1003.75 729.608 1001.36 729.608Z" fill="#B8AFA3" />
        <path d="M985.686 729.608C980.535 729.931 979.302 737.328 982.795 740.233C986.126 743.022 990.631 739.779 990.323 734.818C990.147 731.854 988.151 729.608 985.686 729.608Z" fill="#B8AFA3" />
        <path d="M969.836 729.608C964.626 729.931 963.394 737.328 966.93 740.233C970.232 742.948 974.855 739.661 974.532 734.818C974.342 731.898 972.287 729.608 969.836 729.608Z" fill="#B8AFA3" />
        <path d="M937.653 729.608C932.326 729.931 931.108 737.328 934.718 740.233C938.093 742.948 942.804 739.661 942.466 734.818C942.261 731.898 940.148 729.608 937.653 729.608Z" fill="#B8AFA3" />
        <path d="M921.319 729.608C916.182 729.917 914.715 736.711 917.988 739.896C921.201 743.036 926.118 740.351 926.206 735.405C926.264 732.206 924.063 729.608 921.319 729.608Z" fill="#B8AFA3" />
        <path d="M904.618 729.608C899.438 729.917 897.956 736.711 901.272 739.896C904.53 743.036 909.491 740.351 909.564 735.405C909.608 732.206 907.392 729.608 904.618 729.608Z" fill="#B8AFA3" />
        <path d="M887.962 729.608C882.737 729.917 881.255 736.711 884.601 739.896C887.888 743.036 892.893 740.351 892.951 735.405C892.995 732.206 890.75 729.608 887.962 729.608Z" fill="#B8AFA3" />
        <path d="M871.173 729.608C865.904 729.917 864.422 736.711 867.798 739.896C871.114 743.036 876.163 740.351 876.221 735.405C876.265 732.206 874.005 729.608 871.173 729.608Z" fill="#B8AFA3" />
        <path d="M854.223 729.608C848.91 729.917 847.428 736.711 850.833 739.896C854.193 743.036 859.256 740.351 859.315 735.405C859.344 732.206 857.07 729.608 854.223 729.608Z" fill="#B8AFA3" />
        <path d="M837.14 729.608C831.754 729.917 830.272 736.711 833.721 739.896C837.243 743.154 842.673 739.925 842.262 734.818C842.027 731.898 839.782 729.608 837.14 729.608Z" fill="#B8AFA3" />
        <path d="M819.941 729.608C814.525 729.917 813.029 736.711 816.507 739.896C820.073 743.154 825.532 739.925 825.106 734.818C824.857 731.898 822.597 729.608 819.941 729.608Z" fill="#B8AFA3" />
        <path d="M802.58 729.608C797.15 729.917 795.653 736.711 799.16 739.896C802.829 743.242 808.23 740.057 807.789 734.818C807.54 731.854 805.295 729.608 802.58 729.608Z" fill="#B8AFA3" />
        <path d="M784.94 729.608C779.466 729.902 777.969 736.711 781.506 739.896C785.116 743.169 790.648 739.94 790.194 734.818C789.944 731.898 787.625 729.608 784.94 729.608Z" fill="#B8AFA3" />
        <path d="M767.358 729.608C761.826 729.917 760.329 736.711 763.895 739.896C767.534 743.154 773.096 739.925 772.642 734.818C772.377 731.898 770.059 729.608 767.344 729.608" fill="#B8AFA3" />
        <path d="M749.645 729.608C744.098 729.917 742.615 736.711 746.196 739.896C749.953 743.242 755.457 740.057 754.972 734.818C754.708 731.854 752.404 729.608 749.63 729.608" fill="#B8AFA3" />
        <path d="M731.844 729.608C726.267 729.917 724.785 736.711 728.395 739.896C732.093 743.169 737.699 739.94 737.215 734.818C736.936 731.898 734.588 729.608 731.844 729.608Z" fill="#B8AFA3" />
        <path d="M713.954 729.608C708.348 729.917 706.866 736.711 710.505 739.896C714.218 743.169 719.854 739.94 719.369 734.818C719.091 731.898 716.713 729.608 713.954 729.608Z" fill="#B8AFA3" />
        <path d="M696.006 729.608C690.429 729.917 688.947 736.711 692.572 739.896C696.285 743.169 701.906 739.94 701.421 734.818C701.142 731.898 698.765 729.608 696.006 729.608Z" fill="#B8AFA3" />
        <path d="M677.94 729.608C672.393 729.917 670.94 736.711 674.55 739.896C678.249 743.169 683.825 739.94 683.326 734.818C683.048 731.898 680.67 729.608 677.94 729.608Z" fill="#B8AFA3" />
        <path d="M660.212 729.608C654.694 729.917 653.271 736.711 656.852 739.896C660.535 743.169 666.068 739.94 665.569 734.818C665.275 731.898 662.927 729.608 660.212 729.608Z" fill="#B8AFA3" />
        <path d="M642.602 729.608C637.128 729.917 635.719 736.711 639.285 739.896C642.939 743.169 648.428 739.94 647.929 734.818C647.636 731.898 645.302 729.608 642.602 729.608Z" fill="#B8AFA3" />
        <path d="M625.123 729.608C619.693 729.917 618.299 736.711 621.851 739.896C625.344 743.051 630.495 740.351 630.451 735.405C630.421 732.206 628.044 729.608 625.123 729.608Z" fill="#B8AFA3" />
        <path d="M607.777 729.608C602.391 729.917 601.012 736.711 604.548 739.896C608.012 743.036 613.119 740.351 613.075 735.405C613.045 732.206 610.668 729.608 607.777 729.608Z" fill="#B8AFA3" />
        <path d="M243.384 729.608C239.07 729.946 238.747 737.929 241.99 740.527C244.793 742.772 247.86 739.514 247.361 734.818C247.053 731.898 245.307 729.608 243.384 729.608Z" fill="#B8AFA3" />
        <path d="M218.803 729.608C214.664 729.946 214.385 737.929 217.511 740.527C220.197 742.772 223.132 739.514 222.648 734.818C222.34 731.898 220.667 729.608 218.817 729.608" fill="#B8AFA3" />
        <path d="M161.979 729.608C158.017 729.975 158.193 738.56 161.231 740.776C163.74 742.611 166.074 738.883 165.34 734.246C164.914 731.56 163.505 729.608 161.979 729.608Z" fill="#B8AFA3" />
        <path d="M151.486 729.608C147.627 729.975 147.817 738.546 150.767 740.776C153.203 742.611 155.478 738.883 154.759 734.246C154.333 731.56 152.954 729.608 151.486 729.608Z" fill="#B8AFA3" />
        <path d="M141.287 729.608C137.544 729.975 137.75 738.56 140.626 740.776C142.945 742.567 145.19 738.795 144.501 734.246C144.09 731.56 142.74 729.608 141.301 729.608" fill="#B8AFA3" />
        <path d="M1347.94 711.278C1344.53 711.675 1344.46 720.964 1346.85 722.681C1348.88 724.134 1350.9 719.364 1350.2 714.83C1349.86 712.672 1348.98 711.278 1347.94 711.278Z" fill="#B8AFA3" />
        <path d="M1330.33 711.278C1326.92 711.645 1326.51 720.26 1328.95 722.49C1330.93 724.295 1333.22 720.495 1332.89 715.945C1332.7 713.245 1331.63 711.293 1330.33 711.293" fill="#B8AFA3" />
        <path d="M1321.09 711.278C1317.57 711.645 1317.16 720.26 1319.69 722.49C1321.73 724.295 1324.1 720.495 1323.77 715.945C1323.57 713.245 1322.44 711.293 1321.09 711.293" fill="#B8AFA3" />
        <path d="M1311.54 711.278C1307.9 711.645 1307.49 720.26 1310.09 722.49C1312.2 724.295 1314.64 720.495 1314.3 715.945C1314.09 713.245 1312.93 711.293 1311.54 711.293" fill="#B8AFA3" />
        <path d="M1301.69 711.278C1297.95 711.645 1297.53 720.26 1300.21 722.49C1302.4 724.295 1304.91 720.495 1304.54 715.945C1304.32 713.245 1303.13 711.293 1301.69 711.293" fill="#B8AFA3" />
        <path d="M1291.54 711.278C1287.68 711.645 1287.25 720.26 1290.03 722.49C1292.27 724.295 1294.85 720.509 1294.47 715.945C1294.25 713.245 1293.01 711.293 1291.54 711.293" fill="#B8AFA3" />
        <path d="M1281.09 711.278C1277.1 711.645 1276.67 720.26 1279.55 722.49C1282 724.398 1284.74 720.069 1284.05 715.373C1283.7 712.966 1282.48 711.278 1281.09 711.278Z" fill="#B8AFA3" />
        <path d="M1270.23 711.278C1266.15 711.645 1265.72 720.26 1268.66 722.49C1271.18 724.398 1273.99 720.084 1273.28 715.373C1272.91 712.966 1271.67 711.278 1270.23 711.278Z" fill="#B8AFA3" />
        <path d="M1259.19 711.278C1255.01 711.645 1254.58 720.26 1257.59 722.49C1260.19 724.398 1263.05 720.084 1262.32 715.373C1261.94 712.966 1260.65 711.278 1259.18 711.278" fill="#B8AFA3" />
        <path d="M1247.89 711.278C1243.93 711.616 1243.17 719.629 1245.97 722.241C1248.35 724.457 1251.39 721.14 1251.22 716.517C1251.12 713.538 1249.68 711.278 1247.89 711.278Z" fill="#B8AFA3" />
        <path d="M1236.31 711.278C1232.25 711.616 1231.47 719.629 1234.35 722.241C1236.84 724.486 1239.91 721.228 1239.72 716.517C1239.6 713.538 1238.13 711.278 1236.3 711.278" fill="#B8AFA3" />
        <path d="M1224.44 711.278C1220.3 711.616 1219.51 719.629 1222.46 722.241C1225 724.501 1228.13 721.228 1227.95 716.517C1227.83 713.524 1226.33 711.278 1224.46 711.278" fill="#B8AFA3" />
        <path d="M1212.32 711.278C1208.09 711.616 1207.3 719.629 1210.31 722.241C1212.85 724.442 1216.09 721.126 1215.9 716.517C1215.78 713.524 1214.24 711.278 1212.32 711.278Z" fill="#B8AFA3" />
        <path d="M1199.8 711.278C1195.46 711.616 1194.65 719.629 1197.75 722.241C1200.51 724.574 1203.95 720.744 1203.43 715.93C1203.13 713.23 1201.61 711.278 1199.82 711.278" fill="#B8AFA3" />
        <path d="M1187.15 711.278C1182.75 711.616 1181.93 719.629 1185.07 722.241C1187.87 724.574 1191.38 720.744 1190.83 715.93C1190.53 713.23 1188.97 711.278 1187.14 711.278" fill="#B8AFA3" />
        <path d="M1174.27 711.278C1169.78 711.616 1168.95 719.629 1172.15 722.241C1175.03 724.574 1178.6 720.744 1178.02 715.93C1177.7 713.23 1176.12 711.278 1174.25 711.278" fill="#B8AFA3" />
        <path d="M1161.13 711.278C1156.55 711.616 1155.73 719.629 1158.99 722.241C1161.91 724.574 1165.55 720.744 1164.98 715.93C1164.65 713.23 1163.04 711.278 1161.13 711.278Z" fill="#B8AFA3" />
        <path d="M1147.76 711.278C1143.11 711.616 1142.27 719.629 1145.6 722.241C1148.58 724.574 1152.28 720.744 1151.68 715.93C1151.34 713.23 1149.7 711.278 1147.76 711.278Z" fill="#B8AFA3" />
        <path d="M1134.16 711.278C1129.67 711.601 1128.6 719.027 1131.63 721.947C1134.47 724.677 1138.46 721.375 1138.21 716.517C1138.05 713.524 1136.32 711.278 1134.17 711.278" fill="#B8AFA3" />
        <path d="M1120.32 711.278C1115.75 711.601 1114.67 719.027 1117.77 721.947C1120.66 724.677 1124.71 721.375 1124.44 716.517C1124.28 713.524 1122.51 711.278 1120.33 711.278" fill="#B8AFA3" />
        <path d="M1047.69 712.335C1043.67 712.599 1042.74 718.66 1045.47 721.052C1048.09 723.327 1051.58 720.685 1051.31 716.62C1051.17 714.213 1049.57 712.335 1047.69 712.32" fill="#B8AFA3" />
        <path d="M1017.12 711.278C1012.07 711.587 1010.93 719.027 1014.36 721.947C1017.56 724.677 1022.02 721.375 1021.7 716.517C1021.49 713.538 1019.53 711.278 1017.12 711.278Z" fill="#B8AFA3" />
        <path d="M1001.62 711.278C996.501 711.587 995.342 719.027 998.835 721.947C1002.17 724.736 1006.6 721.478 1006.26 716.517C1006.06 713.538 1004.06 711.278 1001.62 711.278Z" fill="#B8AFA3" />
        <path d="M985.935 711.278C980.769 711.601 979.625 719.027 983.132 721.947C986.493 724.736 990.969 721.492 990.631 716.517C990.426 713.524 988.401 711.278 985.935 711.278Z" fill="#B8AFA3" />
        <path d="M970.086 711.278C964.861 711.601 963.702 719.027 967.268 721.947C970.673 724.736 975.193 721.492 974.841 716.517C974.62 713.524 972.581 711.278 970.086 711.278Z" fill="#B8AFA3" />
        <path d="M954.06 711.278C948.791 711.601 947.617 719.027 951.213 721.947C954.574 724.677 959.211 721.375 958.859 716.517C958.639 713.524 956.569 711.278 954.06 711.278Z" fill="#B8AFA3" />
        <path d="M921.51 711.278C916.373 711.587 914.95 718.411 918.252 721.61C921.495 724.765 926.397 722.079 926.441 717.119C926.47 713.905 924.254 711.278 921.51 711.278Z" fill="#B8AFA3" />
        <path d="M904.794 711.278C899.599 711.587 898.176 718.411 901.507 721.61C904.78 724.765 909.725 722.079 909.769 717.119C909.799 713.905 907.568 711.278 904.794 711.278Z" fill="#B8AFA3" />
        <path d="M888.123 711.278C882.884 711.587 881.446 718.411 884.821 721.61C888.138 724.765 893.113 722.079 893.157 717.119C893.186 713.905 890.926 711.278 888.123 711.278Z" fill="#B8AFA3" />
        <path d="M871.305 711.278C866.022 711.587 864.583 718.411 867.973 721.61C871.319 724.765 876.339 722.079 876.383 717.119C876.412 713.905 874.123 711.278 871.305 711.278Z" fill="#B8AFA3" />
        <path d="M854.355 711.278C849.028 711.587 847.575 718.411 851.009 721.61C854.384 724.765 859.447 722.079 859.476 717.119C859.491 713.905 857.202 711.278 854.355 711.278Z" fill="#B8AFA3" />
        <path d="M837.258 711.278C831.872 711.587 830.404 718.396 833.868 721.61C837.507 724.971 842.834 721.771 842.394 716.517C842.145 713.538 839.929 711.278 837.243 711.278" fill="#B8AFA3" />
        <path d="M820.029 711.278C814.599 711.587 813.131 718.396 816.624 721.61C820.293 724.971 825.664 721.771 825.209 716.517C824.96 713.538 822.729 711.278 820.014 711.278" fill="#B8AFA3" />
        <path d="M802.653 711.278C797.208 711.587 795.741 718.411 799.263 721.61C802.946 724.971 808.347 721.771 807.892 716.517C807.628 713.524 805.383 711.278 802.668 711.278" fill="#B8AFA3" />
        <path d="M784.998 711.278C779.524 711.572 778.042 718.396 781.579 721.61C785.204 724.897 790.722 721.654 790.267 716.517C790.003 713.538 787.743 711.278 784.998 711.278Z" fill="#B8AFA3" />
        <path d="M767.402 711.278C761.855 711.587 760.373 718.396 763.954 721.61C767.696 724.971 773.184 721.771 772.715 716.517C772.451 713.538 770.161 711.278 767.402 711.278Z" fill="#B8AFA3" />
        <path d="M749.674 711.278C744.127 711.587 742.645 718.411 746.24 721.61C749.997 724.971 755.501 721.771 755.031 716.517C754.767 713.524 752.463 711.278 749.689 711.278" fill="#B8AFA3" />
        <path d="M731.858 711.278C726.267 711.587 724.785 718.411 728.41 721.61C732.108 724.882 737.714 721.654 737.244 716.517C736.965 713.524 734.647 711.278 731.858 711.278Z" fill="#B8AFA3" />
        <path d="M713.939 711.278C708.319 711.587 706.837 718.411 710.476 721.61C714.189 724.882 719.839 721.654 719.355 716.517C719.076 713.524 716.743 711.278 713.939 711.278Z" fill="#B8AFA3" />
        <path d="M695.977 711.278C690.385 711.587 688.903 718.411 692.543 721.61C696.256 724.897 701.891 721.654 701.407 716.517C701.128 713.524 698.794 711.278 695.991 711.278" fill="#B8AFA3" />
        <path d="M677.896 711.278C672.334 711.587 670.882 718.411 674.492 721.61C678.19 724.897 683.781 721.654 683.282 716.517C683.004 713.524 680.685 711.278 677.896 711.278Z" fill="#B8AFA3" />
        <path d="M660.154 711.278C654.636 711.587 653.183 718.411 656.778 721.61C660.447 724.897 666.009 721.654 665.51 716.517C665.232 713.524 662.928 711.278 660.154 711.278Z" fill="#B8AFA3" />
        <path d="M642.528 711.278C637.04 711.587 635.616 718.411 639.182 721.61C642.837 724.897 648.34 721.654 647.841 716.517C647.562 713.524 645.273 711.278 642.528 711.278Z" fill="#B8AFA3" />
        <path d="M625.035 711.278C619.591 711.587 618.182 718.396 621.719 721.61C625.211 724.765 630.363 722.079 630.348 717.119C630.348 713.905 627.956 711.278 625.035 711.278Z" fill="#B8AFA3" />
        <path d="M161.436 711.278C157.459 711.645 157.474 720.26 160.468 722.49C162.933 724.325 165.355 720.597 164.709 715.945C164.342 713.245 162.962 711.293 161.436 711.293" fill="#B8AFA3" />
        <path d="M150.943 711.278C147.069 711.645 147.098 720.26 150.004 722.49C152.411 724.325 154.759 720.597 154.128 715.945C153.761 713.245 152.425 711.293 150.943 711.293" fill="#B8AFA3" />
        <path d="M140.729 711.278C136.972 711.645 137.016 720.26 139.849 722.49C142.182 724.339 144.471 720.597 143.855 715.945C143.503 713.245 142.182 711.293 140.744 711.293" fill="#B8AFA3" />
        <path d="M130.838 711.278C127.198 711.645 127.242 720.26 129.987 722.49C132.247 724.325 134.448 720.583 133.846 715.945C133.494 713.201 132.247 711.293 130.823 711.293" fill="#B8AFA3" />
        <path d="M111.877 712.13C109.089 712.423 109.103 719.849 111.231 721.669C112.904 723.122 114.636 720.319 114.357 716.591C114.166 714.038 113.11 712.115 111.892 712.115" fill="#B8AFA3" />
        <path d="M1339.44 692.802C1335.9 693.198 1336.05 702.561 1338.57 704.278C1340.7 705.746 1342.71 700.947 1341.87 696.397C1341.48 694.211 1340.52 692.802 1339.45 692.802" fill="#B8AFA3" />
        <path d="M1330.53 692.802C1327.14 693.169 1326.91 701.842 1329.39 704.073C1331.29 705.79 1333.42 702.488 1333.25 698.07C1333.13 695.106 1331.94 692.802 1330.55 692.802" fill="#B8AFA3" />
        <path d="M1321.29 692.802C1317.78 693.169 1317.53 701.842 1320.1 704.073C1322.18 705.892 1324.47 702.077 1324.04 697.483C1323.79 694.768 1322.64 692.787 1321.29 692.787" fill="#B8AFA3" />
        <path d="M1311.75 692.802C1308.12 693.169 1307.87 701.842 1310.53 704.073C1312.69 705.892 1315.05 702.077 1314.61 697.483C1314.34 694.768 1313.14 692.787 1311.75 692.787" fill="#B8AFA3" />
        <path d="M1301.88 692.802C1298.14 693.169 1297.89 701.842 1300.62 704.073C1302.85 705.892 1305.27 702.077 1304.82 697.483C1304.56 694.768 1303.31 692.787 1301.87 692.787" fill="#B8AFA3" />
        <path d="M1291.73 692.802C1287.88 693.169 1287.62 701.842 1290.44 704.073C1292.73 705.892 1295.24 702.077 1294.77 697.483C1294.49 694.768 1293.21 692.787 1291.73 692.787" fill="#B8AFA3" />
        <path d="M1281.28 692.802C1277.3 693.169 1277.04 701.842 1279.94 704.073C1282.31 705.892 1284.89 702.077 1284.39 697.483C1284.1 694.768 1282.79 692.787 1281.27 692.787" fill="#B8AFA3" />
        <path d="M1270.41 692.802C1266.34 693.169 1266.08 701.842 1269.06 704.073C1271.62 705.995 1274.34 701.666 1273.55 696.926C1273.13 694.489 1271.84 692.802 1270.42 692.802" fill="#B8AFA3" />
        <path d="M1259.37 692.802C1255.2 693.169 1254.92 701.842 1257.99 704.073C1260.62 705.995 1263.42 701.666 1262.6 696.926C1262.17 694.489 1260.85 692.802 1259.38 692.802" fill="#B8AFA3" />
        <path d="M1248.07 692.802C1244.12 693.139 1243.49 701.211 1246.34 703.838C1248.76 706.068 1251.74 702.722 1251.49 698.085C1251.33 695.12 1249.82 692.816 1248.05 692.816" fill="#B8AFA3" />
        <path d="M1236.48 692.802C1232.41 693.139 1231.78 701.211 1234.71 703.838C1237.25 706.098 1240.26 702.825 1240 698.085C1239.84 695.12 1238.3 692.816 1236.49 692.816" fill="#B8AFA3" />
        <path d="M1224.6 692.802C1220.46 693.139 1219.82 701.211 1222.81 703.838C1225.34 706.054 1228.46 702.722 1228.2 698.085C1228.02 695.076 1226.48 692.816 1224.6 692.816" fill="#B8AFA3" />
        <path d="M1212.48 692.802C1208.25 693.139 1207.59 701.211 1210.65 703.838C1213.23 706.068 1216.43 702.722 1216.15 698.085C1215.97 695.12 1214.36 692.816 1212.48 692.816" fill="#B8AFA3" />
        <path d="M1199.96 692.802C1195.63 693.139 1194.96 701.211 1198.08 703.838C1200.78 706.098 1204 702.825 1203.72 698.085C1203.54 695.12 1201.9 692.816 1199.96 692.816" fill="#B8AFA3" />
        <path d="M1187.31 692.802C1182.91 693.139 1182.23 701.211 1185.4 703.838C1188.25 706.186 1191.7 702.341 1191.08 697.498C1190.73 694.783 1189.15 692.802 1187.31 692.802Z" fill="#B8AFA3" />
        <path d="M1174.41 692.802C1169.92 693.139 1169.23 701.211 1172.48 703.838C1175.38 706.2 1178.9 702.341 1178.26 697.498C1177.89 694.783 1176.28 692.802 1174.41 692.802Z" fill="#B8AFA3" />
        <path d="M1161.28 692.802C1156.71 693.139 1156.01 701.211 1159.31 703.838C1162.28 706.2 1165.86 702.341 1165.2 697.498C1164.83 694.783 1163.19 692.802 1161.28 692.802Z" fill="#B8AFA3" />
        <path d="M1147.91 692.802C1143.26 693.139 1142.54 701.211 1145.91 703.838C1148.94 706.2 1152.58 702.341 1151.9 697.498C1151.52 694.783 1149.85 692.802 1147.91 692.802Z" fill="#B8AFA3" />
        <path d="M1134.29 692.802C1129.8 693.125 1128.83 700.594 1131.91 703.544C1134.69 706.2 1138.4 703.427 1138.43 698.687C1138.44 695.443 1136.59 692.816 1134.29 692.816" fill="#B8AFA3" />
        <path d="M1120.45 692.802C1115.89 693.125 1114.9 700.594 1118.04 703.544C1120.86 706.2 1124.65 703.427 1124.66 698.687C1124.68 695.443 1122.78 692.816 1120.45 692.816" fill="#B8AFA3" />
        <path d="M1106.22 692.802C1101.58 693.125 1100.58 700.594 1103.76 703.544C1106.74 706.289 1110.81 702.972 1110.47 698.085C1110.27 695.12 1108.4 692.816 1106.22 692.816" fill="#B8AFA3" />
        <path d="M1091.94 692.802C1087.23 693.125 1086.23 700.594 1089.46 703.544C1092.48 706.289 1096.62 702.972 1096.27 698.085C1096.06 695.12 1094.15 692.816 1091.94 692.816" fill="#B8AFA3" />
        <path d="M1077.44 692.802C1072.67 693.125 1071.64 700.594 1074.91 703.544C1077.98 706.289 1082.18 702.972 1081.81 698.085C1081.59 695.12 1079.67 692.816 1077.42 692.816" fill="#B8AFA3" />
        <path d="M1062.73 692.802C1057.86 693.125 1056.83 700.594 1060.16 703.544C1063.35 706.347 1067.55 703.089 1067.18 698.085C1066.96 695.12 1065.01 692.816 1062.73 692.816" fill="#B8AFA3" />
        <path d="M1047.81 692.802C1042.88 693.125 1041.82 700.594 1045.21 703.544C1048.44 706.347 1052.69 703.089 1052.31 698.085C1052.09 695.12 1050.11 692.816 1047.81 692.816" fill="#B8AFA3" />
        <path d="M1017.21 692.993C1012.34 693.301 1011.31 700.507 1014.66 703.339C1017.84 706.039 1022.04 702.899 1021.67 698.085C1021.45 695.223 1019.5 692.993 1017.22 692.993" fill="#B8AFA3" />
        <path d="M1001.73 692.802C996.604 693.125 995.518 700.594 999.04 703.544C1002.4 706.347 1006.82 703.089 1006.42 698.085C1006.19 695.12 1004.13 692.816 1001.74 692.816" fill="#B8AFA3" />
        <path d="M986.023 692.802C980.872 693.125 979.771 700.594 983.323 703.544C986.713 706.347 991.16 703.089 990.763 698.085C990.529 695.076 988.489 692.816 986.023 692.816" fill="#B8AFA3" />
        <path d="M970.159 692.802C964.949 693.125 963.849 700.594 967.429 703.544C970.775 706.289 975.354 702.972 974.958 698.085C974.723 695.12 972.61 692.816 970.159 692.816" fill="#B8AFA3" />
        <path d="M954.133 692.802C948.865 693.125 947.749 700.594 951.374 703.544C954.764 706.289 959.387 702.972 958.976 698.085C958.741 695.12 956.599 692.816 954.133 692.816" fill="#B8AFA3" />
        <path d="M937.932 692.993C933.015 693.286 931.695 699.905 934.879 703.016C938.005 706.069 942.672 703.456 942.687 698.672C942.687 695.546 940.559 692.993 937.932 692.993Z" fill="#B8AFA3" />
        <path d="M921.568 692.802C916.432 693.11 915.053 699.978 918.369 703.207C921.642 706.377 926.529 703.676 926.529 698.687C926.529 695.443 924.313 692.816 921.554 692.816" fill="#B8AFA3" />
        <path d="M904.853 692.802C899.673 693.11 898.278 699.978 901.624 703.207C904.926 706.377 909.858 703.676 909.872 698.687C909.872 695.443 907.627 692.816 904.853 692.816" fill="#B8AFA3" />
        <path d="M888.182 692.802C882.943 693.11 881.548 699.978 884.938 703.207C888.27 706.377 893.245 703.676 893.259 698.687C893.259 695.443 890.999 692.816 888.196 692.816" fill="#B8AFA3" />
        <path d="M871.364 692.802C866.08 693.11 864.672 699.978 868.091 703.207C871.452 706.377 876.471 703.676 876.485 698.687C876.485 695.443 874.196 692.816 871.378 692.816" fill="#B8AFA3" />
        <path d="M854.399 692.802C849.071 693.11 847.648 699.978 851.097 703.207C854.487 706.377 859.55 703.676 859.55 698.687C859.55 695.443 857.246 692.816 854.399 692.816" fill="#B8AFA3" />
        <path d="M837.302 692.802C831.916 693.11 830.478 699.978 833.956 703.207C837.375 706.377 842.482 703.676 842.497 698.687C842.497 695.443 840.164 692.816 837.302 692.816" fill="#B8AFA3" />
        <path d="M820.058 692.802C814.628 693.11 813.175 699.978 816.697 703.207C820.146 706.377 825.297 703.676 825.297 698.687C825.297 695.443 822.949 692.816 820.058 692.816" fill="#B8AFA3" />
        <path d="M802.682 692.802C797.238 693.11 795.785 699.978 799.307 703.207C802.917 706.509 808.391 703.251 807.921 698.085C807.657 695.076 805.397 692.816 802.668 692.816" fill="#B8AFA3" />
        <path d="M785.013 692.802C779.539 693.11 778.071 699.978 781.608 703.207C785.248 706.523 790.766 703.265 790.296 698.085C790.032 695.12 787.699 692.816 785.013 692.816" fill="#B8AFA3" />
        <path d="M767.417 692.802C761.87 693.11 760.402 699.978 763.983 703.207C767.652 706.509 773.214 703.251 772.73 698.085C772.451 695.12 770.117 692.816 767.402 692.816" fill="#B8AFA3" />
        <path d="M749.674 692.802C744.127 693.11 742.645 699.978 746.24 703.207C749.909 706.509 755.501 703.251 755.031 698.085C754.752 695.076 752.448 692.816 749.674 692.816" fill="#B8AFA3" />
        <path d="M731.858 692.802C726.267 693.11 724.785 699.978 728.41 703.207C732.108 706.509 737.728 703.251 737.244 698.085C736.965 695.12 734.603 692.816 731.858 692.816" fill="#B8AFA3" />
        <path d="M713.939 692.802C708.319 693.11 706.837 699.978 710.476 703.207C714.204 706.509 719.839 703.251 719.355 698.085C719.076 695.12 716.698 692.816 713.939 692.816" fill="#B8AFA3" />
        <path d="M695.962 692.802C690.371 693.11 688.888 699.978 692.513 703.207C696.241 706.523 701.876 703.265 701.377 698.085C701.098 695.12 698.721 692.816 695.962 692.816" fill="#B8AFA3" />
        <path d="M677.882 692.802C672.32 693.11 670.852 699.978 674.448 703.207C678.146 706.523 683.737 703.265 683.253 698.085C682.974 695.12 680.611 692.816 677.867 692.816" fill="#B8AFA3" />
        <path d="M660.139 692.802C654.621 693.11 653.154 699.978 656.734 703.207C660.403 706.523 665.965 703.265 665.481 698.085C665.202 695.12 662.854 692.816 660.139 692.816" fill="#B8AFA3" />
        <path d="M642.499 692.802C637.011 693.11 635.572 699.978 639.124 703.207C642.778 706.523 648.296 703.265 647.812 698.085C647.533 695.12 645.199 692.816 642.499 692.816" fill="#B8AFA3" />
        <path d="M624.991 692.802C619.547 693.11 618.108 699.978 621.645 703.207C625.123 706.391 630.304 703.676 630.289 698.687C630.289 695.443 627.912 692.816 624.991 692.816" fill="#B8AFA3" />
        <path d="M255.462 694.754C252.542 694.974 252.145 700.36 254.273 702.121C256.093 703.618 258.295 701.387 258.06 698.276C257.913 696.265 256.798 694.754 255.462 694.754Z" fill="#B8AFA3" />
        <path d="M161.26 692.993C157.415 693.345 157.268 701.695 160.115 703.853C162.463 705.628 164.856 702.018 164.327 697.513C164.019 694.886 162.728 692.978 161.26 692.978" fill="#B8AFA3" />
        <path d="M150.752 692.802C146.878 693.169 146.731 701.842 149.593 704.073C151.97 705.922 154.392 702.165 153.849 697.483C153.541 694.768 152.235 692.787 150.752 692.787" fill="#B8AFA3" />
        <path d="M140.538 692.802C136.781 693.169 136.635 701.842 139.423 704.073C141.683 705.892 144.075 702.077 143.561 697.483C143.253 694.768 141.976 692.787 140.538 692.787" fill="#B8AFA3" />
        <path d="M130.647 692.802C127.007 693.169 126.875 701.842 129.576 704.073C131.806 705.922 134.081 702.165 133.567 697.483C133.274 694.768 132.041 692.787 130.647 692.787" fill="#B8AFA3" />
        <path d="M121.049 692.802C117.512 693.169 117.395 701.842 120.007 704.073C122.018 705.79 124.175 702.473 123.926 698.07C123.764 695.106 122.487 692.802 121.049 692.802Z" fill="#B8AFA3" />
        <path d="M111.657 692.802C108.237 693.169 108.12 701.842 110.659 704.073C112.596 705.79 114.695 702.488 114.46 698.07C114.298 695.062 113.095 692.787 111.657 692.802Z" fill="#B8AFA3" />
        <path d="M1339.25 674.326C1335.74 674.722 1336.08 684.056 1338.62 685.773C1340.79 687.24 1342.68 682.456 1341.74 677.892C1341.29 675.72 1340.32 674.311 1339.23 674.311" fill="#B8AFA3" />
        <path d="M1330.34 674.326C1326.96 674.693 1326.91 683.336 1329.43 685.582C1331.38 687.314 1333.44 683.997 1333.16 679.58C1332.98 676.63 1331.73 674.326 1330.34 674.326Z" fill="#B8AFA3" />
        <path d="M1321.09 674.326C1317.6 674.693 1317.53 683.336 1320.14 685.582C1322.15 687.314 1324.28 683.997 1324 679.58C1323.81 676.63 1322.53 674.326 1321.09 674.326Z" fill="#B8AFA3" />
        <path d="M1311.56 674.326C1307.95 674.693 1307.87 683.336 1310.57 685.582C1312.77 687.402 1315.05 683.586 1314.52 678.993C1314.2 676.278 1312.96 674.326 1311.57 674.326" fill="#B8AFA3" />
        <path d="M1301.71 674.326C1297.98 674.693 1297.91 683.336 1300.68 685.582C1302.94 687.402 1305.3 683.586 1304.75 678.993C1304.42 676.278 1303.15 674.326 1301.71 674.326Z" fill="#B8AFA3" />
        <path d="M1291.55 674.326C1287.72 674.693 1287.63 683.336 1290.48 685.582C1292.81 687.402 1295.24 683.586 1294.68 678.993C1294.34 676.278 1293.03 674.326 1291.55 674.326Z" fill="#B8AFA3" />
        <path d="M1281.1 674.326C1277.14 674.693 1277.04 683.336 1279.99 685.582C1282.38 687.402 1284.89 683.586 1284.32 678.993C1283.98 676.292 1282.63 674.326 1281.1 674.326Z" fill="#B8AFA3" />
        <path d="M1270.24 674.326C1266.19 674.693 1266.09 683.336 1269.1 685.582C1271.56 687.402 1274.13 683.601 1273.55 678.993C1273.19 676.278 1271.81 674.326 1270.24 674.326Z" fill="#B8AFA3" />
        <path d="M1259.21 674.326C1255.38 674.663 1254.91 682.72 1257.73 685.332C1260 687.446 1262.72 684.599 1262.67 680.181C1262.63 676.953 1261.07 674.326 1259.21 674.326Z" fill="#B8AFA3" />
        <path d="M1247.91 674.326C1243.97 674.663 1243.49 682.705 1246.38 685.332C1248.85 687.563 1251.77 684.232 1251.43 679.58C1251.21 676.63 1249.67 674.326 1247.91 674.326Z" fill="#B8AFA3" />
        <path d="M1236.31 674.326C1232.26 674.663 1231.76 682.72 1234.74 685.332C1237.27 687.548 1240.26 684.217 1239.92 679.58C1239.7 676.63 1238.12 674.326 1236.33 674.326" fill="#B8AFA3" />
        <path d="M1224.44 674.326C1220.32 674.663 1219.82 682.72 1222.84 685.332C1225.41 687.563 1228.48 684.217 1228.13 679.58C1227.91 676.586 1226.32 674.326 1224.44 674.326Z" fill="#B8AFA3" />
        <path d="M1212.33 674.326C1208.12 674.663 1207.59 682.72 1210.69 685.332C1213.32 687.563 1216.44 684.232 1216.09 679.58C1215.87 676.63 1214.21 674.326 1212.33 674.326Z" fill="#B8AFA3" />
        <path d="M1199.82 674.326C1195.5 674.663 1194.96 682.72 1198.11 685.332C1200.8 687.548 1204 684.217 1203.65 679.58C1203.43 676.63 1201.74 674.326 1199.82 674.326Z" fill="#B8AFA3" />
        <path d="M1187.17 674.326C1182.78 674.663 1182.22 682.72 1185.43 685.332C1188.16 687.563 1191.44 684.217 1191.07 679.58C1190.83 676.586 1189.16 674.326 1187.15 674.326" fill="#B8AFA3" />
        <path d="M1174.28 674.326C1169.82 674.663 1169.25 682.72 1172.52 685.332C1175.31 687.563 1178.64 684.232 1178.27 679.58C1178.04 676.63 1176.29 674.326 1174.3 674.326" fill="#B8AFA3" />
        <path d="M1161.15 674.326C1156.6 674.663 1156.01 682.72 1159.34 685.332C1162.35 687.695 1165.87 683.85 1165.14 678.993C1164.73 676.292 1163.05 674.326 1161.15 674.326Z" fill="#B8AFA3" />
        <path d="M1147.78 674.326C1143.14 674.663 1142.54 682.72 1145.94 685.332C1148.99 687.695 1152.58 683.85 1151.84 678.993C1151.43 676.278 1149.71 674.326 1147.79 674.326" fill="#B8AFA3" />
        <path d="M1134.16 674.326C1129.68 674.649 1128.83 682.104 1131.93 685.039C1134.74 687.695 1138.41 684.921 1138.37 680.181C1138.34 676.953 1136.45 674.326 1134.14 674.326" fill="#B8AFA3" />
        <path d="M1120.33 674.326C1115.78 674.649 1114.9 682.104 1118.07 685.039C1120.94 687.695 1124.66 684.921 1124.62 680.181C1124.59 676.953 1122.67 674.326 1120.33 674.326Z" fill="#B8AFA3" />
        <path d="M1106.1 674.326C1101.48 674.649 1100.58 682.104 1103.79 685.039C1106.7 687.695 1110.5 684.921 1110.46 680.181C1110.43 676.953 1108.48 674.326 1106.1 674.326Z" fill="#B8AFA3" />
        <path d="M1091.82 674.326C1087.12 674.649 1086.21 682.104 1089.47 685.039C1092.52 687.798 1096.62 684.481 1096.21 679.58C1095.96 676.63 1094.03 674.326 1091.82 674.326Z" fill="#B8AFA3" />
        <path d="M1077.32 674.326C1072.56 674.649 1071.63 682.104 1074.93 685.039C1078.02 687.798 1082.18 684.481 1081.77 679.58C1081.52 676.63 1079.56 674.326 1077.32 674.326Z" fill="#B8AFA3" />
        <path d="M1062.61 674.326C1057.77 674.649 1056.82 682.104 1060.18 685.039C1063.33 687.783 1067.55 684.466 1067.13 679.58C1066.89 676.63 1064.9 674.326 1062.63 674.326" fill="#B8AFA3" />
        <path d="M1047.72 674.326C1042.8 674.649 1041.83 682.104 1045.24 685.039C1048.42 687.783 1052.71 684.466 1052.28 679.58C1052.03 676.63 1050.02 674.326 1047.72 674.326Z" fill="#B8AFA3" />
        <path d="M1032.59 674.326C1027.63 674.649 1026.66 682.104 1030.09 685.039C1033.4 687.857 1037.65 684.584 1037.23 679.58C1036.96 676.586 1034.98 674.326 1032.6 674.326" fill="#B8AFA3" />
        <path d="M1001.64 674.546C996.722 674.854 995.753 682.045 999.143 684.863C1002.4 687.578 1006.61 684.423 1006.19 679.594C1005.94 676.762 1003.94 674.546 1001.64 674.546Z" fill="#B8AFA3" />
        <path d="M985.935 674.326C980.799 674.649 979.772 682.104 983.323 685.039C986.742 687.857 991.16 684.584 990.719 679.58C990.455 676.586 988.401 674.326 985.935 674.326Z" fill="#B8AFA3" />
        <path d="M970.086 674.326C964.891 674.649 963.849 682.104 967.444 685.039C970.82 687.798 975.369 684.481 974.929 679.58C974.665 676.63 972.537 674.326 970.086 674.326Z" fill="#B8AFA3" />
        <path d="M954.06 674.326C948.806 674.649 947.75 682.104 951.389 685.039C954.794 687.798 959.387 684.481 958.947 679.58C958.683 676.63 956.54 674.326 954.06 674.326Z" fill="#B8AFA3" />
        <path d="M937.858 674.326C932.781 674.634 931.46 681.473 934.776 684.701C938.034 687.886 942.863 685.171 942.833 680.181C942.819 676.953 940.588 674.326 937.873 674.326" fill="#B8AFA3" />
        <path d="M921.51 674.326C916.388 674.634 915.053 681.473 918.384 684.701C921.671 687.886 926.544 685.171 926.514 680.181C926.499 676.953 924.254 674.326 921.51 674.326Z" fill="#B8AFA3" />
        <path d="M904.794 674.326C899.629 674.634 898.278 681.473 901.639 684.701C904.956 687.886 909.872 685.171 909.857 680.181C909.857 676.953 907.568 674.326 904.794 674.326Z" fill="#B8AFA3" />
        <path d="M888.138 674.326C882.913 674.634 881.548 681.473 884.953 684.701C888.299 687.886 893.259 685.171 893.245 680.181C893.245 676.953 890.941 674.326 888.152 674.326" fill="#B8AFA3" />
        <path d="M871.32 674.326C866.051 674.634 864.672 681.473 868.091 684.701C871.466 687.886 876.471 685.171 876.456 680.181C876.456 676.953 874.137 674.326 871.32 674.326Z" fill="#B8AFA3" />
        <path d="M854.355 674.326C849.042 674.634 847.648 681.473 851.097 684.701C854.501 687.886 859.55 685.171 859.535 680.181C859.535 676.953 857.202 674.326 854.355 674.326Z" fill="#B8AFA3" />
        <path d="M837.258 674.546C832.092 674.839 830.727 681.429 834.088 684.54C837.39 687.607 842.291 684.98 842.277 680.167C842.277 677.07 840.017 674.546 837.258 674.546Z" fill="#B8AFA3" />
        <path d="M820.029 674.326C814.614 674.634 813.175 681.473 816.697 684.701C820.161 687.871 825.297 685.171 825.283 680.181C825.283 676.953 822.92 674.326 820.029 674.326Z" fill="#B8AFA3" />
        <path d="M802.653 674.326C797.223 674.634 795.785 681.473 799.307 684.701C802.785 687.886 807.951 685.171 807.936 680.181C807.936 676.953 805.559 674.326 802.638 674.326" fill="#B8AFA3" />
        <path d="M784.998 674.326C779.524 674.634 778.071 681.473 781.623 684.701C785.13 687.886 790.34 685.186 790.325 680.181C790.325 676.953 787.933 674.326 784.998 674.326Z" fill="#B8AFA3" />
        <path d="M767.402 674.326C761.87 674.634 760.402 681.473 763.983 684.701C767.652 688.003 773.214 684.745 772.73 679.58C772.451 676.63 770.117 674.326 767.402 674.326Z" fill="#B8AFA3" />
        <path d="M749.674 674.326C744.142 674.634 742.659 681.473 746.255 684.701C749.938 688.003 755.515 684.745 755.031 679.58C754.752 676.586 752.448 674.326 749.674 674.326Z" fill="#B8AFA3" />
        <path d="M731.858 674.326C726.282 674.634 724.799 681.473 728.41 684.701C732.122 688.003 737.729 684.76 737.244 679.58C736.965 676.63 734.603 674.326 731.858 674.326Z" fill="#B8AFA3" />
        <path d="M713.94 674.326C708.333 674.634 706.837 681.473 710.476 684.701C714.204 688.003 719.854 684.76 719.355 679.58C719.076 676.63 716.698 674.326 713.94 674.326Z" fill="#B8AFA3" />
        <path d="M695.977 674.326C690.4 674.634 688.903 681.473 692.513 684.701C696.241 688.018 701.876 684.76 701.392 679.58C701.113 676.63 698.736 674.326 695.977 674.326Z" fill="#B8AFA3" />
        <path d="M677.896 674.326C672.349 674.634 670.867 681.473 674.448 684.701C678.146 688.018 683.752 684.76 683.268 679.58C682.989 676.63 680.641 674.326 677.896 674.326Z" fill="#B8AFA3" />
        <path d="M660.154 674.326C654.651 674.634 653.168 681.473 656.734 684.701C660.403 688.018 665.965 684.76 665.496 679.58C665.232 676.63 662.884 674.326 660.169 674.326" fill="#B8AFA3" />
        <path d="M642.528 674.546C637.245 674.839 635.822 681.443 639.241 684.54C642.763 687.739 648.09 684.584 647.636 679.594C647.371 676.762 645.126 674.546 642.528 674.546Z" fill="#B8AFA3" />
        <path d="M230.484 674.326C226.243 674.663 225.539 682.72 228.577 685.332C231.16 687.548 234.373 684.217 234.124 679.58C233.963 676.63 232.363 674.326 230.47 674.326" fill="#B8AFA3" />
        <path d="M172.223 674.326C168.143 674.693 167.82 683.336 170.784 685.582C173.338 687.504 176.097 683.16 175.334 678.435C174.938 676.013 173.661 674.326 172.223 674.326Z" fill="#B8AFA3" />
        <path d="M161.421 674.546C157.577 674.898 157.268 683.234 160.071 685.391C162.463 687.24 165.061 683.043 164.327 678.508C163.96 676.175 162.757 674.561 161.421 674.561" fill="#B8AFA3" />
        <path d="M150.929 674.326C147.054 674.693 146.731 683.336 149.549 685.582C151.838 687.402 154.377 683.586 153.937 678.993C153.673 676.292 152.411 674.326 150.929 674.326Z" fill="#B8AFA3" />
        <path d="M140.729 674.326C136.972 674.693 136.664 683.351 139.394 685.582C141.61 687.402 144.09 683.586 143.664 678.993C143.415 676.278 142.182 674.326 140.729 674.326Z" fill="#B8AFA3" />
        <path d="M130.823 674.326C127.184 674.693 126.875 683.351 129.517 685.582C131.704 687.431 134.066 683.674 133.655 678.993C133.421 676.278 132.232 674.326 130.823 674.326Z" fill="#B8AFA3" />
        <path d="M121.225 674.326C117.689 674.693 117.395 683.351 119.949 685.582C122.032 687.402 124.351 683.586 123.955 678.993C123.72 676.292 122.575 674.326 121.225 674.326Z" fill="#B8AFA3" />
        <path d="M1338.68 655.952C1335.42 656.319 1335.56 664.933 1338.04 667.164C1339.86 668.793 1341.7 665.975 1341.54 661.763C1341.42 658.549 1340.14 655.952 1338.68 655.952Z" fill="#B8AFA3" />
        <path d="M1329.77 655.952C1326.39 656.319 1326.52 664.933 1329.09 667.164C1331.07 668.881 1333.05 665.579 1332.69 661.176C1332.44 658.241 1331.16 655.952 1329.77 655.952Z" fill="#B8AFA3" />
        <path d="M1320.54 655.952C1317.04 656.319 1317.16 664.933 1319.82 667.164C1321.87 668.881 1323.93 665.579 1323.56 661.176C1323.31 658.241 1321.99 655.952 1320.54 655.952Z" fill="#B8AFA3" />
        <path d="M1311 655.952C1307.4 656.319 1307.5 664.933 1310.23 667.164C1312.35 668.881 1314.48 665.579 1314.11 661.176C1313.86 658.241 1312.49 655.952 1311 655.952Z" fill="#B8AFA3" />
        <path d="M1301.16 655.952C1297.45 656.319 1297.54 664.933 1300.36 667.164C1302.66 668.984 1304.94 665.183 1304.29 660.604C1303.91 657.918 1302.6 655.966 1301.16 655.966" fill="#B8AFA3" />
        <path d="M1291.01 655.952C1287.18 656.319 1287.27 664.933 1290.16 667.164C1292.52 668.984 1294.87 665.183 1294.22 660.604C1293.84 657.918 1292.49 655.966 1291.01 655.966" fill="#B8AFA3" />
        <path d="M1280.58 655.952C1276.61 656.319 1276.69 664.933 1279.68 667.164C1282.12 668.969 1284.54 665.168 1283.88 660.604C1283.48 657.918 1282.1 655.966 1280.58 655.966" fill="#B8AFA3" />
        <path d="M1269.72 655.952C1265.99 656.289 1265.69 664.302 1268.5 666.914C1270.76 669.013 1273.35 666.18 1273.21 661.763C1273.11 658.549 1271.54 655.952 1269.72 655.952Z" fill="#B8AFA3" />
        <path d="M1258.71 655.952C1254.88 656.289 1254.57 664.302 1257.43 666.914C1259.74 669.013 1262.41 666.18 1262.27 661.763C1262.17 658.549 1260.57 655.952 1258.71 655.952Z" fill="#B8AFA3" />
        <path d="M1247.41 655.952C1243.48 656.289 1243.14 664.302 1246.09 666.914C1248.45 669.013 1251.19 666.18 1251.06 661.763C1250.96 658.549 1249.33 655.952 1247.41 655.952Z" fill="#B8AFA3" />
        <path d="M1235.83 655.952C1231.79 656.289 1231.44 664.302 1234.45 666.914C1237 669.13 1239.94 665.799 1239.51 661.176C1239.25 658.256 1237.62 655.952 1235.82 655.952" fill="#B8AFA3" />
        <path d="M1223.97 655.952C1219.86 656.289 1219.5 664.302 1222.56 666.914C1225.18 669.13 1228.17 665.799 1227.74 661.176C1227.46 658.197 1225.85 655.952 1223.97 655.952Z" fill="#B8AFA3" />
        <path d="M1211.86 655.952C1207.67 656.289 1207.27 664.302 1210.41 666.914C1213.08 669.13 1216.15 665.799 1215.71 661.176C1215.43 658.241 1213.74 655.952 1211.86 655.952Z" fill="#B8AFA3" />
        <path d="M1199.36 655.952C1195.05 656.289 1194.64 664.302 1197.85 666.914C1200.56 669.13 1203.72 665.799 1203.28 661.176C1203 658.256 1201.28 655.952 1199.36 655.952Z" fill="#B8AFA3" />
        <path d="M1186.73 655.952C1182.35 656.289 1181.93 664.302 1185.17 666.914C1187.94 669.13 1191.14 665.799 1190.72 661.176C1190.44 658.197 1188.72 655.952 1186.73 655.952Z" fill="#B8AFA3" />
        <path d="M1173.85 655.952C1169.39 656.289 1168.95 664.302 1172.27 666.914C1175.09 669.13 1178.36 665.814 1177.92 661.176C1177.64 658.256 1175.85 655.952 1173.85 655.952Z" fill="#B8AFA3" />
        <path d="M1160.74 655.952C1156.19 656.289 1155.73 664.302 1159.11 666.914C1161.98 669.13 1165.31 665.814 1164.87 661.176C1164.59 658.256 1162.78 655.952 1160.74 655.952Z" fill="#B8AFA3" />
        <path d="M1147.37 655.952C1142.98 656.275 1142.24 663.7 1145.34 666.621C1148.14 669.262 1151.71 666.503 1151.59 661.763C1151.52 658.549 1149.61 655.952 1147.35 655.952" fill="#B8AFA3" />
        <path d="M1133.78 655.952C1129.31 656.275 1128.55 663.7 1131.71 666.621C1134.55 669.262 1138.19 666.503 1138.08 661.763C1138 658.549 1136.07 655.952 1133.78 655.952Z" fill="#B8AFA3" />
        <path d="M1119.95 655.952C1115.42 656.275 1114.64 663.7 1117.84 666.621C1120.73 669.262 1124.43 666.503 1124.33 661.763C1124.25 658.549 1122.3 655.952 1119.97 655.952" fill="#B8AFA3" />
        <path d="M1105.75 655.952C1101.14 656.275 1100.33 663.7 1103.59 666.621C1106.52 669.262 1110.28 666.503 1110.18 661.763C1110.1 658.549 1108.12 655.952 1105.75 655.952Z" fill="#B8AFA3" />
        <path d="M1091.47 655.952C1086.79 656.275 1085.96 663.7 1089.25 666.621C1092.35 669.365 1096.4 666.048 1095.91 661.176C1095.62 658.256 1093.67 655.952 1091.47 655.952Z" fill="#B8AFA3" />
        <path d="M1076.98 655.952C1072.23 656.275 1071.39 663.7 1074.72 666.621C1077.86 669.365 1081.97 666.048 1081.49 661.176C1081.19 658.256 1079.21 655.952 1076.98 655.952Z" fill="#B8AFA3" />
        <path d="M1062.29 655.952C1057.45 656.275 1056.58 663.7 1059.97 666.621C1063.16 669.365 1067.34 666.048 1066.86 661.176C1066.56 658.256 1064.57 655.952 1062.29 655.952Z" fill="#B8AFA3" />
        <path d="M1047.41 655.952C1042.49 656.275 1041.61 663.7 1045.05 666.621C1048.35 669.424 1052.52 666.166 1052.03 661.176C1051.74 658.256 1049.71 655.952 1047.41 655.952Z" fill="#B8AFA3" />
        <path d="M1032.3 655.952C1027.35 656.275 1026.44 663.7 1029.92 666.621C1033.25 669.424 1037.48 666.166 1036.98 661.176C1036.68 658.197 1034.67 655.952 1032.3 655.952Z" fill="#B8AFA3" />
        <path d="M1016.84 655.952C1011.82 656.26 1010.9 663.7 1014.41 666.621C1017.71 669.365 1022.05 666.063 1021.57 661.176C1021.27 658.256 1019.2 655.952 1016.84 655.952Z" fill="#B8AFA3" />
        <path d="M1001.37 655.952C996.267 656.275 995.328 663.7 998.894 666.621C1002.31 669.424 1006.66 666.166 1006.16 661.176C1005.86 658.256 1003.77 655.952 1001.37 655.952Z" fill="#B8AFA3" />
        <path d="M985.686 655.952C980.549 656.275 979.595 663.7 983.176 666.621C986.61 669.424 991.013 666.166 990.514 661.176C990.22 658.197 988.137 655.952 985.686 655.952Z" fill="#B8AFA3" />
        <path d="M969.851 655.952C964.656 656.275 963.687 663.7 967.297 666.621C970.702 669.365 975.207 666.048 974.723 661.176C974.43 658.256 972.287 655.952 969.836 655.952" fill="#B8AFA3" />
        <path d="M953.84 655.952C948.821 656.26 947.573 663.069 950.875 666.283C954.133 669.453 958.874 666.753 958.8 661.763C958.756 658.549 956.526 655.952 953.84 655.952Z" fill="#B8AFA3" />
        <path d="M937.667 655.952C932.604 656.26 931.328 663.069 934.659 666.283C937.946 669.453 942.745 666.753 942.672 661.763C942.628 658.549 940.382 655.952 937.667 655.952Z" fill="#B8AFA3" />
        <path d="M871.173 655.952C865.919 656.26 864.569 663.069 868.003 666.283C871.393 669.453 876.382 666.753 876.338 661.763C876.309 658.549 873.99 655.952 871.173 655.952Z" fill="#B8AFA3" />
        <path d="M854.237 655.952C848.939 656.26 847.574 663.069 851.038 666.283C854.457 669.453 859.491 666.753 859.447 661.763C859.418 658.549 857.084 655.952 854.237 655.952Z" fill="#B8AFA3" />
        <path d="M837.155 656.187C831.989 656.48 830.654 663.04 834.029 666.122C837.346 669.16 842.233 666.562 842.203 661.778C842.174 658.696 839.929 656.187 837.17 656.187" fill="#B8AFA3" />
        <path d="M802.58 655.952C797.15 656.26 795.741 663.069 799.278 666.283C802.77 669.453 807.921 666.753 807.892 661.763C807.877 658.549 805.5 655.952 802.594 655.952" fill="#B8AFA3" />
        <path d="M784.94 655.952C779.48 656.245 778.042 663.069 781.594 666.283C785.101 669.468 790.296 666.753 790.281 661.763C790.281 658.564 787.875 655.952 784.954 655.952" fill="#B8AFA3" />
        <path d="M767.358 655.952C761.84 656.26 760.373 663.069 763.968 666.283C767.652 669.571 773.199 666.327 772.7 661.176C772.421 658.256 770.073 655.952 767.373 655.952" fill="#B8AFA3" />
        <path d="M749.645 655.952C744.112 656.26 742.645 663.069 746.24 666.283C749.924 669.571 755.501 666.327 755.002 661.176C754.723 658.197 752.419 655.952 749.645 655.952Z" fill="#B8AFA3" />
        <path d="M731.844 655.952C726.282 656.26 724.799 663.069 728.41 666.283C732.122 669.585 737.729 666.327 737.23 661.176C736.951 658.256 734.588 655.952 731.844 655.952Z" fill="#B8AFA3" />
        <path d="M713.954 655.952C708.363 656.26 706.866 663.069 710.491 666.283C714.218 669.585 719.854 666.327 719.369 661.176C719.091 658.256 716.713 655.952 713.954 655.952Z" fill="#B8AFA3" />
        <path d="M695.991 655.952C690.415 656.26 688.918 663.069 692.528 666.283C696.241 669.585 701.891 666.342 701.392 661.176C701.113 658.256 698.75 655.952 695.991 655.952Z" fill="#B8AFA3" />
        <path d="M677.94 655.952C672.393 656.26 670.896 663.069 674.477 666.283C678.161 669.585 683.767 666.342 683.297 661.176C683.033 658.256 680.67 655.952 677.94 655.952Z" fill="#B8AFA3" />
        <path d="M660.212 655.952C654.709 656.26 653.212 663.069 656.764 666.283C660.433 669.585 665.995 666.342 665.525 661.176C665.261 658.256 662.927 655.952 660.212 655.952Z" fill="#B8AFA3" />
        <path d="M230.939 655.952C226.698 656.289 225.847 664.302 228.855 666.914C231.556 669.262 234.96 665.417 234.462 660.589C234.183 657.904 232.7 655.952 230.939 655.952Z" fill="#B8AFA3" />
        <path d="M218.788 655.952C214.635 656.289 213.798 664.302 216.733 666.914C219.272 669.174 222.428 665.902 222.266 661.176C222.163 658.256 220.637 655.952 218.788 655.952Z" fill="#B8AFA3" />
        <path d="M206.886 655.952C202.821 656.289 201.999 664.302 204.861 666.914C207.297 669.13 210.423 665.799 210.276 661.176C210.174 658.256 208.691 655.952 206.886 655.952Z" fill="#B8AFA3" />
        <path d="M195.263 655.952C191.301 656.289 190.479 664.302 193.267 666.914C195.689 669.174 198.712 665.902 198.565 661.176C198.477 658.256 197.024 655.952 195.263 655.952Z" fill="#B8AFA3" />
        <path d="M183.787 655.952C179.59 656.319 179.106 664.933 182.114 667.164C184.697 669.086 187.603 664.757 186.898 660.046C186.531 657.639 185.255 655.966 183.787 655.966" fill="#B8AFA3" />
        <path d="M172.736 655.952C168.642 656.319 168.158 664.933 171.093 667.164C173.617 669.086 176.449 664.757 175.759 660.046C175.407 657.639 174.16 655.966 172.722 655.966" fill="#B8AFA3" />
        <path d="M161.95 655.952C157.973 656.319 157.488 664.933 160.336 667.164C162.786 669.086 165.56 664.757 164.9 660.046C164.562 657.639 163.344 655.966 161.95 655.966" fill="#B8AFA3" />
        <path d="M151.472 655.952C147.583 656.319 147.098 664.933 149.872 667.164C152.249 669.072 154.964 664.757 154.319 660.046C153.996 657.639 152.822 655.966 151.457 655.966" fill="#B8AFA3" />
        <path d="M141.272 655.952C137.515 656.319 137.016 664.933 139.716 667.164C141.903 668.984 144.457 665.168 144.119 660.604C143.914 657.918 142.725 655.966 141.287 655.966" fill="#B8AFA3" />
        <path d="M131.381 655.952C127.727 656.319 127.242 664.933 129.855 667.164C132.012 669.013 134.433 665.271 134.11 660.604C133.92 657.918 132.775 655.966 131.381 655.966" fill="#B8AFA3" />
        <path d="M121.798 655.952C118.261 656.319 117.777 664.933 120.301 667.164C122.341 668.969 124.747 665.168 124.439 660.604C124.263 657.918 123.148 655.966 121.798 655.966" fill="#B8AFA3" />
        <path d="M112.42 655.952C109.001 656.319 108.516 664.933 110.952 667.164C112.934 668.969 115.252 665.168 114.974 660.604C114.812 657.918 113.726 655.966 112.42 655.966" fill="#B8AFA3" />
        <path d="M103.453 656.187C100.034 656.568 99.9165 665.505 102.309 667.149C104.334 668.558 106.403 663.965 105.713 659.606C105.39 657.537 104.495 656.187 103.468 656.187" fill="#B8AFA3" />
        <path d="M1370.13 637.739C1367.15 638.121 1367.88 647.337 1370.13 649.039C1371.84 650.331 1373.21 646.633 1372.61 642.333C1372.24 639.662 1371.18 637.725 1370.13 637.725" fill="#B8AFA3" />
        <path d="M1337.71 637.739C1334.46 638.091 1334.79 646.633 1337.31 648.849C1339.16 650.463 1340.94 647.675 1340.7 643.521C1340.52 640.337 1339.17 637.739 1337.72 637.739" fill="#B8AFA3" />
        <path d="M1328.81 637.739C1325.45 638.091 1325.76 646.633 1328.37 648.849C1330.38 650.551 1332.31 647.278 1331.85 642.92C1331.54 639.97 1330.24 637.739 1328.83 637.739" fill="#B8AFA3" />
        <path d="M1319.6 637.739C1316.12 638.091 1316.41 646.633 1319.11 648.849C1321.2 650.551 1323.18 647.278 1322.72 642.92C1322.42 639.97 1321.07 637.739 1319.61 637.739" fill="#B8AFA3" />
        <path d="M1310.07 637.739C1306.48 638.091 1306.76 646.633 1309.53 648.849C1311.67 650.551 1313.74 647.278 1313.27 642.92C1312.96 639.97 1311.58 637.739 1310.06 637.739" fill="#B8AFA3" />
        <path d="M1300.26 637.739C1296.56 638.091 1296.81 646.633 1299.67 648.849C1301.87 650.551 1304.01 647.278 1303.54 642.92C1303.22 639.97 1301.81 637.739 1300.26 637.739Z" fill="#B8AFA3" />
        <path d="M1290.13 637.739C1286.31 638.091 1286.56 646.633 1289.5 648.849C1291.89 650.654 1294.16 646.882 1293.43 642.347C1292.99 639.676 1291.61 637.739 1290.13 637.739Z" fill="#B8AFA3" />
        <path d="M1279.69 637.739C1276.06 638.062 1275.92 646.016 1278.71 648.599C1280.94 650.683 1283.42 647.865 1283.2 643.507C1283.04 640.322 1281.47 637.725 1279.69 637.725" fill="#B8AFA3" />
        <path d="M1268.86 637.739C1265.14 638.062 1265 646.016 1267.85 648.599C1270.14 650.683 1272.68 647.88 1272.46 643.507C1272.3 640.322 1270.68 637.725 1268.86 637.725" fill="#B8AFA3" />
        <path d="M1257.86 637.739C1254.04 638.062 1253.87 646.016 1256.79 648.599C1259.13 650.683 1261.75 647.88 1261.53 643.507C1261.37 640.322 1259.72 637.725 1257.86 637.725" fill="#B8AFA3" />
        <path d="M1246.59 637.739C1242.67 638.062 1242.48 646.016 1245.46 648.599C1247.86 650.683 1250.55 647.88 1250.33 643.507C1250.17 640.322 1248.49 637.725 1246.57 637.725" fill="#B8AFA3" />
        <path d="M1235.02 637.739C1230.99 638.062 1230.78 646.016 1233.83 648.599C1236.43 650.786 1239.31 647.498 1238.79 642.92C1238.47 639.97 1236.84 637.739 1235.02 637.739Z" fill="#B8AFA3" />
        <path d="M1223.18 637.739C1219.08 638.062 1218.85 646.016 1221.96 648.599C1224.6 650.8 1227.54 647.498 1227.04 642.92C1226.72 639.97 1225.06 637.739 1223.18 637.739Z" fill="#B8AFA3" />
        <path d="M1211.1 637.739C1206.9 638.062 1206.65 646.016 1209.82 648.599C1212.52 650.8 1215.53 647.498 1215.02 642.92C1214.7 639.97 1213.01 637.739 1211.09 637.739" fill="#B8AFA3" />
        <path d="M1198.61 637.739C1194.31 638.062 1194.03 646.016 1197.28 648.599C1200.09 650.844 1203.13 647.601 1202.62 642.92C1202.3 639.97 1200.58 637.739 1198.63 637.739" fill="#B8AFA3" />
        <path d="M1185.99 637.739C1181.62 638.062 1181.32 646.016 1184.61 648.599C1187.47 650.844 1190.57 647.601 1190.06 642.92C1189.73 639.97 1187.99 637.739 1185.99 637.739Z" fill="#B8AFA3" />
        <path d="M1173.14 637.739C1168.69 638.062 1168.37 646.016 1171.71 648.599C1174.56 650.8 1177.79 647.498 1177.27 642.92C1176.95 639.97 1175.16 637.739 1173.14 637.739Z" fill="#B8AFA3" />
        <path d="M1160.05 637.739C1155.75 638.047 1155.14 645.415 1158.23 648.32C1161.03 650.947 1164.48 648.203 1164.29 643.521C1164.15 640.337 1162.25 637.739 1160.03 637.739" fill="#B8AFA3" />
        <path d="M1146.71 637.739C1142.32 638.047 1141.7 645.415 1144.84 648.32C1147.69 650.947 1151.21 648.203 1151.02 643.521C1150.89 640.337 1148.97 637.739 1146.71 637.739Z" fill="#B8AFA3" />
        <path d="M1133.13 637.739C1128.67 638.047 1128.02 645.415 1131.21 648.32C1134.1 650.947 1137.68 648.203 1137.5 643.521C1137.39 640.337 1135.42 637.739 1133.13 637.739Z" fill="#B8AFA3" />
        <path d="M1119.32 637.739C1114.79 638.047 1114.11 645.415 1117.35 648.32C1120.29 650.947 1123.93 648.203 1123.77 643.521C1123.65 640.337 1121.65 637.739 1119.34 637.739" fill="#B8AFA3" />
        <path d="M1105.13 637.739C1100.52 638.047 1099.83 645.415 1103.1 648.32C1106.07 650.947 1109.8 648.203 1109.62 643.521C1109.5 640.337 1107.49 637.739 1105.13 637.739Z" fill="#B8AFA3" />
        <path d="M1090.89 637.739C1086.21 638.047 1085.49 645.415 1088.83 648.32C1091.83 650.947 1095.62 648.203 1095.46 643.521C1095.36 640.337 1093.3 637.739 1090.91 637.739" fill="#B8AFA3" />
        <path d="M1076.42 637.739C1071.68 638.047 1070.94 645.415 1074.3 648.32C1077.45 651.035 1081.52 647.763 1080.99 642.92C1080.67 639.97 1078.7 637.739 1076.42 637.739Z" fill="#B8AFA3" />
        <path d="M1061.76 637.739C1056.94 638.047 1056.16 645.415 1059.58 648.32C1062.86 651.094 1066.93 647.865 1066.39 642.92C1066.06 639.97 1064.07 637.739 1061.76 637.739Z" fill="#B8AFA3" />
        <path d="M1046.9 637.739C1042 638.047 1041.19 645.415 1044.67 648.32C1047.98 651.094 1052.12 647.865 1051.58 642.92C1051.26 639.97 1049.25 637.739 1046.9 637.739Z" fill="#B8AFA3" />
        <path d="M1031.81 637.739C1026.87 638.047 1026.04 645.415 1029.54 648.32C1032.88 651.094 1037.06 647.88 1036.54 642.92C1036.21 639.97 1034.19 637.739 1031.81 637.739Z" fill="#B8AFA3" />
        <path d="M1016.39 637.739C1011.38 638.047 1010.53 645.415 1014.07 648.32C1017.38 651.05 1021.7 647.763 1021.17 642.92C1020.85 639.97 1018.79 637.739 1016.39 637.739Z" fill="#B8AFA3" />
        <path d="M1000.93 637.739C995.841 638.047 994.975 645.415 998.556 648.32C1001.99 651.094 1006.3 647.865 1005.76 642.92C1005.44 639.97 1003.37 637.739 1000.93 637.739Z" fill="#B8AFA3" />
        <path d="M985.275 637.739C980.153 638.047 979.258 645.415 982.868 648.32C986.332 651.094 990.675 647.88 990.147 642.92C989.824 639.97 987.74 637.739 985.275 637.739Z" fill="#B8AFA3" />
        <path d="M969.455 637.739C964.494 638.033 963.335 644.798 966.622 647.983C969.866 651.123 974.532 648.452 974.415 643.521C974.342 640.337 972.111 637.739 969.455 637.739Z" fill="#B8AFA3" />
        <path d="M953.473 637.739C948.469 638.033 947.28 644.798 950.597 647.983C953.869 651.123 958.58 648.452 958.477 643.521C958.404 640.337 956.159 637.739 953.473 637.739Z" fill="#B8AFA3" />
        <path d="M937.315 637.739C932.252 638.033 931.034 644.798 934.38 647.983C937.682 651.123 942.452 648.452 942.349 643.521C942.29 640.337 940.016 637.739 937.301 637.739" fill="#B8AFA3" />
        <path d="M767.285 637.739C761.767 638.033 760.314 644.798 763.91 647.983C767.578 651.241 773.111 648.027 772.612 642.92C772.319 639.97 770.029 637.739 767.285 637.739Z" fill="#B8AFA3" />
        <path d="M749.601 637.739C744.068 638.033 742.615 644.798 746.211 647.983C749.895 651.241 755.457 648.027 754.958 642.92C754.679 639.97 752.375 637.739 749.601 637.739Z" fill="#B8AFA3" />
        <path d="M731.829 637.739C726.267 638.033 724.785 644.798 728.395 647.983C732.093 651.241 737.699 648.027 737.2 642.92C736.921 639.97 734.603 637.739 731.814 637.739" fill="#B8AFA3" />
        <path d="M713.954 637.739C708.363 638.033 706.866 644.798 710.491 647.983C714.204 651.241 719.839 648.027 719.355 642.92C719.076 639.97 716.757 637.739 713.954 637.739Z" fill="#B8AFA3" />
        <path d="M696.035 637.739C690.459 638.033 688.962 644.798 692.557 647.983C696.27 651.255 701.891 648.041 701.421 642.92C701.142 639.97 698.824 637.739 696.035 637.739Z" fill="#B8AFA3" />
        <path d="M677.999 637.739C672.467 638.033 670.955 644.798 674.536 647.983C678.219 651.255 683.811 648.041 683.341 642.92C683.077 639.97 680.773 637.739 677.999 637.739Z" fill="#B8AFA3" />
        <path d="M244.103 637.739C239.774 638.062 238.791 646.016 241.814 648.599C244.529 650.918 248.051 647.117 247.625 642.333C247.391 639.662 245.908 637.725 244.103 637.725" fill="#B8AFA3" />
        <path d="M231.703 637.739C227.461 638.062 226.478 646.016 229.442 648.599C232.099 650.918 235.562 647.117 235.151 642.333C234.916 639.662 233.478 637.725 231.717 637.725" fill="#B8AFA3" />
        <path d="M219.566 637.739C215.413 638.062 214.444 646.016 217.321 648.599C219.903 650.918 223.308 647.117 222.912 642.333C222.692 639.662 221.283 637.725 219.566 637.725" fill="#B8AFA3" />
        <path d="M207.693 637.739C203.628 638.062 202.66 646.016 205.477 648.599C207.914 650.844 211.054 647.601 210.981 642.92C210.937 639.97 209.513 637.739 207.693 637.739Z" fill="#B8AFA3" />
        <path d="M196.085 637.739C192.108 638.062 191.154 646.016 193.898 648.599C196.276 650.844 199.343 647.601 199.284 642.92C199.24 639.97 197.875 637.739 196.085 637.739Z" fill="#B8AFA3" />
        <path d="M184.638 637.739C180.441 638.091 179.795 646.633 182.774 648.849C185.328 650.742 188.307 646.457 187.676 641.79C187.353 639.412 186.106 637.739 184.638 637.739Z" fill="#B8AFA3" />
        <path d="M173.588 637.739C169.493 638.091 168.847 646.633 171.738 648.849C174.219 650.742 177.139 646.457 176.537 641.79C176.229 639.412 175.026 637.739 173.588 637.739Z" fill="#B8AFA3" />
        <path d="M162.83 637.739C158.853 638.091 158.193 646.633 161.011 648.849C163.417 650.742 166.264 646.457 165.692 641.79C165.399 639.412 164.225 637.739 162.83 637.739Z" fill="#B8AFA3" />
        <path d="M152.352 637.739C148.463 638.091 147.817 646.633 150.547 648.849C152.88 650.742 155.669 646.457 155.126 641.79C154.847 639.412 153.702 637.739 152.352 637.739Z" fill="#B8AFA3" />
        <path d="M142.167 637.739C138.396 638.091 137.75 646.633 140.392 648.849C142.666 650.756 145.381 646.457 144.868 641.79C144.603 639.368 143.517 637.739 142.167 637.739Z" fill="#B8AFA3" />
        <path d="M132.291 637.739C128.636 638.091 127.976 646.633 130.544 648.849C132.658 650.668 135.152 646.97 134.932 642.347C134.8 639.632 133.714 637.739 132.291 637.739Z" fill="#B8AFA3" />
        <path d="M122.737 637.739C119.2 638.091 118.54 646.633 121.005 648.849C123.001 650.639 125.481 646.867 125.276 642.347C125.158 639.676 124.087 637.739 122.737 637.739Z" fill="#B8AFA3" />
        <path d="M113.359 637.739C109.94 638.091 109.279 646.633 111.657 648.849C113.594 650.639 116.001 646.867 115.81 642.347C115.693 639.676 114.665 637.739 113.359 637.739Z" fill="#B8AFA3" />
        <path d="M104.422 637.739C100.856 638.121 100.548 647.337 102.984 649.039C105.17 650.566 107.46 645.297 106.594 640.748C106.242 638.884 105.405 637.739 104.422 637.739Z" fill="#B8AFA3" />
        <path d="M1368.7 619.615C1365.74 619.997 1366.68 629.154 1368.95 630.842C1370.7 632.133 1371.97 628.465 1371.27 624.194C1370.83 621.538 1369.76 619.615 1368.69 619.615" fill="#B8AFA3" />
        <path d="M1336.36 619.615C1333.13 619.967 1333.63 628.45 1336.2 630.651C1338.07 632.266 1339.79 629.492 1339.45 625.353C1339.2 622.183 1337.81 619.615 1336.36 619.615Z" fill="#B8AFA3" />
        <path d="M1327.48 619.615C1324.13 619.967 1324.62 628.45 1327.26 630.651C1329.2 632.266 1330.99 629.492 1330.66 625.353C1330.41 622.183 1328.99 619.615 1327.48 619.615Z" fill="#B8AFA3" />
        <path d="M1318.29 619.615C1314.83 619.967 1315.3 628.45 1318.03 630.651C1320.14 632.339 1322.06 629.096 1321.51 624.766C1321.14 621.875 1319.73 619.615 1318.29 619.615Z" fill="#B8AFA3" />
        <path d="M1308.78 619.615C1305.22 619.967 1305.66 628.45 1308.47 630.651C1310.65 632.339 1312.64 629.096 1312.1 624.766C1311.73 621.875 1310.28 619.615 1308.8 619.615" fill="#B8AFA3" />
        <path d="M1298.98 619.615C1295.29 619.967 1295.72 628.45 1298.61 630.651C1300.84 632.339 1302.91 629.096 1302.37 624.766C1302 621.875 1300.5 619.615 1298.98 619.615Z" fill="#B8AFA3" />
        <path d="M1288.88 619.615C1285.08 619.967 1285.49 628.45 1288.47 630.651C1290.77 632.354 1292.9 629.096 1292.36 624.766C1291.99 621.875 1290.47 619.615 1288.88 619.615Z" fill="#B8AFA3" />
        <path d="M1278.48 619.615C1274.85 619.938 1274.88 627.834 1277.71 630.402C1279.99 632.471 1282.4 629.683 1282.09 625.339C1281.87 622.169 1280.24 619.601 1278.48 619.601" fill="#B8AFA3" />
        <path d="M1267.66 619.615C1263.96 619.938 1263.96 627.834 1266.84 630.402C1269.16 632.471 1271.65 629.683 1271.34 625.339C1271.12 622.169 1269.47 619.601 1267.65 619.601" fill="#B8AFA3" />
        <path d="M1256.68 619.615C1252.88 619.938 1252.85 627.834 1255.82 630.402C1258.2 632.471 1260.75 629.683 1260.46 625.339C1260.24 622.169 1258.55 619.601 1256.68 619.601" fill="#B8AFA3" />
        <path d="M1245.43 619.615C1241.52 619.938 1241.48 627.834 1244.49 630.402C1246.92 632.471 1249.55 629.683 1249.27 625.339C1249.07 622.169 1247.34 619.601 1245.43 619.601" fill="#B8AFA3" />
        <path d="M1233.91 619.615C1229.9 619.938 1229.81 627.834 1232.91 630.402C1235.4 632.471 1238.1 629.683 1237.83 625.339C1237.62 622.169 1235.86 619.601 1233.91 619.601" fill="#B8AFA3" />
        <path d="M1222.08 619.615C1218 619.938 1217.9 627.834 1221.04 630.402C1223.71 632.588 1226.58 629.316 1226.01 624.766C1225.63 621.831 1223.94 619.615 1222.08 619.615Z" fill="#B8AFA3" />
        <path d="M1210.03 619.615C1205.86 619.938 1205.73 627.834 1208.94 630.402C1211.67 632.588 1214.62 629.316 1214.04 624.766C1213.67 621.875 1211.91 619.615 1210.03 619.615Z" fill="#B8AFA3" />
        <path d="M1197.57 619.615C1193.29 619.938 1193.14 627.834 1196.41 630.402C1199.2 632.588 1202.22 629.316 1201.65 624.766C1201.28 621.875 1199.49 619.615 1197.57 619.615Z" fill="#B8AFA3" />
        <path d="M1184.98 619.615C1180.64 619.938 1180.46 627.834 1183.78 630.402C1186.61 632.588 1189.7 629.316 1189.12 624.766C1188.75 621.831 1186.96 619.615 1184.98 619.615Z" fill="#B8AFA3" />
        <path d="M1172.15 619.615C1167.94 619.923 1167.49 627.247 1170.55 630.123C1173.28 632.676 1176.67 629.903 1176.41 625.353C1176.23 622.183 1174.31 619.615 1172.15 619.615Z" fill="#B8AFA3" />
        <path d="M1159.08 619.615C1154.79 619.923 1154.29 627.247 1157.42 630.123C1160.25 632.735 1163.66 630.005 1163.39 625.353C1163.22 622.183 1161.28 619.615 1159.06 619.615" fill="#B8AFA3" />
        <path d="M1145.77 619.615C1141.39 619.923 1140.88 627.247 1144.06 630.123C1146.94 632.735 1150.42 630.005 1150.15 625.353C1149.98 622.183 1148.01 619.615 1145.77 619.615Z" fill="#B8AFA3" />
        <path d="M1132.22 619.615C1127.77 619.923 1127.23 627.247 1130.46 630.123C1133.32 632.676 1136.92 629.917 1136.67 625.353C1136.51 622.183 1134.51 619.615 1132.22 619.615Z" fill="#B8AFA3" />
        <path d="M1118.45 619.615C1113.93 619.923 1113.36 627.247 1116.64 630.123C1119.6 632.735 1123.21 630.005 1122.96 625.353C1122.8 622.183 1120.77 619.615 1118.45 619.615Z" fill="#B8AFA3" />
        <path d="M1104.29 619.615C1099.7 619.923 1099.1 627.247 1102.41 630.123C1105.41 632.735 1109.09 630.005 1108.86 625.353C1108.7 622.183 1106.66 619.615 1104.29 619.615Z" fill="#B8AFA3" />
        <path d="M1090.09 619.615C1085.42 619.923 1084.8 627.247 1088.15 630.123C1091.13 632.676 1094.92 629.917 1094.71 625.353C1094.56 622.183 1092.49 619.615 1090.09 619.615Z" fill="#B8AFA3" />
        <path d="M1075.65 619.615C1070.92 619.923 1070.26 627.247 1073.65 630.123C1076.73 632.735 1080.52 630.005 1080.31 625.353C1080.17 622.183 1078.07 619.615 1075.65 619.615Z" fill="#B8AFA3" />
        <path d="M1061.02 619.615C1056.2 619.923 1055.51 627.247 1058.96 630.123C1062.19 632.823 1066.28 629.565 1065.7 624.766C1065.34 621.875 1063.29 619.615 1061.02 619.615Z" fill="#B8AFA3" />
        <path d="M1046.18 619.615C1041.29 619.923 1040.57 627.247 1044.06 630.123C1047.34 632.823 1051.49 629.565 1050.9 624.766C1050.55 621.875 1048.48 619.615 1046.18 619.615Z" fill="#B8AFA3" />
        <path d="M1031.12 619.615C1026.19 619.923 1025.46 627.247 1028.96 630.123C1032.27 632.823 1036.46 629.565 1035.89 624.766C1035.54 621.831 1033.48 619.615 1031.12 619.615Z" fill="#B8AFA3" />
        <path d="M1015.73 619.615C1010.74 619.923 1009.96 627.247 1013.51 630.123C1016.86 632.823 1021.13 629.58 1020.54 624.766C1020.19 621.875 1018.07 619.615 1015.71 619.615" fill="#B8AFA3" />
        <path d="M1000.32 619.615C995.474 619.909 994.403 626.63 997.661 629.785C1000.87 632.897 1005.39 630.255 1005.22 625.353C1005.1 622.183 1002.9 619.615 1000.3 619.615" fill="#B8AFA3" />
        <path d="M984.688 619.615C979.801 619.909 978.73 626.63 982.002 629.785C985.245 632.911 989.81 630.255 989.648 625.353C989.545 622.183 987.315 619.615 984.688 619.615Z" fill="#B8AFA3" />
        <path d="M968.912 619.615C963.966 619.909 962.865 626.63 966.167 629.785C969.44 632.911 974.063 630.255 973.901 625.353C973.798 622.183 971.553 619.615 968.912 619.615Z" fill="#B8AFA3" />
        <path d="M952.959 619.615C947.97 619.909 946.825 626.63 950.171 629.785C953.473 632.911 958.154 630.255 958.008 625.353C957.905 622.183 955.66 619.615 952.974 619.615" fill="#B8AFA3" />
        <path d="M936.846 619.615C931.797 619.909 930.638 626.63 933.999 629.785C937.315 632.911 942.055 630.255 941.923 625.353C941.835 622.183 939.561 619.615 936.846 619.615Z" fill="#B8AFA3" />
        <path d="M767.182 619.615C761.679 619.909 760.241 626.63 763.836 629.785C767.505 633.029 773.038 629.829 772.524 624.766C772.231 621.875 769.897 619.615 767.197 619.615" fill="#B8AFA3" />
        <path d="M749.528 619.615C744.01 619.909 742.571 626.63 746.152 629.785C749.836 633.029 755.383 629.829 754.884 624.766C754.591 621.831 752.301 619.615 749.528 619.615Z" fill="#B8AFA3" />
        <path d="M731.8 619.615C726.252 619.909 724.785 626.63 728.38 629.785C732.078 633.029 737.67 629.844 737.171 624.766C736.892 621.875 734.529 619.615 731.8 619.615Z" fill="#B8AFA3" />
        <path d="M713.969 619.615C708.392 619.909 706.895 626.63 710.505 629.785C714.218 633.029 719.839 629.844 719.355 624.766C719.076 621.875 716.713 619.615 713.969 619.615Z" fill="#B8AFA3" />
        <path d="M257.781 619.615C253.364 619.938 252.263 627.834 255.301 630.402C258.03 632.706 261.67 628.934 261.303 624.194C261.098 621.538 259.615 619.615 257.781 619.615Z" fill="#B8AFA3" />
        <path d="M245.145 619.615C240.816 619.938 239.715 627.834 242.68 630.402C245.351 632.706 248.932 628.934 248.579 624.194C248.374 621.538 246.936 619.615 245.145 619.615Z" fill="#B8AFA3" />
        <path d="M232.774 619.615C228.533 619.938 227.432 627.834 230.338 630.402C232.95 632.706 236.472 628.934 236.134 624.194C235.944 621.538 234.535 619.615 232.788 619.615" fill="#B8AFA3" />
        <path d="M220.667 619.615C216.513 619.938 215.413 627.834 218.245 630.402C220.799 632.706 224.247 628.934 223.939 624.194C223.763 621.538 222.384 619.615 220.667 619.615Z" fill="#B8AFA3" />
        <path d="M208.809 619.615C204.744 619.938 203.643 627.834 206.417 630.402C208.897 632.706 212.287 628.934 211.993 624.194C211.832 621.538 210.496 619.615 208.809 619.615Z" fill="#B8AFA3" />
        <path d="M197.23 619.615C193.267 619.938 192.167 627.834 194.852 630.402C197.142 632.574 200.312 629.316 200.341 624.766C200.341 621.831 199.02 619.615 197.23 619.615Z" fill="#B8AFA3" />
        <path d="M185.798 619.615C181.615 619.967 180.808 628.45 183.728 630.651C186.238 632.544 189.29 628.288 188.747 623.651C188.468 621.274 187.25 619.615 185.798 619.615Z" fill="#B8AFA3" />
        <path d="M174.776 619.615C170.696 619.967 169.889 628.45 172.722 630.651C175.158 632.544 178.152 628.288 177.638 623.651C177.374 621.274 176.2 619.615 174.762 619.615" fill="#B8AFA3" />
        <path d="M164.048 619.615C160.071 619.967 159.264 628.45 162.009 630.651C164.386 632.544 167.306 628.288 166.822 623.651C166.573 621.274 165.428 619.615 164.048 619.615Z" fill="#B8AFA3" />
        <path d="M153.599 619.615C149.725 619.967 148.903 628.45 151.574 630.651C153.878 632.53 156.74 628.274 156.285 623.651C156.05 621.274 154.95 619.615 153.599 619.615Z" fill="#B8AFA3" />
        <path d="M143.429 619.615C139.672 619.967 138.851 628.465 141.433 630.651C143.664 632.544 146.467 628.288 146.042 623.651C145.821 621.274 144.75 619.615 143.429 619.615Z" fill="#B8AFA3" />
        <path d="M133.582 619.615C129.928 619.967 129.106 628.465 131.616 630.651C133.758 632.53 136.488 628.274 136.092 623.651C135.886 621.244 134.888 619.615 133.582 619.615Z" fill="#B8AFA3" />
        <path d="M124.028 619.615C120.492 619.967 119.655 628.465 122.077 630.651C124.043 632.427 126.582 628.685 126.464 624.194C126.391 621.538 125.364 619.615 124.028 619.615Z" fill="#B8AFA3" />
        <path d="M114.695 619.615C111.011 619.997 110.527 629.154 113.007 630.842C115.252 632.368 117.733 627.144 116.896 622.609C116.559 620.76 115.707 619.601 114.695 619.601" fill="#B8AFA3" />
        <path d="M105.772 619.615C102.221 619.997 101.707 629.154 104.099 630.842C106.256 632.354 108.648 627.129 107.871 622.609C107.548 620.76 106.741 619.601 105.772 619.601" fill="#B8AFA3" />
        <path d="M97.1722 619.615C93.7381 619.997 93.2245 629.154 95.5139 630.842C97.5831 632.368 99.9165 627.129 99.1827 622.609C98.8745 620.76 98.1114 619.601 97.1722 619.601" fill="#B8AFA3" />
        <path d="M1380.97 601.843C1378.31 602.225 1379.46 611.324 1381.56 612.997C1382.98 614.127 1384.02 611.382 1383.61 607.537C1383.27 604.397 1382.09 601.843 1380.97 601.843Z" fill="#B8AFA3" />
        <path d="M1374.12 601.843C1371.31 602.225 1372.44 611.324 1374.66 612.997C1376.26 614.215 1377.37 611.059 1376.79 606.965C1376.38 604.103 1375.2 601.843 1374.12 601.858" fill="#B8AFA3" />
        <path d="M1359.37 601.843C1356.3 602.225 1357.43 611.324 1359.82 612.997C1361.66 614.288 1362.95 610.649 1362.14 606.393C1361.64 603.751 1360.47 601.843 1359.37 601.843Z" fill="#B8AFA3" />
        <path d="M1325.81 601.843C1322.47 602.195 1323.13 610.619 1325.81 612.806C1327.77 614.405 1329.5 611.646 1329.09 607.552C1328.78 604.411 1327.3 601.858 1325.79 601.858" fill="#B8AFA3" />
        <path d="M1316.63 601.843C1313.18 602.195 1313.82 610.619 1316.59 612.806C1318.61 614.405 1320.42 611.646 1320.01 607.552C1319.7 604.411 1318.19 601.858 1316.62 601.858" fill="#B8AFA3" />
        <path d="M1307.17 601.843C1303.62 602.195 1304.22 610.619 1307.08 612.806C1309.28 614.494 1311.2 611.265 1310.57 606.965C1310.15 604.103 1308.65 601.843 1307.17 601.858" fill="#B8AFA3" />
        <path d="M1297.38 601.843C1293.71 602.195 1294.3 610.619 1297.23 612.806C1299.49 614.494 1301.5 611.265 1300.86 606.965C1300.43 604.103 1298.9 601.843 1297.38 601.858" fill="#B8AFA3" />
        <path d="M1287.31 601.843C1283.82 602.166 1284.02 610.003 1286.81 612.556C1288.94 614.508 1291.13 612.189 1290.98 608.124C1290.86 604.778 1289.15 601.843 1287.31 601.843Z" fill="#B8AFA3" />
        <path d="M1276.94 601.843C1273.33 602.166 1273.5 610.003 1276.38 612.556C1278.56 614.508 1280.82 612.175 1280.69 608.124C1280.58 604.778 1278.83 601.843 1276.95 601.843" fill="#B8AFA3" />
        <path d="M1266.15 601.843C1262.47 602.166 1262.61 610.003 1265.53 612.556C1267.9 614.611 1270.32 611.837 1269.94 607.537C1269.66 604.397 1267.95 601.843 1266.15 601.843Z" fill="#B8AFA3" />
        <path d="M1255.2 601.843C1251.42 602.166 1251.53 610.003 1254.53 612.556C1256.93 614.611 1259.44 611.837 1259.06 607.537C1258.78 604.397 1257.05 601.843 1255.2 601.843Z" fill="#B8AFA3" />
        <path d="M1243.97 601.843C1240.09 602.166 1240.17 610.003 1243.24 612.556C1245.71 614.611 1248.29 611.852 1247.92 607.537C1247.66 604.397 1245.88 601.843 1243.99 601.843" fill="#B8AFA3" />
        <path d="M1232.48 601.843C1228.49 602.166 1228.55 610.003 1231.68 612.556C1234.2 614.611 1236.84 611.837 1236.49 607.537C1236.23 604.397 1234.44 601.843 1232.48 601.843Z" fill="#B8AFA3" />
        <path d="M1220.7 601.843C1216.63 602.166 1216.66 610.003 1219.85 612.556C1222.42 614.611 1225.13 611.837 1224.78 607.537C1224.53 604.397 1222.7 601.843 1220.7 601.843Z" fill="#B8AFA3" />
        <path d="M1208.67 601.843C1204.51 602.166 1204.51 610.003 1207.76 612.556C1210.51 614.728 1213.41 611.485 1212.75 606.95C1212.33 604.089 1210.53 601.843 1208.67 601.843Z" fill="#B8AFA3" />
        <path d="M1196.25 601.843C1192.2 602.151 1191.91 609.416 1194.93 612.278C1197.47 614.67 1200.52 612.38 1200.48 608.124C1200.45 604.778 1198.47 601.843 1196.24 601.843" fill="#B8AFA3" />
        <path d="M1183.69 601.843C1179.58 602.151 1179.26 609.416 1182.32 612.278C1184.89 614.684 1188.02 612.395 1187.99 608.124C1187.96 604.778 1185.95 601.843 1183.69 601.843Z" fill="#B8AFA3" />
        <path d="M1170.91 601.843C1166.71 602.151 1166.37 609.416 1169.48 612.278C1172.24 614.816 1175.59 612.072 1175.25 607.537C1175.01 604.397 1173.08 601.843 1170.91 601.843Z" fill="#B8AFA3" />
        <path d="M1157.86 601.843C1153.59 602.151 1153.21 609.416 1156.36 612.278C1159.16 614.802 1162.58 612.072 1162.26 607.537C1162.04 604.397 1160.06 601.843 1157.86 601.843Z" fill="#B8AFA3" />
        <path d="M1144.59 601.843C1140.25 602.151 1139.84 609.416 1143.04 612.278C1145.88 614.816 1149.36 612.072 1149.05 607.537C1148.83 604.397 1146.84 601.843 1144.59 601.843Z" fill="#B8AFA3" />
        <path d="M1131.09 601.843C1126.66 602.151 1126.22 609.416 1129.48 612.278C1132.35 614.816 1135.92 612.072 1135.61 607.537C1135.41 604.397 1133.38 601.843 1131.09 601.843Z" fill="#B8AFA3" />
        <path d="M1117.35 601.843C1112.85 602.151 1112.38 609.416 1115.68 612.278C1118.68 614.86 1122.23 612.16 1121.93 607.537C1121.73 604.397 1119.67 601.843 1117.35 601.843Z" fill="#B8AFA3" />
        <path d="M1103.24 601.843C1098.66 602.151 1098.16 609.416 1101.49 612.278C1104.45 614.816 1108.14 612.072 1107.86 607.537C1107.67 604.397 1105.58 601.843 1103.24 601.843Z" fill="#B8AFA3" />
        <path d="M1089.06 601.843C1084.41 602.151 1083.88 609.416 1087.25 612.278C1090.25 614.816 1094.01 612.072 1093.73 607.537C1093.54 604.397 1091.44 601.843 1089.05 601.843" fill="#B8AFA3" />
        <path d="M1074.66 601.843C1069.95 602.151 1069.38 609.416 1072.8 612.278C1075.84 614.816 1079.65 612.072 1079.39 607.537C1079.21 604.397 1077.08 601.843 1074.66 601.843Z" fill="#B8AFA3" />
        <path d="M1060.08 601.843C1055.28 602.151 1054.66 609.416 1058.14 612.278C1061.4 614.948 1065.43 611.72 1064.8 606.965C1064.42 604.103 1062.34 601.858 1060.08 601.858" fill="#B8AFA3" />
        <path d="M1045.28 601.843C1040.41 602.151 1039.78 609.416 1043.29 612.278C1046.57 614.948 1050.68 611.72 1050.05 606.965C1049.67 604.103 1047.57 601.858 1045.28 601.858" fill="#B8AFA3" />
        <path d="M1030.27 601.843C1025.35 602.151 1024.69 609.416 1028.23 612.278C1031.55 614.963 1035.71 611.735 1035.08 606.965C1034.7 604.045 1032.63 601.858 1030.27 601.858" fill="#B8AFA3" />
        <path d="M1014.92 601.843C1009.94 602.151 1009.24 609.416 1012.82 612.278C1016.18 614.963 1020.41 611.735 1019.79 606.965C1019.41 604.103 1017.28 601.858 1014.93 601.858" fill="#B8AFA3" />
        <path d="M999.539 601.843C994.711 602.137 993.713 608.799 996.986 611.94C1000.23 615.037 1004.71 612.41 1004.49 607.537C1004.34 604.397 1002.12 601.843 999.525 601.843" fill="#B8AFA3" />
        <path d="M983.969 601.843C979.096 602.137 978.084 608.799 981.371 611.94C984.629 615.037 989.164 612.41 988.958 607.537C988.826 604.397 986.581 601.843 983.969 601.843Z" fill="#B8AFA3" />
        <path d="M968.222 601.843C963.291 602.137 962.249 608.799 965.566 611.94C968.853 615.037 973.446 612.41 973.241 607.537C973.109 604.397 970.849 601.843 968.207 601.843" fill="#B8AFA3" />
        <path d="M952.328 601.843C947.353 602.137 946.267 608.799 949.613 611.94C952.93 615.037 957.582 612.41 957.391 607.537C957.274 604.397 954.999 601.843 952.328 601.843Z" fill="#B8AFA3" />
        <path d="M936.244 601.843C931.21 602.137 930.11 608.799 933.47 611.94C936.802 615.037 941.512 612.41 941.336 607.537C941.219 604.397 938.93 601.843 936.229 601.843" fill="#B8AFA3" />
        <path d="M920.013 601.843C914.935 602.137 913.791 608.799 917.195 611.94C920.556 615.037 925.311 612.41 925.149 607.537C925.047 604.397 922.743 601.843 920.013 601.843Z" fill="#B8AFA3" />
        <path d="M903.43 601.843C898.293 602.137 897.119 608.799 900.553 611.94C903.943 615.037 908.757 612.41 908.61 607.537C908.507 604.397 906.203 601.843 903.444 601.843" fill="#B8AFA3" />
        <path d="M886.89 601.843C881.71 602.137 880.506 608.799 883.955 611.94C887.36 615.037 892.217 612.41 892.085 607.537C891.997 604.397 889.664 601.843 886.89 601.843Z" fill="#B8AFA3" />
        <path d="M870.19 601.843C864.965 602.137 863.732 608.799 867.196 611.94C870.615 615.037 875.531 612.41 875.414 607.537C875.341 604.397 872.993 601.843 870.19 601.843Z" fill="#B8AFA3" />
        <path d="M853.357 601.843C848.088 602.137 846.826 608.799 850.304 611.94C853.753 615.037 858.713 612.41 858.596 607.537C858.523 604.397 856.175 601.843 853.342 601.843" fill="#B8AFA3" />
        <path d="M696.153 601.843C690.606 602.137 689.094 608.799 692.675 611.94C696.358 615.169 701.979 612.013 701.509 606.95C701.245 604.089 698.882 601.843 696.153 601.843Z" fill="#B8AFA3" />
        <path d="M678.219 601.843C672.716 602.137 671.19 608.799 674.741 611.94C678.395 615.169 683.987 611.999 683.532 606.95C683.268 604.089 680.949 601.843 678.219 601.843Z" fill="#B8AFA3" />
        <path d="M660.594 601.843C655.12 602.137 653.594 608.799 657.101 611.94C660.726 615.169 666.273 611.999 665.848 606.95C665.598 604.089 663.294 601.843 660.594 601.843Z" fill="#B8AFA3" />
        <path d="M259.058 601.843C254.655 602.166 253.422 610.003 256.416 612.556C259.102 614.846 262.8 611.104 262.492 606.393C262.33 603.751 260.877 601.843 259.058 601.843Z" fill="#B8AFA3" />
        <path d="M246.466 601.843C242.151 602.166 240.919 610.003 243.839 612.556C246.466 614.846 250.106 611.104 249.827 606.393C249.665 603.751 248.256 601.843 246.466 601.843Z" fill="#B8AFA3" />
        <path d="M234.124 601.843C229.897 602.166 228.65 610.003 231.512 612.556C234.08 614.846 237.646 611.104 237.397 606.393C237.25 603.751 235.87 601.843 234.124 601.843Z" fill="#B8AFA3" />
        <path d="M222.046 601.843C217.908 602.166 216.66 610.003 219.448 612.556C221.958 614.846 225.465 611.104 225.231 606.393C225.099 603.751 223.763 601.843 222.046 601.843Z" fill="#B8AFA3" />
        <path d="M210.232 601.843C206.182 602.166 204.934 610.003 207.649 612.556C210.085 614.846 213.534 611.104 213.314 606.393C213.197 603.766 211.891 601.843 210.218 601.843" fill="#B8AFA3" />
        <path d="M198.683 601.843C194.397 602.195 193.458 610.619 196.408 612.806C199.108 614.802 202.396 610.047 201.574 605.321C201.207 603.208 200.077 601.843 198.683 601.843Z" fill="#B8AFA3" />
        <path d="M187.28 601.843C183.097 602.195 182.143 610.619 185.02 612.806C187.647 614.802 190.875 610.047 190.083 605.321C189.731 603.208 188.63 601.843 187.28 601.843Z" fill="#B8AFA3" />
        <path d="M176.288 601.843C172.208 602.195 171.254 610.619 174.042 612.806C176.449 614.684 179.502 610.458 179.076 605.85C178.856 603.502 177.711 601.843 176.288 601.843Z" fill="#B8AFA3" />
        <path d="M165.589 601.843C161.612 602.195 160.644 610.619 163.359 612.806C165.692 614.684 168.686 610.458 168.29 605.85C168.084 603.502 166.984 601.843 165.589 601.843Z" fill="#B8AFA3" />
        <path d="M155.17 601.843C151.295 602.195 150.312 610.619 152.939 612.806C155.199 614.684 158.134 610.458 157.767 605.85C157.577 603.502 156.505 601.843 155.155 601.843" fill="#B8AFA3" />
        <path d="M145.029 601.843C141.272 602.195 140.289 610.619 142.828 612.806C145.014 614.684 147.891 610.458 147.553 605.85C147.377 603.487 146.35 601.843 145.029 601.843Z" fill="#B8AFA3" />
        <path d="M135.211 601.843C131.557 602.195 130.574 610.619 133.024 612.806C135.123 614.67 137.926 610.443 137.633 605.85C137.471 603.458 136.503 601.843 135.211 601.843Z" fill="#B8AFA3" />
        <path d="M125.687 601.843C122.15 602.195 121.152 610.619 123.529 612.806C125.569 614.67 128.284 610.458 128.02 605.85C127.888 603.502 126.919 601.843 125.701 601.843" fill="#B8AFA3" />
        <path d="M116.368 601.843C112.684 602.225 112.009 611.324 114.46 612.997C116.676 614.508 119.244 609.328 118.496 604.822C118.188 602.988 117.38 601.843 116.368 601.843Z" fill="#B8AFA3" />
        <path d="M107.474 601.843C103.923 602.225 103.218 611.324 105.581 612.997C107.695 614.508 110.189 609.313 109.514 604.822C109.235 602.988 108.458 601.843 107.474 601.843Z" fill="#B8AFA3" />
        <path d="M98.8892 601.843C95.4552 602.225 94.7507 611.324 97.0108 612.997C99.0506 614.508 101.472 609.313 100.841 604.822C100.577 602.988 99.8284 601.843 98.9039 601.843" fill="#B8AFA3" />
        <path d="M90.5242 602.9C87.8386 603.208 87.2515 610.619 88.9979 611.984C90.5829 613.217 92.5054 608.976 92.0358 605.321C91.845 603.824 91.2579 602.9 90.5242 602.9Z" fill="#B8AFA3" />
        <path d="M1385.2 583.983C1382.7 584.364 1384.04 593.39 1386.08 595.048C1387.37 596.105 1388.26 593.757 1387.93 590.22C1387.6 586.903 1386.33 583.983 1385.2 583.983Z" fill="#B8AFA3" />
        <path d="M1378.71 583.983C1376.07 584.364 1377.4 593.39 1379.55 595.048C1381 596.178 1381.97 593.449 1381.47 589.633C1381.06 586.507 1379.83 583.983 1378.71 583.983Z" fill="#B8AFA3" />
        <path d="M1349.48 585.04C1347.07 585.333 1347.79 592.143 1349.81 593.904C1351.19 595.107 1352.34 593.199 1352.09 590.117C1351.87 587.402 1350.65 585.04 1349.48 585.04Z" fill="#B8AFA3" />
        <path d="M1332.56 583.983C1329.37 584.335 1330.21 592.7 1332.85 594.857C1334.79 596.442 1336.37 593.713 1335.87 589.633C1335.49 586.507 1334.01 583.983 1332.56 583.983Z" fill="#B8AFA3" />
        <path d="M1323.77 584.203C1320.6 584.541 1321.39 592.597 1324 594.681C1325.92 596.222 1327.52 593.581 1327.05 589.648C1326.7 586.654 1325.22 584.218 1323.77 584.218" fill="#B8AFA3" />
        <path d="M1314.61 583.983C1311.19 584.335 1311.98 592.7 1314.78 594.857C1316.84 596.442 1318.57 593.713 1318.09 589.633C1317.72 586.507 1316.15 583.983 1314.59 583.983" fill="#B8AFA3" />
        <path d="M1305.16 583.983C1301.62 584.335 1302.4 592.7 1305.29 594.857C1307.52 596.53 1309.37 593.331 1308.65 589.061C1308.17 586.214 1306.64 583.983 1305.16 583.983Z" fill="#B8AFA3" />
        <path d="M1295.41 583.983C1291.76 584.335 1292.52 592.7 1295.49 594.857C1297.77 596.53 1299.71 593.331 1298.99 589.061C1298.51 586.214 1296.94 583.983 1295.43 583.983" fill="#B8AFA3" />
        <path d="M1285.37 583.983C1281.9 584.306 1282.26 592.084 1285.1 594.623C1287.27 596.56 1289.38 594.256 1289.16 590.22C1288.97 586.903 1287.21 583.983 1285.37 583.983Z" fill="#B8AFA3" />
        <path d="M1275.04 583.983C1271.45 584.306 1271.77 592.084 1274.69 594.623C1276.91 596.56 1279.12 594.256 1278.9 590.22C1278.73 586.903 1276.92 583.983 1275.04 583.983Z" fill="#B8AFA3" />
        <path d="M1264.29 583.983C1260.62 584.306 1260.91 592.084 1263.87 594.623C1266.15 596.56 1268.41 594.256 1268.22 590.22C1268.06 586.903 1266.22 583.983 1264.29 583.983Z" fill="#B8AFA3" />
        <path d="M1253.38 583.983C1249.61 584.306 1249.87 592.084 1252.91 594.623C1255.35 596.663 1257.8 593.918 1257.34 589.648C1257.01 586.522 1255.25 583.998 1253.4 583.998" fill="#B8AFA3" />
        <path d="M1242.2 583.983C1238.32 584.306 1238.56 592.084 1241.66 594.623C1244.15 596.663 1246.67 593.918 1246.23 589.648C1245.91 586.536 1244.11 583.998 1242.21 583.998" fill="#B8AFA3" />
        <path d="M1230.74 583.983C1226.76 584.306 1226.95 592.084 1230.12 594.623C1232.66 596.663 1235.26 593.918 1234.83 589.648C1234.51 586.536 1232.67 583.998 1230.74 583.998" fill="#B8AFA3" />
        <path d="M1219 583.983C1214.95 584.306 1215.12 592.084 1218.34 594.623C1220.93 596.663 1223.59 593.918 1223.16 589.648C1222.86 586.522 1220.99 583.998 1219 583.998" fill="#B8AFA3" />
        <path d="M1207.01 583.983C1202.87 584.306 1203 592.084 1206.27 594.623C1208.91 596.663 1211.64 593.918 1211.23 589.648C1210.93 586.536 1209.03 583.998 1207.01 583.998" fill="#B8AFA3" />
        <path d="M1194.64 583.983C1190.6 584.291 1190.44 591.497 1193.49 594.329C1196.06 596.707 1199.07 594.432 1198.96 590.205C1198.88 586.889 1196.85 583.968 1194.64 583.968" fill="#B8AFA3" />
        <path d="M1182.12 583.983C1178.02 584.291 1177.82 591.497 1180.91 594.329C1183.53 596.707 1186.59 594.447 1186.51 590.205C1186.43 586.889 1184.38 583.968 1182.12 583.968" fill="#B8AFA3" />
        <path d="M1169.36 583.983C1165.18 584.291 1164.96 591.497 1168.1 594.329C1170.74 596.707 1173.9 594.432 1173.81 590.205C1173.75 586.889 1171.67 583.968 1169.36 583.968" fill="#B8AFA3" />
        <path d="M1156.38 583.983C1152.12 584.291 1151.86 591.497 1155.04 594.329C1157.87 596.839 1161.23 594.124 1160.84 589.633C1160.57 586.522 1158.56 583.983 1156.36 583.983" fill="#B8AFA3" />
        <path d="M1143.14 583.983C1138.81 584.291 1138.5 591.497 1141.75 594.329C1144.62 596.839 1148.06 594.124 1147.67 589.633C1147.41 586.522 1145.38 583.983 1143.15 583.983" fill="#B8AFA3" />
        <path d="M1129.68 583.983C1125.28 584.291 1124.94 591.497 1128.21 594.329C1131.12 596.839 1134.63 594.124 1134.26 589.633C1134.01 586.522 1131.96 583.983 1129.68 583.983Z" fill="#B8AFA3" />
        <path d="M1116 583.983C1111.53 584.291 1111.15 591.497 1114.48 594.329C1117.43 596.839 1120.99 594.124 1120.64 589.633C1120.39 586.522 1118.32 583.983 1116 583.983Z" fill="#B8AFA3" />
        <path d="M1101.93 583.983C1097.38 584.291 1096.97 591.497 1100.33 594.329C1103.31 596.839 1106.96 594.124 1106.61 589.633C1106.38 586.522 1104.28 583.983 1101.93 583.983Z" fill="#B8AFA3" />
        <path d="M1087.8 583.983C1083.18 584.291 1082.73 591.497 1086.14 594.329C1089.16 596.839 1092.88 594.124 1092.54 589.633C1092.3 586.522 1090.19 583.983 1087.8 583.983Z" fill="#B8AFA3" />
        <path d="M1073.46 583.983C1068.76 584.291 1068.28 591.497 1071.73 594.329C1074.78 596.839 1078.55 594.124 1078.24 589.633C1078.02 586.522 1075.88 583.983 1073.46 583.983Z" fill="#B8AFA3" />
        <path d="M1058.92 583.983C1054.13 584.291 1053.62 591.497 1057.11 594.329C1060.28 596.897 1064.05 594.212 1063.74 589.633C1063.54 586.522 1061.37 583.983 1058.92 583.983Z" fill="#B8AFA3" />
        <path d="M1044.17 583.983C1039.31 584.291 1038.77 591.497 1042.29 594.329C1045.61 596.985 1049.66 593.786 1048.97 589.061C1048.56 586.214 1046.44 583.983 1044.15 583.983" fill="#B8AFA3" />
        <path d="M1029.21 583.983C1024.53 584.276 1023.7 590.895 1026.92 594.006C1029.93 596.912 1034.06 594.755 1034.14 590.22C1034.2 586.903 1031.91 583.983 1029.21 583.983Z" fill="#B8AFA3" />
        <path d="M1013.91 583.983C1009.17 584.276 1008.29 590.895 1011.54 594.006C1014.7 597.029 1019.15 594.373 1018.87 589.633C1018.68 586.522 1016.46 583.983 1013.91 583.983Z" fill="#B8AFA3" />
        <path d="M998.585 583.983C993.772 584.276 992.847 590.895 996.149 594.006C999.407 597.073 1003.85 594.461 1003.59 589.633C1003.41 586.522 1001.18 583.983 998.6 583.983" fill="#B8AFA3" />
        <path d="M983.059 583.983C978.201 584.276 977.247 590.895 980.564 594.006C983.837 597.088 988.342 594.476 988.078 589.633C987.916 586.522 985.656 583.983 983.044 583.983" fill="#B8AFA3" />
        <path d="M967.385 583.983C962.484 584.276 961.486 590.895 964.832 594.006C968.134 597.088 972.698 594.476 972.448 589.633C972.287 586.522 970.027 583.983 967.385 583.983Z" fill="#B8AFA3" />
        <path d="M951.536 583.983C946.575 584.276 945.548 590.895 948.909 594.006C952.24 597.088 956.848 594.476 956.628 589.633C956.482 586.522 954.192 583.983 951.536 583.983Z" fill="#B8AFA3" />
        <path d="M935.51 583.983C930.491 584.276 929.435 590.895 932.825 594.006C936.171 597.088 940.852 594.476 940.632 589.633C940.5 586.522 938.196 583.983 935.496 583.983" fill="#B8AFA3" />
        <path d="M919.338 583.983C914.275 584.276 913.189 590.895 916.593 594.006C919.969 597.088 924.694 594.476 924.504 589.633C924.372 586.522 922.067 583.983 919.352 583.983" fill="#B8AFA3" />
        <path d="M902.799 583.983C897.691 584.276 896.561 590.895 899.995 594.006C903.385 597.088 908.17 594.476 907.994 589.633C907.876 586.522 905.557 583.983 902.813 583.983" fill="#B8AFA3" />
        <path d="M886.318 583.983C881.152 584.276 879.993 590.895 883.442 594.006C886.846 597.088 891.689 594.476 891.528 589.633C891.425 586.522 889.077 583.983 886.318 583.983Z" fill="#B8AFA3" />
        <path d="M869.676 583.983C864.466 584.276 863.277 590.895 866.741 594.006C870.175 597.088 875.062 594.476 874.915 589.633C874.827 586.522 872.464 583.983 869.676 583.983Z" fill="#B8AFA3" />
        <path d="M852.916 584.203C847.868 584.482 846.679 590.851 850.025 593.845C853.342 596.824 858.097 594.3 857.979 589.633C857.891 586.639 855.631 584.203 852.916 584.203Z" fill="#B8AFA3" />
        <path d="M835.996 583.983C830.683 584.276 829.406 590.895 832.928 594.006C836.407 597.073 841.396 594.461 841.279 589.633C841.205 586.522 838.828 583.983 835.996 583.983Z" fill="#B8AFA3" />
        <path d="M818.957 583.983C813.601 584.276 812.295 590.895 815.832 594.006C819.324 597.073 824.358 594.461 824.255 589.633C824.197 586.522 821.819 583.983 818.957 583.983Z" fill="#B8AFA3" />
        <path d="M801.772 584.203C796.621 584.482 795.345 590.851 798.735 593.845C802.022 596.765 806.997 594.197 806.909 589.633C806.865 586.639 804.561 584.203 801.772 584.203Z" fill="#B8AFA3" />
        <path d="M696.241 583.983C690.708 584.276 689.211 590.895 692.763 594.006C696.446 597.22 702.038 594.08 701.568 589.061C701.304 586.214 698.956 583.983 696.226 583.983" fill="#B8AFA3" />
        <path d="M678.351 583.983C672.863 584.276 671.337 590.895 674.873 594.006C678.513 597.22 684.09 594.065 683.635 589.061C683.385 586.214 681.066 583.983 678.351 583.983Z" fill="#B8AFA3" />
        <path d="M660.799 583.983C655.34 584.276 653.799 590.895 657.307 594.006C660.917 597.22 666.464 594.065 666.039 589.061C665.804 586.214 663.5 583.983 660.814 583.983" fill="#B8AFA3" />
        <path d="M273.572 583.983C269.096 584.306 267.746 592.084 270.754 594.623C273.469 596.897 277.255 593.184 277.006 588.503C276.859 585.891 275.421 583.983 273.572 583.983Z" fill="#B8AFA3" />
        <path d="M260.628 583.983C256.225 584.306 254.89 592.084 257.825 594.623C260.466 596.897 264.209 593.184 263.989 588.503C263.857 585.891 262.448 583.983 260.628 583.983Z" fill="#B8AFA3" />
        <path d="M248.08 583.983C243.766 584.306 242.416 592.084 245.292 594.623C247.875 596.897 251.558 593.184 251.353 588.503C251.236 585.891 249.871 583.998 248.08 583.983Z" fill="#B8AFA3" />
        <path d="M235.782 583.983C231.556 584.306 230.191 592.084 232.994 594.623C235.518 596.897 239.143 593.184 238.952 588.503C238.849 585.891 237.514 583.998 235.768 583.983" fill="#B8AFA3" />
        <path d="M223.748 583.983C219.61 584.306 218.245 592.084 220.975 594.623C223.425 596.897 226.992 593.184 226.845 588.503C226.757 585.891 225.451 583.998 223.748 583.983Z" fill="#B8AFA3" />
        <path d="M211.964 583.983C207.914 584.306 206.549 592.084 209.205 594.623C211.597 596.897 215.09 593.184 214.972 588.503C214.899 585.891 213.637 583.998 211.964 583.983Z" fill="#B8AFA3" />
        <path d="M200.458 583.983C196.188 584.335 195.087 592.7 197.993 594.857C200.649 596.839 204.01 592.113 203.276 587.432C202.953 585.333 201.838 583.983 200.458 583.983Z" fill="#B8AFA3" />
        <path d="M189.1 583.983C184.917 584.335 183.831 592.7 186.649 594.857C189.232 596.839 192.534 592.113 191.844 587.432C191.536 585.333 190.464 583.983 189.114 583.983" fill="#B8AFA3" />
        <path d="M178.137 583.983C174.057 584.335 172.956 592.7 175.686 594.857C178.196 596.839 181.424 592.113 180.779 587.432C180.485 585.333 179.443 583.983 178.122 583.983" fill="#B8AFA3" />
        <path d="M167.468 583.983C163.505 584.335 162.375 592.7 165.032 594.857C167.468 596.839 170.638 592.113 170.021 587.432C169.743 585.333 168.745 583.983 167.453 583.983" fill="#B8AFA3" />
        <path d="M157.092 583.983C153.218 584.335 152.088 592.7 154.671 594.857C156.887 596.721 159.895 592.524 159.616 587.96C159.47 585.627 158.442 583.983 157.092 583.983Z" fill="#B8AFA3" />
        <path d="M146.996 583.983C143.239 584.335 142.094 592.7 144.589 594.857C146.731 596.721 149.681 592.524 149.432 587.96C149.314 585.627 148.302 583.983 146.996 583.983Z" fill="#B8AFA3" />
        <path d="M137.192 583.983C133.553 584.335 132.393 592.7 134.8 594.857C136.855 596.707 139.731 592.524 139.526 587.96C139.423 585.583 138.484 583.983 137.192 583.983Z" fill="#B8AFA3" />
        <path d="M127.712 583.983C124.175 584.335 123.016 592.7 125.334 594.857C127.33 596.707 130.133 592.524 129.957 587.96C129.869 585.627 128.945 583.983 127.727 583.983" fill="#B8AFA3" />
        <path d="M118.422 583.983C114.739 584.364 113.888 593.39 116.294 595.048C118.554 596.619 121.328 590.851 120.403 586.478C120.081 584.922 119.332 583.983 118.422 583.983Z" fill="#B8AFA3" />
        <path d="M109.558 583.983C106.007 584.364 105.126 593.39 107.43 595.048C109.646 596.648 112.317 590.954 111.437 586.478C111.129 584.922 110.424 583.983 109.544 583.983" fill="#B8AFA3" />
        <path d="M101.002 583.983C97.5831 584.364 96.6732 593.39 98.8892 595.048C100.885 596.545 103.424 591.394 102.881 586.947C102.661 585.128 101.942 583.998 101.002 583.983Z" fill="#B8AFA3" />
        <path d="M92.7549 584.203C89.5996 584.57 88.7044 593.258 90.7296 594.858C92.5788 596.325 94.9562 591.35 94.4719 587.05C94.2811 585.304 93.6207 584.203 92.7549 584.203Z" fill="#B8AFA3" />
        <path d="M1382.53 566.27C1380.05 566.652 1381.59 575.604 1383.66 577.247C1384.96 578.289 1385.81 575.956 1385.39 572.448C1384.99 569.146 1383.66 566.27 1382.53 566.27Z" fill="#B8AFA3" />
        <path d="M1346.81 566.27C1343.87 566.622 1344.94 574.914 1347.45 577.056C1349.05 578.421 1350.39 576.455 1350.18 573.006C1349.98 569.543 1348.35 566.27 1346.81 566.27Z" fill="#B8AFA3" />
        <path d="M1330.09 566.27C1326.92 566.622 1327.93 574.914 1330.62 577.056C1332.45 578.524 1333.95 576.205 1333.6 572.448C1333.28 569.146 1331.65 566.27 1330.11 566.27" fill="#B8AFA3" />
        <path d="M1321.31 566.27C1318.03 566.622 1319.03 574.914 1321.78 577.056C1323.81 578.627 1325.41 575.912 1324.84 571.876C1324.4 568.779 1322.83 566.27 1321.33 566.27" fill="#B8AFA3" />
        <path d="M1312.22 566.27C1308.81 566.622 1309.78 574.914 1312.61 577.056C1314.7 578.627 1316.37 575.912 1315.8 571.876C1315.37 568.779 1313.76 566.27 1312.2 566.27" fill="#B8AFA3" />
        <path d="M1302.81 566.27C1299.29 566.622 1300.24 574.914 1303.15 577.056C1305.29 578.627 1307.04 575.926 1306.48 571.876C1306.05 568.779 1304.41 566.27 1302.81 566.27Z" fill="#B8AFA3" />
        <path d="M1293.11 566.27C1289.76 566.593 1290.29 574.312 1293.11 576.822C1295.25 578.744 1297.25 576.455 1296.92 572.448C1296.66 569.161 1294.88 566.27 1293.11 566.27Z" fill="#B8AFA3" />
        <path d="M1283.1 566.27C1279.65 566.593 1280.15 574.312 1283.03 576.822C1285.23 578.744 1287.3 576.455 1286.99 572.448C1286.74 569.161 1284.92 566.27 1283.1 566.27Z" fill="#B8AFA3" />
        <path d="M1272.81 566.27C1269.25 566.593 1269.72 574.312 1272.65 576.822C1274.9 578.744 1277.05 576.455 1276.76 572.448C1276.52 569.161 1274.68 566.27 1272.8 566.27" fill="#B8AFA3" />
        <path d="M1262.1 566.27C1258.44 566.593 1258.88 574.312 1261.89 576.822C1264.18 578.744 1266.41 576.455 1266.13 572.448C1265.91 569.161 1264.02 566.27 1262.1 566.27Z" fill="#B8AFA3" />
        <path d="M1251.24 566.27C1247.5 566.593 1247.89 574.312 1250.96 576.822C1253.43 578.847 1255.82 576.117 1255.29 571.876C1254.91 568.779 1253.09 566.27 1251.24 566.27Z" fill="#B8AFA3" />
        <path d="M1240.1 566.27C1236.26 566.593 1236.62 574.312 1239.75 576.822C1242.27 578.847 1244.74 576.117 1244.21 571.876C1243.83 568.779 1241.98 566.27 1240.1 566.27Z" fill="#B8AFA3" />
        <path d="M1228.68 566.27C1224.72 566.593 1225.06 574.312 1228.26 576.822C1230.83 578.847 1233.36 576.117 1232.87 571.876C1232.5 568.779 1230.62 566.27 1228.68 566.27Z" fill="#B8AFA3" />
        <path d="M1216.99 566.27C1212.97 566.593 1213.26 574.312 1216.5 576.822C1219.11 578.847 1221.73 576.117 1221.23 571.876C1220.86 568.779 1218.97 566.27 1216.99 566.27Z" fill="#B8AFA3" />
        <path d="M1205.06 566.27C1201.15 566.578 1201.14 573.725 1204.17 576.543C1206.73 578.906 1209.6 576.646 1209.41 572.463C1209.25 569.176 1207.23 566.285 1205.06 566.285" fill="#B8AFA3" />
        <path d="M1192.73 566.27C1188.72 566.578 1188.66 573.725 1191.76 576.543C1194.36 578.906 1197.32 576.646 1197.15 572.463C1197 569.176 1194.94 566.285 1192.73 566.285" fill="#B8AFA3" />
        <path d="M1180.25 566.27C1176.17 566.578 1176.1 573.725 1179.23 576.543C1181.85 578.906 1184.89 576.66 1184.73 572.463C1184.6 569.176 1182.51 566.285 1180.25 566.285" fill="#B8AFA3" />
        <path d="M1167.56 566.27C1163.41 566.578 1163.29 573.725 1166.46 576.543C1169.13 578.906 1172.23 576.646 1172.08 572.463C1171.96 569.176 1169.85 566.285 1167.56 566.285" fill="#B8AFA3" />
        <path d="M1154.62 566.27C1150.37 566.578 1150.23 573.725 1153.44 576.543C1156.3 579.038 1159.61 576.337 1159.15 571.891C1158.83 568.794 1156.8 566.285 1154.62 566.285" fill="#B8AFA3" />
        <path d="M1141.45 566.27C1137.14 566.578 1136.95 573.725 1140.2 576.543C1143.1 579.038 1146.49 576.337 1146.05 571.891C1145.74 568.794 1143.68 566.285 1141.45 566.285" fill="#B8AFA3" />
        <path d="M1128.04 566.27C1123.65 566.578 1123.42 573.725 1126.72 576.543C1129.65 579.038 1133.1 576.337 1132.68 571.891C1132.38 568.794 1130.3 566.285 1128.04 566.285" fill="#B8AFA3" />
        <path d="M1114.4 566.27C1109.94 566.578 1109.66 573.725 1113.03 576.543C1115.99 579.038 1119.51 576.337 1119.1 571.891C1118.81 568.794 1116.71 566.285 1114.4 566.285" fill="#B8AFA3" />
        <path d="M1100.39 566.27C1095.85 566.578 1095.55 573.725 1098.94 576.543C1101.95 579.038 1105.54 576.337 1105.13 571.891C1104.85 568.794 1102.72 566.285 1100.39 566.285" fill="#B8AFA3" />
        <path d="M1086.33 566.27C1081.72 566.578 1081.37 573.725 1084.8 576.543C1087.84 579.038 1091.51 576.337 1091.11 571.891C1090.85 568.794 1088.69 566.285 1086.33 566.285" fill="#B8AFA3" />
        <path d="M1072.04 566.27C1067.37 566.578 1066.97 573.725 1070.44 576.543C1073.52 579.038 1077.23 576.337 1076.86 571.891C1076.6 568.794 1074.44 566.285 1072.04 566.285" fill="#B8AFA3" />
        <path d="M1057.55 566.27C1052.8 566.578 1052.36 573.725 1055.86 576.543C1059.05 579.082 1062.79 576.425 1062.42 571.891C1062.17 568.794 1059.99 566.285 1057.55 566.285" fill="#B8AFA3" />
        <path d="M1042.86 566.27C1038.25 566.564 1037.5 573.123 1040.73 576.205C1043.74 579.082 1047.76 576.939 1047.79 572.448C1047.81 569.161 1045.5 566.27 1042.86 566.27Z" fill="#B8AFA3" />
        <path d="M1027.97 566.27C1023.31 566.564 1022.54 573.123 1025.79 576.205C1028.83 579.082 1032.91 576.939 1032.94 572.448C1032.97 569.161 1030.65 566.27 1027.97 566.27Z" fill="#B8AFA3" />
        <path d="M1012.73 566.27C1008.02 566.564 1007.2 573.123 1010.47 576.205C1013.64 579.199 1018.05 576.558 1017.72 571.876C1017.5 568.779 1015.27 566.27 1012.73 566.27Z" fill="#B8AFA3" />
        <path d="M997.47 566.27C992.671 566.564 991.82 573.123 995.137 576.205C998.409 579.258 1002.81 576.66 1002.5 571.876C1002.3 568.779 1000.04 566.27 997.47 566.27Z" fill="#B8AFA3" />
        <path d="M982.002 566.27C977.174 566.564 976.279 573.123 979.61 576.205C982.898 579.258 987.359 576.66 987.065 571.876C986.875 568.779 984.6 566.27 982.002 566.27Z" fill="#B8AFA3" />
        <path d="M966.387 566.27C961.5 566.564 960.576 573.123 963.922 576.205C967.239 579.258 971.759 576.66 971.48 571.876C971.304 568.779 969.014 566.27 966.387 566.27Z" fill="#B8AFA3" />
        <path d="M950.597 566.27C945.666 566.564 944.697 573.123 948.072 576.205C951.418 579.258 955.983 576.66 955.733 571.876C955.557 568.779 953.268 566.27 950.611 566.27" fill="#B8AFA3" />
        <path d="M934.644 566.27C929.655 566.564 928.642 573.123 932.047 576.205C935.407 579.258 940.045 576.66 939.795 571.876C939.634 568.779 937.33 566.27 934.644 566.27Z" fill="#B8AFA3" />
        <path d="M918.531 566.27C913.497 566.564 912.44 573.123 915.86 576.205C919.235 579.258 923.931 576.66 923.711 571.876C923.564 568.779 921.246 566.27 918.531 566.27Z" fill="#B8AFA3" />
        <path d="M902.065 566.27C896.972 566.564 895.886 573.123 899.335 576.205C902.74 579.258 907.48 576.66 907.274 571.876C907.142 568.779 904.809 566.27 902.065 566.27Z" fill="#B8AFA3" />
        <path d="M885.643 566.27C880.506 566.564 879.391 573.123 882.84 576.205C886.259 579.258 891.058 576.66 890.867 571.876C890.75 568.779 888.402 566.27 885.643 566.27Z" fill="#B8AFA3" />
        <path d="M869.074 566.27C863.894 566.564 862.734 573.123 866.198 576.205C869.632 579.258 874.489 576.66 874.313 571.876C874.196 568.779 871.848 566.27 869.059 566.27" fill="#B8AFA3" />
        <path d="M852.373 566.27C847.149 566.564 845.946 573.123 849.438 576.205C852.887 579.258 857.789 576.66 857.642 571.876C857.539 568.779 855.176 566.27 852.373 566.27Z" fill="#B8AFA3" />
        <path d="M835.526 566.27C830.228 566.564 828.995 573.123 832.503 576.205C835.981 579.258 840.941 576.66 840.809 571.876C840.721 568.779 838.358 566.27 835.526 566.27Z" fill="#B8AFA3" />
        <path d="M784.044 566.27C778.659 566.564 777.308 573.123 780.845 576.205C784.499 579.39 789.885 576.279 789.342 571.304C789.034 568.486 786.701 566.27 784.044 566.27Z" fill="#B8AFA3" />
        <path d="M714.042 566.27C708.51 566.564 707.027 573.123 710.608 576.205C714.292 579.375 719.854 576.264 719.384 571.304C719.105 568.486 716.772 566.27 714.057 566.27" fill="#B8AFA3" />
        <path d="M696.329 566.27C690.826 566.564 689.314 573.123 692.866 576.205C696.52 579.39 702.111 576.279 701.641 571.304C701.377 568.486 699.044 566.27 696.329 566.27Z" fill="#B8AFA3" />
        <path d="M678.528 566.27C673.054 566.564 671.527 573.123 675.035 576.205C678.66 579.39 684.207 576.279 683.781 571.304C683.532 568.486 681.228 566.27 678.528 566.27Z" fill="#B8AFA3" />
        <path d="M661.034 566.27C655.59 566.564 654.049 573.123 657.527 576.205C661.108 579.39 666.64 576.279 666.229 571.304C665.995 568.486 663.705 566.27 661.034 566.27Z" fill="#B8AFA3" />
        <path d="M301.602 566.27C296.979 566.593 295.541 574.312 298.637 576.822C301.602 579.228 305.696 575.017 305.095 570.218C304.801 567.855 303.392 566.285 301.617 566.285" fill="#B8AFA3" />
        <path d="M288.365 566.27C283.815 566.593 282.377 574.312 285.4 576.822C288.306 579.228 292.356 575.031 291.769 570.218C291.491 567.899 290.096 566.285 288.365 566.285" fill="#B8AFA3" />
        <path d="M275.377 566.27C270.915 566.593 269.448 574.312 272.412 576.822C275.245 579.228 279.236 575.031 278.693 570.218C278.429 567.899 277.064 566.285 275.377 566.285" fill="#B8AFA3" />
        <path d="M262.477 566.27C258.089 566.593 256.622 574.312 259.513 576.822C262.272 579.214 266.219 575.017 265.706 570.218C265.456 567.855 264.165 566.285 262.477 566.285" fill="#B8AFA3" />
        <path d="M249.973 566.27C245.674 566.593 244.206 574.312 247.024 576.822C249.563 579.082 253.29 575.398 253.158 570.746C253.085 568.148 251.749 566.27 249.973 566.27Z" fill="#B8AFA3" />
        <path d="M237.734 566.27C233.522 566.593 232.04 574.312 234.784 576.822C237.265 579.082 240.933 575.398 240.831 570.746C240.772 568.148 239.466 566.27 237.734 566.27Z" fill="#B8AFA3" />
        <path d="M225.744 566.27C221.62 566.593 220.124 574.312 222.809 576.822C225.216 579.082 228.826 575.398 228.753 570.746C228.709 568.148 227.447 566.27 225.744 566.27Z" fill="#B8AFA3" />
        <path d="M214.004 566.27C209.968 566.593 208.471 574.312 211.069 576.822C213.417 579.082 216.968 575.398 216.91 570.746C216.88 568.148 215.662 566.27 213.989 566.27" fill="#B8AFA3" />
        <path d="M202.542 566.27C198.272 566.622 197.039 574.914 199.901 577.056C202.513 579.023 205.947 574.342 205.301 569.689C205.008 567.605 203.936 566.27 202.557 566.27" fill="#B8AFA3" />
        <path d="M191.227 566.27C187.06 566.622 185.812 574.914 188.586 577.056C191.125 579.023 194.5 574.342 193.898 569.689C193.634 567.605 192.578 566.27 191.242 566.27" fill="#B8AFA3" />
        <path d="M180.324 566.27C176.258 566.622 174.996 574.914 177.682 577.056C180.147 579.023 183.464 574.342 182.892 569.689C182.642 567.605 181.63 566.27 180.324 566.27Z" fill="#B8AFA3" />
        <path d="M169.699 566.27C165.736 566.622 164.459 574.914 167.072 577.056C169.449 579.023 172.707 574.342 172.193 569.689C171.959 567.605 170.99 566.27 169.713 566.27" fill="#B8AFA3" />
        <path d="M159.352 566.27C155.493 566.622 154.201 574.914 156.725 577.056C159.029 579.023 162.229 574.342 161.759 569.689C161.539 567.605 160.6 566.27 159.367 566.27" fill="#B8AFA3" />
        <path d="M149.3 566.27C145.557 566.622 144.251 574.914 146.687 577.056C148.918 579.023 152.059 574.342 151.618 569.689C151.428 567.605 150.518 566.27 149.3 566.27Z" fill="#B8AFA3" />
        <path d="M139.54 566.27C135.901 566.622 134.58 574.914 136.943 577.056C138.953 578.891 141.903 574.738 141.786 570.218C141.727 567.87 140.832 566.285 139.54 566.285" fill="#B8AFA3" />
        <path d="M130.089 566.27C126.567 566.622 125.232 574.914 127.492 577.056C129.444 578.906 132.32 574.738 132.232 570.218C132.188 567.899 131.307 566.285 130.089 566.285" fill="#B8AFA3" />
        <path d="M120.844 566.27C117.175 566.652 116.133 575.589 118.496 577.247C120.712 578.803 123.588 573.079 122.766 568.75C122.473 567.209 121.754 566.285 120.844 566.285" fill="#B8AFA3" />
        <path d="M112.009 566.27C108.458 566.652 107.401 575.589 109.661 577.247C111.833 578.832 114.607 573.197 113.844 568.75C113.579 567.209 112.89 566.285 112.009 566.285" fill="#B8AFA3" />
        <path d="M103.497 566.27C100.078 566.652 98.9919 575.589 101.149 577.247C103.189 578.788 105.933 573.065 105.229 568.75C104.98 567.209 104.334 566.285 103.483 566.285" fill="#B8AFA3" />
        <path d="M95.3084 566.27C92.0211 566.652 90.9057 575.589 92.975 577.247C94.8535 578.729 97.4217 573.622 97.0254 569.205C96.864 567.4 96.2036 566.27 95.3231 566.27" fill="#B8AFA3" />
        <path d="M1379.46 548.703C1376.99 549.085 1378.74 557.978 1380.85 559.607C1382.1 560.576 1382.88 558.609 1382.53 555.41C1382.14 551.961 1380.66 548.703 1379.46 548.703Z" fill="#B8AFA3" />
        <path d="M1343.9 548.703C1340.98 549.055 1342.23 557.288 1344.78 559.416C1346.41 560.781 1347.69 558.829 1347.41 555.395C1347.13 551.946 1345.43 548.688 1343.9 548.688" fill="#B8AFA3" />
        <path d="M1335.8 548.703C1332.76 549.055 1333.98 557.288 1336.61 559.416C1338.41 560.869 1339.78 558.565 1339.32 554.852C1338.92 551.565 1337.27 548.703 1335.78 548.703" fill="#B8AFA3" />
        <path d="M1327.27 548.703C1324.12 549.055 1325.31 557.288 1328.02 559.416C1329.88 560.869 1331.32 558.565 1330.88 554.852C1330.5 551.565 1328.81 548.689 1327.27 548.703Z" fill="#B8AFA3" />
        <path d="M1318.53 548.703C1315.25 549.055 1316.41 557.288 1319.22 559.416C1321.12 560.869 1322.65 558.565 1322.22 554.852C1321.86 551.565 1320.13 548.703 1318.53 548.703Z" fill="#B8AFA3" />
        <path d="M1309.47 548.703C1306.08 549.055 1307.23 557.288 1310.1 559.416C1312.22 560.972 1313.82 558.286 1313.17 554.28C1312.67 551.198 1311.01 548.688 1309.47 548.688" fill="#B8AFA3" />
        <path d="M1300.11 548.703C1296.88 549.026 1297.6 556.687 1300.39 559.181C1302.37 560.957 1304.19 559.049 1304.01 555.395C1303.84 551.946 1301.94 548.688 1300.12 548.688" fill="#B8AFA3" />
        <path d="M1290.45 548.703C1287.12 549.026 1287.81 556.687 1290.66 559.181C1292.68 560.957 1294.58 559.049 1294.41 555.395C1294.25 551.946 1292.33 548.688 1290.45 548.688" fill="#B8AFA3" />
        <path d="M1280.49 548.703C1277.05 549.026 1277.71 556.687 1280.62 559.181C1282.85 561.089 1284.86 558.815 1284.48 554.852C1284.16 551.565 1282.29 548.703 1280.49 548.703Z" fill="#B8AFA3" />
        <path d="M1270.24 548.703C1266.69 549.026 1267.31 556.687 1270.3 559.181C1272.58 561.089 1274.68 558.815 1274.31 554.852C1274 551.58 1272.11 548.703 1270.24 548.703Z" fill="#B8AFA3" />
        <path d="M1259.59 548.703C1255.95 549.026 1256.54 556.687 1259.59 559.181C1261.91 561.089 1264.08 558.815 1263.73 554.852C1263.43 551.58 1261.51 548.703 1259.59 548.703Z" fill="#B8AFA3" />
        <path d="M1248.77 548.703C1245.05 549.026 1245.59 556.687 1248.69 559.181C1251.05 561.089 1253.29 558.815 1252.97 554.852C1252.69 551.58 1250.74 548.703 1248.77 548.703Z" fill="#B8AFA3" />
        <path d="M1237.69 548.703C1233.86 549.026 1234.36 556.687 1237.53 559.181C1240.09 561.192 1242.48 558.492 1241.89 554.28C1241.45 551.198 1239.57 548.688 1237.69 548.688" fill="#B8AFA3" />
        <path d="M1226.33 548.703C1222.39 549.026 1222.86 556.687 1226.1 559.181C1228.7 561.177 1231.18 558.477 1230.59 554.28C1230.16 551.198 1228.26 548.688 1226.33 548.688" fill="#B8AFA3" />
        <path d="M1214.68 548.703C1210.88 549.011 1211.03 556.114 1214.05 558.903C1216.59 561.251 1219.35 559.02 1219.06 554.852C1218.82 551.565 1216.78 548.703 1214.67 548.703" fill="#B8AFA3" />
        <path d="M1202.81 548.703C1198.92 549.011 1199.02 556.114 1202.11 558.903C1204.69 561.251 1207.52 559.005 1207.26 554.852C1207.04 551.58 1204.97 548.703 1202.81 548.703Z" fill="#B8AFA3" />
        <path d="M1190.54 548.703C1186.55 549.011 1186.61 556.114 1189.75 558.903C1192.38 561.236 1195.3 559.005 1195.03 554.852C1194.84 551.58 1192.73 548.703 1190.54 548.703Z" fill="#B8AFA3" />
        <path d="M1178.13 548.703C1174.06 549.011 1174.1 556.114 1177.27 558.903C1179.93 561.251 1182.92 559.02 1182.69 554.852C1182.5 551.58 1180.39 548.703 1178.14 548.703" fill="#B8AFA3" />
        <path d="M1165.49 548.703C1161.35 549.011 1161.34 556.114 1164.55 558.903C1167.25 561.251 1170.3 559.005 1170.08 554.852C1169.92 551.58 1167.76 548.703 1165.48 548.703" fill="#B8AFA3" />
        <path d="M1152.6 548.703C1148.38 549.011 1148.33 556.114 1151.59 558.903C1154.32 561.251 1157.45 559.005 1157.26 554.852C1157.11 551.58 1154.94 548.703 1152.6 548.703Z" fill="#B8AFA3" />
        <path d="M1139.5 548.703C1135.2 549.011 1135.11 556.114 1138.41 558.903C1141.33 561.383 1144.67 558.697 1144.15 554.28C1143.8 551.198 1141.72 548.688 1139.5 548.688" fill="#B8AFA3" />
        <path d="M1126.16 548.703C1121.79 549.011 1121.65 556.114 1125 558.903C1127.96 561.383 1131.35 558.697 1130.87 554.28C1130.53 551.198 1128.42 548.688 1126.16 548.688" fill="#B8AFA3" />
        <path d="M1112.58 548.703C1108.14 549.011 1107.96 556.114 1111.35 558.903C1114.35 561.383 1117.81 558.697 1117.34 554.28C1117 551.198 1114.87 548.688 1112.58 548.688" fill="#B8AFA3" />
        <path d="M1098.63 548.703C1094.11 549.011 1093.9 556.114 1097.32 558.903C1100.35 561.383 1103.9 558.697 1103.43 554.28C1103.1 551.198 1100.96 548.688 1098.63 548.688" fill="#B8AFA3" />
        <path d="M1084.63 548.703C1080.03 549.011 1079.78 556.114 1083.23 558.903C1086.3 561.383 1089.9 558.697 1089.46 554.28C1089.15 551.198 1086.98 548.688 1084.61 548.688" fill="#B8AFA3" />
        <path d="M1070.41 548.703C1065.76 549.011 1065.45 556.114 1068.94 558.903C1072.04 561.383 1075.71 558.697 1075.28 554.28C1074.99 551.198 1072.8 548.688 1070.39 548.688" fill="#B8AFA3" />
        <path d="M1056 548.703C1051.46 548.997 1050.84 555.513 1054.07 558.58C1057.08 561.441 1061 559.314 1060.94 554.852C1060.9 551.58 1058.59 548.703 1056 548.703Z" fill="#B8AFA3" />
        <path d="M1041.38 548.703C1036.79 548.997 1036.11 555.513 1039.38 558.58C1042.42 561.427 1046.4 559.314 1046.37 554.852C1046.35 551.58 1044.02 548.703 1041.38 548.703Z" fill="#B8AFA3" />
        <path d="M1026.54 548.703C1021.9 548.997 1021.2 555.513 1024.49 558.58C1027.54 561.441 1031.58 559.314 1031.56 554.852C1031.56 551.58 1029.21 548.703 1026.54 548.703Z" fill="#B8AFA3" />
        <path d="M1011.38 548.703C1006.69 548.997 1005.94 555.513 1009.24 558.58C1012.32 561.441 1016.42 559.314 1016.43 554.852C1016.43 551.58 1014.08 548.703 1011.38 548.703Z" fill="#B8AFA3" />
        <path d="M996.193 548.703C991.409 548.997 990.617 555.513 993.963 558.58C997.25 561.603 1001.61 559.035 1001.26 554.28C1001.02 551.198 998.747 548.688 996.193 548.688" fill="#B8AFA3" />
        <path d="M980.799 548.703C975.985 548.997 975.163 555.513 978.509 558.58C981.811 561.603 986.229 559.035 985.891 554.28C985.671 551.198 983.382 548.688 980.799 548.688" fill="#B8AFA3" />
        <path d="M965.243 548.703C960.37 548.997 959.505 555.513 962.88 558.58C966.211 561.603 970.687 559.035 970.364 554.28C970.159 551.198 967.855 548.688 965.243 548.688" fill="#B8AFA3" />
        <path d="M949.54 548.703C944.624 548.997 943.714 555.513 947.104 558.58C950.45 561.603 954.985 559.035 954.691 554.28C954.5 551.198 952.182 548.688 949.54 548.688" fill="#B8AFA3" />
        <path d="M933.646 548.703C928.671 548.997 927.718 555.513 931.137 558.58C934.512 561.603 939.106 559.035 938.827 554.28C938.651 551.198 936.332 548.688 933.661 548.688" fill="#B8AFA3" />
        <path d="M917.621 548.703C912.602 548.997 911.604 555.513 915.038 558.58C918.428 561.603 923.08 559.035 922.816 554.28C922.654 551.198 920.321 548.688 917.621 548.688" fill="#B8AFA3" />
        <path d="M901.228 548.703C896.15 548.997 895.123 555.513 898.572 558.58C901.977 561.603 906.687 559.035 906.453 554.28C906.291 551.198 903.958 548.688 901.243 548.688" fill="#B8AFA3" />
        <path d="M884.88 548.703C879.758 548.997 878.687 555.513 882.15 558.58C885.57 561.603 890.339 559.035 890.119 554.28C889.972 551.198 887.624 548.688 884.88 548.688" fill="#B8AFA3" />
        <path d="M868.384 548.703C863.219 548.997 862.103 555.513 865.581 558.58C869.015 561.603 873.844 559.035 873.638 554.28C873.506 551.198 871.158 548.688 868.384 548.688" fill="#B8AFA3" />
        <path d="M851.757 548.703C846.547 548.997 845.388 555.513 848.881 558.58C852.329 561.603 857.202 559.035 857.026 554.28C856.908 551.198 854.545 548.688 851.757 548.688" fill="#B8AFA3" />
        <path d="M834.998 548.703C829.715 548.997 828.511 555.513 832.033 558.58C835.497 561.603 840.442 559.035 840.281 554.28C840.178 551.198 837.815 548.688 834.998 548.688" fill="#B8AFA3" />
        <path d="M818.106 548.703C812.794 548.997 811.532 555.513 815.068 558.58C818.546 561.603 823.536 559.035 823.404 554.28C823.316 551.198 820.939 548.688 818.106 548.688" fill="#B8AFA3" />
        <path d="M801.053 548.703C795.711 548.997 794.435 555.513 797.971 558.58C801.582 561.72 806.894 558.624 806.322 553.708C805.984 550.846 803.724 548.689 801.053 548.703Z" fill="#B8AFA3" />
        <path d="M766.492 548.703C761.062 548.997 759.683 555.513 763.249 558.58C766.889 561.72 772.319 558.624 771.776 553.707C771.467 550.846 769.193 548.703 766.492 548.703Z" fill="#B8AFA3" />
        <path d="M749.102 548.703C743.657 548.997 742.249 555.513 745.815 558.58C749.454 561.72 754.914 558.624 754.4 553.708C754.106 550.846 751.832 548.689 749.102 548.703Z" fill="#B8AFA3" />
        <path d="M731.638 548.923C726.37 549.202 724.99 555.469 728.41 558.418C731.932 561.456 737.23 558.477 736.76 553.737C736.481 550.993 734.28 548.923 731.638 548.923Z" fill="#B8AFA3" />
        <path d="M714.072 548.703C708.554 548.997 707.086 555.513 710.652 558.58C714.306 561.72 719.854 558.624 719.384 553.707C719.105 550.846 716.831 548.703 714.072 548.703Z" fill="#B8AFA3" />
        <path d="M303.539 548.703C298.916 549.026 297.375 556.687 300.428 559.181C303.334 561.559 307.472 557.391 306.944 552.621C306.68 550.273 305.315 548.703 303.539 548.703Z" fill="#B8AFA3" />
        <path d="M290.361 548.703C285.811 549.026 284.27 556.687 287.249 559.181C290.096 561.559 294.191 557.391 293.692 552.621C293.457 550.317 292.078 548.703 290.361 548.703Z" fill="#B8AFA3" />
        <path d="M277.431 548.703C272.97 549.026 271.4 556.687 274.32 559.181C277.109 561.559 281.144 557.391 280.675 552.621C280.455 550.317 279.119 548.703 277.431 548.703Z" fill="#B8AFA3" />
        <path d="M264.59 548.703C260.217 549.026 258.632 556.687 261.479 559.181C264.179 561.559 268.171 557.391 267.76 552.621C267.555 550.273 266.278 548.703 264.605 548.703" fill="#B8AFA3" />
        <path d="M252.145 548.703C247.846 549.026 246.261 556.687 249.034 559.181C251.676 561.559 255.609 557.391 255.227 552.621C255.037 550.317 253.774 548.703 252.16 548.703" fill="#B8AFA3" />
        <path d="M239.965 548.703C235.753 549.026 234.153 556.687 236.854 559.181C239.437 561.559 243.311 557.391 242.959 552.621C242.783 550.317 241.564 548.703 239.98 548.703" fill="#B8AFA3" />
        <path d="M228.034 548.703C223.91 549.026 222.296 556.687 224.922 559.181C227.285 561.412 230.939 557.758 230.939 553.15C230.939 550.567 229.721 548.688 228.034 548.688" fill="#B8AFA3" />
        <path d="M216.352 548.703C211.993 549.055 210.628 557.288 213.52 559.416C216.146 561.368 219.713 556.716 219.111 552.108C218.847 550.039 217.761 548.703 216.352 548.703Z" fill="#B8AFA3" />
        <path d="M204.949 548.703C200.678 549.055 199.314 557.288 202.117 559.416C204.67 561.353 208.178 556.716 207.62 552.108C207.371 550.039 206.329 548.703 204.949 548.703Z" fill="#B8AFA3" />
        <path d="M193.678 548.703C189.51 549.055 188.116 557.288 190.846 559.416C193.326 561.353 196.775 556.716 196.261 552.108C196.026 550.039 195.014 548.703 193.678 548.703Z" fill="#B8AFA3" />
        <path d="M182.818 548.703C178.753 549.055 177.344 557.288 179.986 559.416C182.393 561.353 185.783 556.716 185.313 552.108C185.108 550.039 184.125 548.703 182.818 548.703Z" fill="#B8AFA3" />
        <path d="M172.252 548.703C168.29 549.055 166.866 557.288 169.42 559.416C171.753 561.353 175.084 556.716 174.659 552.108C174.468 550.039 173.529 548.703 172.252 548.703Z" fill="#B8AFA3" />
        <path d="M161.95 548.703C158.09 549.055 156.637 557.288 159.117 559.416C161.377 561.353 164.65 556.701 164.269 552.108C164.092 550.039 163.183 548.703 161.95 548.703Z" fill="#B8AFA3" />
        <path d="M151.941 548.703C148.199 549.055 146.731 557.288 149.123 559.416C151.31 561.368 154.524 556.716 154.187 552.108C154.04 550.039 153.159 548.703 151.941 548.703Z" fill="#B8AFA3" />
        <path d="M142.226 548.703C138.586 549.055 137.104 557.288 139.408 559.416C141.492 561.353 144.647 556.701 144.354 552.108C144.222 550.039 143.385 548.703 142.211 548.703" fill="#B8AFA3" />
        <path d="M132.819 548.703C129.033 549.07 127.829 557.978 130.236 559.607C132.496 561.133 135.519 555.454 134.741 551.154C134.463 549.613 133.744 548.703 132.804 548.703" fill="#B8AFA3" />
        <path d="M123.617 548.703C119.949 549.07 118.73 557.978 121.049 559.607C123.221 561.148 126.215 555.454 125.481 551.154C125.217 549.613 124.527 548.703 123.617 548.703Z" fill="#B8AFA3" />
        <path d="M114.827 548.703C111.275 549.07 110.028 557.978 112.259 559.607C114.387 561.177 117.263 555.571 116.603 551.154C116.368 549.613 115.707 548.703 114.841 548.703" fill="#B8AFA3" />
        <path d="M106.359 548.703C102.94 549.07 101.663 557.978 103.791 559.607C105.772 561.133 108.634 555.454 108.047 551.154C107.827 549.613 107.21 548.703 106.374 548.703" fill="#B8AFA3" />
        <path d="M98.1995 548.703C94.9121 549.085 93.606 557.978 95.6312 559.607C97.5831 561.177 100.342 555.571 99.7844 551.154C99.5936 549.613 98.9919 548.703 98.1848 548.703" fill="#B8AFA3" />
        <path d="M1340.64 531.313C1337.75 531.651 1339.16 539.81 1341.74 541.923C1343.39 543.273 1344.62 541.336 1344.27 537.946C1343.91 534.542 1342.15 531.313 1340.64 531.328" fill="#B8AFA3" />
        <path d="M1332.57 531.313C1329.56 531.651 1330.94 539.81 1333.61 541.923C1335.31 543.273 1336.61 541.336 1336.28 537.946C1335.96 534.542 1334.16 531.313 1332.57 531.328" fill="#B8AFA3" />
        <path d="M1324.09 531.313C1320.96 531.651 1322.31 539.81 1325.06 541.923C1326.94 543.362 1328.33 541.087 1327.82 537.389C1327.36 534.145 1325.63 531.313 1324.09 531.313Z" fill="#B8AFA3" />
        <path d="M1315.4 531.313C1312.16 531.651 1313.48 539.81 1316.31 541.923C1318.25 543.362 1319.7 541.087 1319.2 537.389C1318.76 534.145 1316.99 531.313 1315.4 531.313Z" fill="#B8AFA3" />
        <path d="M1306.39 531.313C1303.03 531.651 1304.32 539.81 1307.23 541.923C1309.35 543.464 1310.89 540.808 1310.18 536.831C1309.62 533.793 1307.93 531.313 1306.39 531.313Z" fill="#B8AFA3" />
        <path d="M1297.07 531.313C1293.87 531.636 1294.74 539.223 1297.55 541.689C1299.57 543.45 1301.34 541.556 1301.08 537.946C1300.83 534.542 1298.89 531.313 1297.07 531.328" fill="#B8AFA3" />
        <path d="M1287.46 531.313C1284.16 531.636 1284.99 539.208 1287.87 541.689C1289.92 543.45 1291.77 541.556 1291.54 537.946C1291.32 534.542 1289.34 531.313 1287.47 531.328" fill="#B8AFA3" />
        <path d="M1277.57 531.313C1274.16 531.636 1274.95 539.223 1277.9 541.689C1280 543.45 1281.93 541.556 1281.71 537.946C1281.5 534.542 1279.49 531.313 1277.57 531.328" fill="#B8AFA3" />
        <path d="M1267.37 531.313C1263.85 531.636 1264.59 539.208 1267.62 541.689C1269.92 543.567 1271.96 541.322 1271.52 537.389C1271.15 534.145 1269.22 531.313 1267.37 531.313Z" fill="#B8AFA3" />
        <path d="M1256.77 531.313C1253.16 531.636 1253.9 539.223 1256.95 541.689C1259.3 543.582 1261.41 541.336 1260.98 537.389C1260.63 534.145 1258.66 531.313 1256.76 531.313" fill="#B8AFA3" />
        <path d="M1246.01 531.313C1242.32 531.636 1242.99 539.223 1246.12 541.689C1248.51 543.582 1250.7 541.336 1250.3 537.389C1249.96 534.145 1247.97 531.313 1246.01 531.313Z" fill="#B8AFA3" />
        <path d="M1234.98 531.313C1231.18 531.621 1231.82 539.208 1235.01 541.689C1237.44 543.582 1239.72 541.336 1239.32 537.389C1239 534.145 1236.97 531.313 1234.98 531.313Z" fill="#B8AFA3" />
        <path d="M1223.68 531.313C1219.97 531.606 1220.29 538.636 1223.3 541.41C1225.7 543.611 1228.23 541.791 1228.12 537.946C1228.04 534.542 1225.88 531.328 1223.69 531.328" fill="#B8AFA3" />
        <path d="M1212.1 531.313C1208.33 531.606 1208.59 538.636 1211.64 541.41C1214.08 543.626 1216.68 541.806 1216.59 537.946C1216.52 534.542 1214.33 531.313 1212.1 531.328" fill="#B8AFA3" />
        <path d="M1200.27 531.313C1196.41 531.606 1196.65 538.636 1199.74 541.41C1202.35 543.728 1205.13 541.512 1204.79 537.389C1204.53 534.145 1202.41 531.313 1200.27 531.313Z" fill="#B8AFA3" />
        <path d="M1188.08 531.313C1184.11 531.606 1184.29 538.636 1187.44 541.41C1190.1 543.728 1192.96 541.512 1192.64 537.389C1192.39 534.145 1190.25 531.313 1188.06 531.313" fill="#B8AFA3" />
        <path d="M1175.73 531.313C1171.71 531.606 1171.84 538.636 1175.04 541.41C1177.73 543.728 1180.66 541.527 1180.36 537.389C1180.12 534.145 1177.96 531.313 1175.73 531.313Z" fill="#B8AFA3" />
        <path d="M1163.16 531.313C1159.05 531.606 1159.15 538.636 1162.38 541.41C1165.09 543.728 1168.1 541.512 1167.82 537.389C1167.6 534.145 1165.42 531.313 1163.16 531.313Z" fill="#B8AFA3" />
        <path d="M1150.34 531.313C1146.16 531.606 1146.22 538.636 1149.49 541.41C1152.25 543.728 1155.32 541.512 1155.07 537.389C1154.86 534.145 1152.66 531.313 1150.34 531.313Z" fill="#B8AFA3" />
        <path d="M1137.3 531.313C1133.04 531.606 1133.04 538.636 1136.36 541.41C1139.15 543.728 1142.29 541.512 1142.05 537.389C1141.88 534.145 1139.65 531.313 1137.28 531.313" fill="#B8AFA3" />
        <path d="M1124.03 531.313C1119.69 531.606 1119.66 538.636 1123.02 541.41C1126 543.861 1129.34 541.204 1128.79 536.831C1128.41 533.793 1126.26 531.313 1124.03 531.313Z" fill="#B8AFA3" />
        <path d="M1110.53 531.313C1106.11 531.606 1106.04 538.636 1109.43 541.41C1112.44 543.861 1115.86 541.204 1115.33 536.831C1114.96 533.793 1112.8 531.313 1110.53 531.313Z" fill="#B8AFA3" />
        <path d="M1096.65 531.313C1092.17 531.606 1092.04 538.636 1095.47 541.41C1098.53 543.861 1102 541.204 1101.49 536.831C1101.14 533.793 1098.97 531.313 1096.65 531.313Z" fill="#B8AFA3" />
        <path d="M1082.72 531.313C1078.38 531.606 1077.92 538.049 1081.11 541.087C1084.07 543.919 1087.8 541.806 1087.65 537.389C1087.53 534.145 1085.23 531.313 1082.72 531.313Z" fill="#B8AFA3" />
        <path d="M1068.57 531.313C1064.16 531.606 1063.67 538.049 1066.87 541.087C1069.86 543.919 1073.67 541.806 1073.53 537.389C1073.45 534.145 1071.13 531.313 1068.57 531.313Z" fill="#B8AFA3" />
        <path d="M1054.24 531.313C1049.73 531.592 1049.19 538.049 1052.43 541.087C1055.45 543.919 1059.33 541.806 1059.22 537.389C1059.15 534.145 1056.82 531.313 1054.24 531.313Z" fill="#B8AFA3" />
        <path d="M1039.69 531.313C1035.13 531.592 1034.54 538.049 1037.81 541.087C1040.87 543.919 1044.8 541.806 1044.73 537.389C1044.67 534.145 1042.32 531.313 1039.69 531.313Z" fill="#B8AFA3" />
        <path d="M1024.94 531.313C1020.33 531.606 1019.7 538.049 1022.99 541.087C1026.06 543.919 1030.05 541.821 1029.99 537.389C1029.95 534.145 1027.58 531.313 1024.93 531.313" fill="#B8AFA3" />
        <path d="M1009.86 531.313C1005.19 531.592 1004.51 538.049 1007.82 541.087C1010.91 543.934 1014.96 541.821 1014.93 537.389C1014.9 534.145 1012.54 531.313 1009.84 531.313" fill="#B8AFA3" />
        <path d="M994.741 531.313C990 531.592 989.267 538.049 992.613 541.087C995.915 544.095 1000.23 541.542 999.833 536.831C999.569 533.793 997.294 531.313 994.741 531.313Z" fill="#B8AFA3" />
        <path d="M979.434 531.313C974.65 531.606 973.887 538.049 977.247 541.087C980.564 544.095 984.937 541.542 984.556 536.831C984.306 533.793 982.017 531.313 979.449 531.313" fill="#B8AFA3" />
        <path d="M963.966 531.313C959.138 531.606 958.316 538.049 961.691 541.087C965.037 544.095 969.469 541.542 969.102 536.831C968.868 533.793 966.564 531.313 963.966 531.313Z" fill="#B8AFA3" />
        <path d="M948.337 531.313C943.45 531.606 942.598 538.049 945.988 541.087C949.349 544.095 953.84 541.542 953.502 536.831C953.282 533.793 950.963 531.313 948.337 531.313Z" fill="#B8AFA3" />
        <path d="M932.531 531.313C927.585 531.606 926.69 538.049 930.095 541.087C933.47 544.095 938.02 541.542 937.712 536.831C937.506 533.793 935.187 531.313 932.531 531.313Z" fill="#B8AFA3" />
        <path d="M916.579 531.313C911.589 531.606 910.65 538.049 914.069 541.087C917.459 544.095 922.067 541.542 921.789 536.831C921.598 533.793 919.264 531.313 916.579 531.313Z" fill="#B8AFA3" />
        <path d="M900.274 531.313C895.241 531.606 894.243 538.049 897.691 541.087C901.096 544.095 905.778 541.542 905.499 536.831C905.323 533.793 902.975 531.313 900.274 531.313Z" fill="#B8AFA3" />
        <path d="M884.014 531.313C878.921 531.606 877.894 538.049 881.343 541.087C884.762 544.095 889.488 541.542 889.253 536.831C889.092 533.793 886.744 531.313 884.014 531.313Z" fill="#B8AFA3" />
        <path d="M867.621 531.313C862.485 531.606 861.414 538.049 864.877 541.087C868.311 544.095 873.095 541.542 872.875 536.831C872.728 533.793 870.38 531.313 867.621 531.313Z" fill="#B8AFA3" />
        <path d="M851.067 531.313C845.887 531.606 844.772 538.049 848.25 541.087C851.698 544.095 856.527 541.542 856.336 536.831C856.204 533.793 853.841 531.313 851.067 531.313Z" fill="#B8AFA3" />
        <path d="M834.396 531.313C829.157 531.592 827.983 538.049 831.49 541.087C834.954 544.081 839.855 541.542 839.679 536.831C839.562 533.793 837.199 531.313 834.396 531.313Z" fill="#B8AFA3" />
        <path d="M817.593 531.313C812.309 531.592 811.091 538.049 814.599 541.087C818.077 544.081 823.022 541.542 822.876 536.831C822.773 533.793 820.41 531.313 817.593 531.313Z" fill="#B8AFA3" />
        <path d="M800.642 531.313C795.344 531.606 794.082 538.049 797.604 541.087C801.083 544.095 806.072 541.542 805.94 536.831C805.867 533.793 803.489 531.313 800.642 531.313Z" fill="#B8AFA3" />
        <path d="M783.413 531.313C778.071 531.592 776.765 538.049 780.287 541.087C783.912 544.227 789.254 541.16 788.682 536.259C788.359 533.485 786.04 531.313 783.413 531.313Z" fill="#B8AFA3" />
        <path d="M766.243 531.313C760.842 531.592 759.492 538.049 763.029 541.087C766.668 544.213 772.054 541.146 771.511 536.259C771.203 533.485 768.885 531.313 766.243 531.313Z" fill="#B8AFA3" />
        <path d="M748.955 531.313C743.54 531.606 742.161 538.049 745.683 541.087C749.308 544.213 754.737 541.146 754.224 536.259C753.93 533.441 751.656 531.313 748.955 531.313Z" fill="#B8AFA3" />
        <path d="M731.579 531.313C726.135 531.606 724.711 538.049 728.248 541.087C731.888 544.213 737.362 541.146 736.863 536.259C736.584 533.485 734.265 531.313 731.579 531.313Z" fill="#B8AFA3" />
        <path d="M714.101 531.313C708.627 531.606 707.145 538.049 710.696 541.087C714.336 544.213 719.868 541.146 719.384 536.259C719.12 533.485 716.801 531.313 714.101 531.313Z" fill="#B8AFA3" />
        <path d="M696.564 531.313C691.104 531.606 689.608 538.049 693.115 541.087C696.74 544.227 702.273 541.16 701.818 536.259C701.568 533.485 699.249 531.313 696.564 531.313Z" fill="#B8AFA3" />
        <path d="M360.392 531.313C355.74 531.606 354.008 538.636 356.87 541.41C359.746 544.183 364.34 540.559 364.09 535.716C363.958 533.162 362.403 531.313 360.392 531.313Z" fill="#B8AFA3" />
        <path d="M346.406 531.313C341.827 531.606 340.066 538.636 342.884 541.41C345.702 544.183 350.236 540.559 350.031 535.716C349.928 533.162 348.402 531.313 346.406 531.313Z" fill="#B8AFA3" />
        <path d="M332.626 531.313C327.871 531.621 326.271 539.208 329.397 541.689C332.406 544.066 336.676 539.927 336.133 535.187C335.869 532.913 334.431 531.313 332.641 531.313" fill="#B8AFA3" />
        <path d="M319.066 531.313C314.37 531.636 312.741 539.208 315.822 541.689C318.758 544.051 322.999 539.913 322.485 535.187C322.236 532.913 320.841 531.313 319.066 531.313Z" fill="#B8AFA3" />
        <path d="M305.711 531.313C301.118 531.636 299.474 539.223 302.468 541.689C305.33 544.051 309.512 539.927 309.042 535.187C308.822 532.869 307.472 531.313 305.711 531.313Z" fill="#B8AFA3" />
        <path d="M292.621 531.313C288.1 531.636 286.442 539.223 289.363 541.689C292.166 544.051 296.304 539.927 295.864 535.187C295.658 532.913 294.323 531.313 292.606 531.313" fill="#B8AFA3" />
        <path d="M279.75 531.313C275.318 531.636 273.63 539.223 276.492 541.689C279.222 544.051 283.316 539.927 282.92 535.187C282.729 532.913 281.423 531.313 279.75 531.313Z" fill="#B8AFA3" />
        <path d="M266.982 531.313C262.624 531.636 260.936 539.223 263.71 541.689C266.366 544.051 270.402 539.913 270.05 535.187C269.873 532.869 268.641 531.313 266.968 531.313" fill="#B8AFA3" />
        <path d="M254.596 531.313C250.326 531.636 248.609 539.223 251.324 541.689C253.921 544.051 257.898 539.927 257.59 535.187C257.443 532.913 256.211 531.313 254.596 531.313Z" fill="#B8AFA3" />
        <path d="M242.474 531.313C238.292 531.636 236.56 539.223 239.202 541.689C241.726 544.051 245.659 539.927 245.38 535.187C245.248 532.913 244.045 531.313 242.474 531.313Z" fill="#B8AFA3" />
        <path d="M230.602 531.313C226.507 531.636 224.761 539.223 227.329 541.689C229.795 544.051 233.654 539.927 233.42 535.187C233.302 532.913 232.143 531.313 230.602 531.313Z" fill="#B8AFA3" />
        <path d="M218.994 531.313C214.65 531.651 213.167 539.81 215.985 541.923C218.583 543.861 222.193 539.252 221.679 534.688C221.444 532.648 220.388 531.328 218.994 531.328" fill="#B8AFA3" />
        <path d="M207.649 531.313C203.408 531.651 201.897 539.81 204.641 541.923C207.165 543.861 210.717 539.252 210.247 534.688C210.041 532.648 209.014 531.328 207.649 531.328" fill="#B8AFA3" />
        <path d="M196.437 531.313C192.299 531.651 190.758 539.81 193.429 541.923C195.865 543.861 199.387 539.252 198.947 534.688C198.756 532.648 197.773 531.328 196.437 531.328" fill="#B8AFA3" />
        <path d="M185.636 531.313C181.6 531.651 180.045 539.81 182.628 541.923C184.99 543.861 188.454 539.252 188.072 534.688C187.896 532.648 186.957 531.328 185.651 531.328" fill="#B8AFA3" />
        <path d="M175.114 531.313C171.181 531.651 169.596 539.81 172.091 541.923C174.38 543.846 177.785 539.252 177.447 534.688C177.3 532.648 176.376 531.328 175.114 531.328" fill="#B8AFA3" />
        <path d="M164.87 531.313C161.025 531.651 159.426 539.81 161.847 541.923C164.063 543.846 167.409 539.252 167.116 534.688C166.984 532.648 166.103 531.328 164.87 531.328" fill="#B8AFA3" />
        <path d="M154.92 531.313C151.193 531.651 149.578 539.81 151.912 541.923C154.054 543.861 157.342 539.252 157.092 534.688C156.975 532.648 156.138 531.328 154.935 531.328" fill="#B8AFA3" />
        <path d="M145.264 531.313C141.654 531.651 140.01 539.81 142.255 541.923C144.295 543.846 147.524 539.238 147.318 534.688C147.23 532.648 146.423 531.328 145.264 531.328" fill="#B8AFA3" />
        <path d="M135.901 531.313C132.129 531.679 130.764 540.485 133.112 542.099C135.328 543.625 138.469 537.99 137.765 533.734C137.515 532.208 136.811 531.313 135.886 531.298" fill="#B8AFA3" />
        <path d="M126.743 531.313C123.089 531.679 121.695 540.485 123.955 542.099C126.083 543.625 129.179 538.005 128.548 533.734C128.328 532.208 127.653 531.313 126.743 531.298" fill="#B8AFA3" />
        <path d="M117.997 531.313C114.475 531.679 113.036 540.485 115.208 542.099C117.292 543.655 120.286 538.107 119.699 533.734C119.494 532.208 118.863 531.313 117.997 531.298" fill="#B8AFA3" />
        <path d="M109.573 531.313C106.168 531.679 104.701 540.485 106.785 542.099C108.736 543.611 111.701 537.99 111.187 533.734C111.011 532.208 110.395 531.313 109.573 531.298" fill="#B8AFA3" />
        <path d="M101.457 531.313C98.1848 531.679 96.6879 540.485 98.6691 542.099C100.533 543.611 103.439 537.99 102.984 533.734C102.822 532.208 102.25 531.313 101.457 531.298" fill="#B8AFA3" />
        <path d="M1372.17 514.04C1369.74 514.406 1371.89 523.124 1374.03 524.723C1375.31 525.677 1376 523.74 1375.5 520.6C1374.97 517.224 1373.34 514.025 1372.17 514.04Z" fill="#B8AFA3" />
        <path d="M1352.07 514.04C1349.45 514.377 1351.08 522.463 1353.53 524.547C1354.99 525.795 1356.02 524.195 1355.73 521.128C1355.39 517.62 1353.56 514.04 1352.07 514.04Z" fill="#B8AFA3" />
        <path d="M1344.69 514.04C1341.95 514.377 1343.56 522.463 1346.09 524.547C1347.6 525.809 1348.7 524.21 1348.43 521.128C1348.13 517.606 1346.25 514.04 1344.69 514.04Z" fill="#B8AFA3" />
        <path d="M1337 514.04C1334.14 514.377 1335.73 522.463 1338.32 524.547C1340 525.883 1341.17 523.96 1340.74 520.6C1340.32 517.224 1338.5 514.04 1336.99 514.04" fill="#B8AFA3" />
        <path d="M1328.99 514.04C1326.01 514.377 1327.55 522.463 1330.25 524.547C1331.97 525.883 1333.22 523.96 1332.82 520.6C1332.42 517.224 1330.56 514.04 1328.99 514.04Z" fill="#B8AFA3" />
        <path d="M1320.55 514.04C1317.45 514.377 1318.97 522.463 1321.74 524.547C1323.63 525.971 1324.97 523.711 1324.38 520.057C1323.87 516.843 1322.08 514.04 1320.55 514.04Z" fill="#B8AFA3" />
        <path d="M1311.91 514.04C1308.69 514.377 1310.18 522.463 1313.02 524.547C1314.97 525.971 1316.38 523.711 1315.81 520.057C1315.31 516.843 1313.48 514.04 1311.91 514.04Z" fill="#B8AFA3" />
        <path d="M1302.96 514.04C1299.87 514.348 1300.94 521.876 1303.72 524.312C1305.57 525.941 1307.18 524.4 1307.04 521.128C1306.87 517.62 1304.82 514.04 1302.96 514.04Z" fill="#B8AFA3" />
        <path d="M1293.7 514.04C1290.51 514.348 1291.54 521.876 1294.38 524.312C1296.41 526.059 1298.14 524.18 1297.82 520.6C1297.51 517.224 1295.5 514.04 1293.71 514.04" fill="#B8AFA3" />
        <path d="M1284.14 514.04C1280.85 514.348 1281.85 521.876 1284.76 524.312C1286.84 526.059 1288.63 524.18 1288.32 520.6C1288.03 517.224 1286.01 514.04 1284.14 514.04Z" fill="#B8AFA3" />
        <path d="M1274.29 514.04C1270.92 514.348 1271.86 521.876 1274.82 524.312C1276.95 526.059 1278.81 524.18 1278.54 520.6C1278.27 517.224 1276.2 514.04 1274.29 514.04Z" fill="#B8AFA3" />
        <path d="M1264.17 514.04C1260.68 514.348 1261.57 521.862 1264.61 524.312C1266.94 526.176 1268.92 523.96 1268.41 520.057C1267.98 516.843 1266 514.04 1264.15 514.04" fill="#B8AFA3" />
        <path d="M1253.63 514.04C1250.05 514.348 1250.92 521.876 1254.01 524.312C1256.39 526.191 1258.44 523.96 1257.95 520.057C1257.53 516.843 1255.52 514.04 1253.63 514.04Z" fill="#B8AFA3" />
        <path d="M1242.93 514.04C1239.26 514.348 1240.09 521.876 1243.23 524.312C1245.65 526.191 1247.78 523.96 1247.31 520.057C1246.91 516.843 1244.87 514.04 1242.93 514.04Z" fill="#B8AFA3" />
        <path d="M1231.97 514.04C1228.39 514.333 1228.87 521.304 1231.85 524.034C1234.24 526.22 1236.64 524.43 1236.45 520.6C1236.27 517.224 1234.1 514.04 1231.97 514.04Z" fill="#B8AFA3" />
        <path d="M1220.73 514.04C1217.05 514.333 1217.49 521.304 1220.52 524.034C1222.96 526.22 1225.42 524.415 1225.25 520.6C1225.1 517.224 1222.89 514.04 1220.71 514.04" fill="#B8AFA3" />
        <path d="M1209.22 514.04C1205.48 514.333 1205.86 521.304 1208.94 524.034C1211.41 526.22 1213.95 524.43 1213.8 520.6C1213.67 517.224 1211.44 514.04 1209.22 514.04Z" fill="#B8AFA3" />
        <path d="M1197.47 514.04C1193.64 514.333 1193.98 521.304 1197.12 524.034C1199.74 526.338 1202.47 524.136 1202.08 520.057C1201.75 516.843 1199.61 514.04 1197.48 514.04" fill="#B8AFA3" />
        <path d="M1185.33 514.04C1181.4 514.333 1181.69 521.304 1184.88 524.034C1187.55 526.338 1190.37 524.136 1189.98 520.057C1189.68 516.843 1187.5 514.04 1185.33 514.04Z" fill="#B8AFA3" />
        <path d="M1173.06 514.04C1169.06 514.333 1169.32 521.304 1172.53 524.034C1175.25 526.338 1178.13 524.136 1177.76 520.057C1177.47 516.843 1175.28 514.04 1173.06 514.04Z" fill="#B8AFA3" />
        <path d="M1160.56 514.04C1156.48 514.333 1156.68 521.304 1159.94 524.034C1162.69 526.338 1165.64 524.136 1165.3 520.057C1165.04 516.843 1162.82 514.04 1160.56 514.04Z" fill="#B8AFA3" />
        <path d="M1147.82 514.04C1143.67 514.333 1143.83 521.304 1147.12 524.034C1149.89 526.338 1152.91 524.136 1152.6 520.057C1152.36 516.843 1150.12 514.04 1147.82 514.04Z" fill="#B8AFA3" />
        <path d="M1134.86 514.04C1130.64 514.333 1130.74 521.304 1134.08 524.034C1136.89 526.338 1139.98 524.136 1139.69 520.057C1139.46 516.843 1137.21 514.04 1134.86 514.04Z" fill="#B8AFA3" />
        <path d="M1121.67 514.04C1117.35 514.333 1117.43 521.304 1120.8 524.034C1123.8 526.47 1127.08 523.828 1126.48 519.499C1126.06 516.49 1123.9 514.04 1121.67 514.04Z" fill="#B8AFA3" />
        <path d="M1108.24 514.04C1103.85 514.333 1103.88 521.304 1107.29 524.034C1110.32 526.47 1113.67 523.828 1113.08 519.499C1112.67 516.49 1110.5 514.04 1108.24 514.04Z" fill="#B8AFA3" />
        <path d="M1094.45 514.04C1090.19 514.318 1089.88 520.717 1093.05 523.725C1096.02 526.528 1099.63 524.444 1099.39 520.057C1099.22 516.843 1096.91 514.04 1094.45 514.04Z" fill="#B8AFA3" />
        <path d="M1080.59 514.04C1076.28 514.318 1075.91 520.717 1079.11 523.725C1082.1 526.528 1085.79 524.444 1085.57 520.057C1085.42 516.843 1083.09 514.04 1080.59 514.04Z" fill="#B8AFA3" />
        <path d="M1066.53 514.04C1062.15 514.318 1061.73 520.717 1064.96 523.725C1067.97 526.528 1071.73 524.444 1071.54 520.057C1071.41 516.843 1069.06 514.04 1066.53 514.04Z" fill="#B8AFA3" />
        <path d="M1052.28 514.04C1047.81 514.318 1047.35 520.717 1050.61 523.725C1053.65 526.528 1057.48 524.444 1057.32 520.057C1057.2 516.843 1054.85 514.04 1052.28 514.04Z" fill="#B8AFA3" />
        <path d="M1037.83 514.04C1033.29 514.318 1032.78 520.717 1036.07 523.725C1039.13 526.528 1043.02 524.444 1042.89 520.057C1042.8 516.843 1040.43 514.04 1037.83 514.04Z" fill="#B8AFA3" />
        <path d="M1023.15 514.04C1018.57 514.318 1018.02 520.717 1021.32 523.725C1024.4 526.543 1028.35 524.444 1028.24 520.057C1028.17 516.843 1025.79 514.04 1023.15 514.04Z" fill="#B8AFA3" />
        <path d="M1008.15 514.04C1003.52 514.318 1002.91 520.717 1006.23 523.725C1009.34 526.543 1013.35 524.459 1013.28 520.057C1013.22 516.843 1010.82 514.04 1008.15 514.04Z" fill="#B8AFA3" />
        <path d="M993.141 514.04C988.43 514.318 987.77 520.717 991.116 523.725C994.432 526.705 998.703 524.18 998.248 519.499C997.954 516.49 995.665 514.04 993.141 514.04Z" fill="#B8AFA3" />
        <path d="M977.908 514.04C973.153 514.318 972.463 520.717 975.824 523.725C979.155 526.705 983.47 524.18 983.044 519.499C982.765 516.49 980.461 514.04 977.908 514.04Z" fill="#B8AFA3" />
        <path d="M962.542 514.04C957.743 514.318 956.995 520.717 960.37 523.725C963.716 526.705 968.104 524.18 967.708 519.499C967.444 516.49 965.14 514.04 962.557 514.04" fill="#B8AFA3" />
        <path d="M947.001 514.04C942.144 514.318 941.351 520.717 944.741 523.725C948.102 526.705 952.548 524.18 952.182 519.499C951.932 516.49 949.613 514.04 947.001 514.04Z" fill="#B8AFA3" />
        <path d="M931.298 514.04C926.397 514.318 925.546 520.717 928.95 523.725C932.326 526.705 936.846 524.18 936.493 519.499C936.273 516.49 933.94 514.04 931.298 514.04Z" fill="#B8AFA3" />
        <path d="M915.434 514.04C910.474 514.318 909.579 520.717 913.013 523.725C916.403 526.705 920.981 524.18 920.659 519.499C920.453 516.49 918.105 514.04 915.449 514.04" fill="#B8AFA3" />
        <path d="M899.218 514.04C894.213 514.318 893.259 520.717 896.708 523.725C900.113 526.705 904.75 524.18 904.442 519.499C904.251 516.49 901.903 514.04 899.218 514.04Z" fill="#B8AFA3" />
        <path d="M883.06 514.04C878.012 514.318 877.014 520.717 880.462 523.725C883.882 526.705 888.563 524.18 888.299 519.499C888.123 516.49 885.775 514.04 883.06 514.04Z" fill="#B8AFA3" />
        <path d="M866.756 514.04C861.648 514.318 860.621 520.717 864.085 523.725C867.519 526.705 872.259 524.18 872.009 519.499C871.848 516.49 869.5 514.04 866.756 514.04Z" fill="#B8AFA3" />
        <path d="M850.304 514.04C845.153 514.318 844.067 520.717 847.545 523.725C850.994 526.705 855.778 524.18 855.558 519.499C855.411 516.49 853.063 514.04 850.29 514.04" fill="#B8AFA3" />
        <path d="M833.721 514.04C828.511 514.318 827.366 520.717 830.859 523.725C834.323 526.705 839.18 524.18 838.989 519.499C838.872 516.49 836.495 514.04 833.721 514.04Z" fill="#B8AFA3" />
        <path d="M817.02 514.04C811.766 514.318 810.578 520.717 814.085 523.725C817.548 526.705 822.465 524.18 822.303 519.499C822.201 516.49 819.823 514.04 817.02 514.04Z" fill="#B8AFA3" />
        <path d="M800.173 514.04C794.904 514.318 793.671 520.717 797.179 523.725C800.642 526.705 805.603 524.18 805.456 519.499C805.368 516.49 803.005 514.04 800.173 514.04Z" fill="#B8AFA3" />
        <path d="M783.046 514.04C777.749 514.318 776.457 520.717 779.95 523.725C783.56 526.837 788.858 523.799 788.286 518.941C787.963 516.197 785.659 514.04 783.046 514.04Z" fill="#B8AFA3" />
        <path d="M765.979 514.04C760.608 514.318 759.272 520.717 762.794 523.725C766.419 526.822 771.776 523.784 771.218 518.941C770.91 516.197 768.606 514.04 765.964 514.04" fill="#B8AFA3" />
        <path d="M748.779 514.04C743.408 514.318 742.028 520.717 745.536 523.725C749.146 526.822 754.547 523.784 754.018 518.941C753.71 516.153 751.465 514.04 748.764 514.04" fill="#B8AFA3" />
        <path d="M731.506 514.04C726.091 514.318 724.667 520.717 728.189 523.725C731.814 526.822 737.259 523.784 736.76 518.941C736.481 516.197 734.162 514.04 731.506 514.04Z" fill="#B8AFA3" />
        <path d="M714.13 514.04C708.686 514.318 707.218 520.717 710.74 523.725C714.365 526.822 719.854 523.784 719.384 518.941C719.12 516.197 716.816 514.04 714.13 514.04Z" fill="#B8AFA3" />
        <path d="M696.71 514.04C691.281 514.318 689.784 520.717 693.276 523.725C696.872 526.837 702.375 523.799 701.935 518.941C701.685 516.197 699.396 514.04 696.71 514.04Z" fill="#B8AFA3" />
        <path d="M405.651 514.04C400.838 514.333 399.077 521.304 402.07 524.034C405.064 526.778 409.804 523.197 409.526 518.398C409.379 515.874 407.75 514.04 405.651 514.04Z" fill="#B8AFA3" />
        <path d="M391.078 514.451C386.661 514.73 385.017 521.187 387.732 523.726C390.462 526.264 394.821 522.948 394.586 518.501C394.469 516.168 392.986 514.465 391.064 514.465" fill="#B8AFA3" />
        <path d="M334.886 514.04C330.16 514.348 328.458 521.862 331.525 524.312C334.475 526.66 338.79 522.566 338.305 517.87C338.071 515.61 336.662 514.04 334.886 514.04Z" fill="#B8AFA3" />
        <path d="M321.414 514.04C316.747 514.348 315.015 521.862 318.039 524.312C320.93 526.646 325.2 522.566 324.76 517.87C324.554 515.61 323.175 514.04 321.414 514.04Z" fill="#B8AFA3" />
        <path d="M308.147 514.04C303.568 514.348 301.837 521.876 304.772 524.312C307.59 526.66 311.801 522.566 311.405 517.87C311.214 515.581 309.908 514.04 308.147 514.04Z" fill="#B8AFA3" />
        <path d="M295.115 514.04C290.625 514.348 288.849 521.876 291.725 524.312C294.484 526.66 298.652 522.566 298.285 517.87C298.109 515.61 296.803 514.04 295.115 514.04Z" fill="#B8AFA3" />
        <path d="M282.333 514.04C277.916 514.348 276.125 521.876 278.928 524.312C281.614 526.66 285.738 522.566 285.415 517.87C285.268 515.61 283.991 514.04 282.333 514.04Z" fill="#B8AFA3" />
        <path d="M269.639 514.04C265.309 514.348 263.49 521.876 266.219 524.312C268.832 526.646 272.911 522.566 272.632 517.87C272.5 515.581 271.297 514.04 269.639 514.04Z" fill="#B8AFA3" />
        <path d="M257.326 514.04C253.07 514.348 251.25 521.876 253.907 524.312C256.46 526.66 260.481 522.566 260.246 517.87C260.129 515.61 258.94 514.04 257.341 514.04" fill="#B8AFA3" />
        <path d="M245.277 514.04C241.109 514.348 239.26 521.876 241.843 524.312C244.323 526.66 248.3 522.566 248.095 517.87C247.992 515.61 246.833 514.04 245.277 514.04Z" fill="#B8AFA3" />
        <path d="M233.478 514.04C229.398 514.348 227.535 521.876 230.044 524.312C232.451 526.66 236.369 522.566 236.208 517.87C236.134 515.61 235.004 514.04 233.478 514.04Z" fill="#B8AFA3" />
        <path d="M221.929 514.04C217.614 514.377 215.985 522.463 218.759 524.547C221.4 526.543 225.26 521.392 224.482 516.901C224.174 515.14 223.205 514.04 221.929 514.04Z" fill="#B8AFA3" />
        <path d="M210.643 514.04C206.417 514.377 204.773 522.463 207.459 524.547C210.027 526.543 213.828 521.392 213.109 516.901C212.83 515.14 211.876 514.04 210.643 514.04Z" fill="#B8AFA3" />
        <path d="M199.504 514.04C195.381 514.377 193.708 522.463 196.305 524.547C198.8 526.543 202.542 521.392 201.882 516.901C201.618 515.14 200.708 514.04 199.504 514.04Z" fill="#B8AFA3" />
        <path d="M188.762 514.04C184.741 514.377 183.039 522.463 185.563 524.547C187.881 526.455 191.404 521.906 191.11 517.371C190.978 515.346 190.053 514.04 188.762 514.04Z" fill="#B8AFA3" />
        <path d="M178.313 514.04C174.395 514.377 172.663 522.463 175.114 524.547C177.359 526.455 180.823 521.906 180.573 517.371C180.456 515.346 179.575 514.04 178.313 514.04Z" fill="#B8AFA3" />
        <path d="M168.128 514.04C164.298 514.377 162.552 522.463 164.914 524.547C167.072 526.455 170.491 521.906 170.286 517.371C170.197 515.346 169.346 514.04 168.128 514.04Z" fill="#B8AFA3" />
        <path d="M158.222 514.04C154.509 514.377 152.734 522.463 155.008 524.547C157.092 526.47 160.453 521.906 160.306 517.371C160.233 515.346 159.411 514.04 158.222 514.04Z" fill="#B8AFA3" />
        <path d="M148.624 514.04C145.029 514.377 143.224 522.463 145.411 524.547C147.406 526.455 150.708 521.891 150.606 517.371C150.562 515.346 149.784 514.04 148.624 514.04Z" fill="#B8AFA3" />
        <path d="M139.32 514.04C135.563 514.406 134.022 523.124 136.326 524.723C138.66 526.352 141.976 520.247 141.052 516.021C140.773 514.759 140.142 514.04 139.32 514.04Z" fill="#B8AFA3" />
        <path d="M130.221 514.04C126.582 514.406 125.012 523.124 127.228 524.723C129.326 526.235 132.511 520.658 131.968 516.446C131.777 514.935 131.131 514.04 130.221 514.04Z" fill="#B8AFA3" />
        <path d="M121.519 514.04C117.997 514.406 116.397 523.124 118.525 524.723C120.565 526.264 123.661 520.776 123.177 516.446C123.016 514.935 122.399 514.04 121.534 514.04" fill="#B8AFA3" />
        <path d="M113.139 514.04C109.749 514.406 108.105 523.124 110.131 524.723C112.038 526.235 115.106 520.658 114.695 516.446C114.548 514.935 113.961 514.04 113.139 514.04Z" fill="#B8AFA3" />
        <path d="M1347.99 496.943C1345.47 497.266 1347.26 505.352 1349.68 507.348C1351.08 508.507 1352.04 507.201 1351.84 504.471C1351.58 500.876 1349.56 496.943 1347.99 496.943Z" fill="#B8AFA3" />
        <path d="M1340.66 496.943C1338.03 497.266 1339.79 505.352 1342.27 507.348C1343.81 508.581 1344.87 507.01 1344.53 503.972C1344.15 500.48 1342.18 496.943 1340.66 496.943Z" fill="#B8AFA3" />
        <path d="M1333.01 496.943C1330.27 497.266 1332 505.352 1334.57 507.348C1336.15 508.581 1337.27 506.996 1336.96 503.972C1336.61 500.48 1334.61 496.943 1333.01 496.943Z" fill="#B8AFA3" />
        <path d="M1325.06 496.943C1322.2 497.266 1323.9 505.352 1326.54 507.348C1328.29 508.668 1329.47 506.761 1329 503.444C1328.53 500.098 1326.61 496.928 1325.06 496.943Z" fill="#B8AFA3" />
        <path d="M1316.68 496.943C1313.7 497.266 1315.37 505.352 1318.09 507.348C1319.88 508.668 1321.15 506.775 1320.7 503.444C1320.24 500.098 1318.29 496.928 1316.68 496.943Z" fill="#B8AFA3" />
        <path d="M1308.08 496.943C1305.11 497.251 1306.37 504.706 1309.13 507.128C1310.97 508.742 1312.47 507.201 1312.23 503.972C1311.97 500.494 1309.87 496.943 1308.08 496.943Z" fill="#B8AFA3" />
        <path d="M1299.18 496.943C1296.12 497.251 1297.33 504.706 1300.15 507.128C1302.03 508.742 1303.6 507.201 1303.38 503.972C1303.15 500.494 1301.02 496.943 1299.17 496.943" fill="#B8AFA3" />
        <path d="M1289.98 496.943C1286.81 497.251 1287.99 504.706 1290.88 507.128C1292.93 508.845 1294.62 506.996 1294.21 503.459C1293.83 500.113 1291.77 496.943 1289.98 496.958" fill="#B8AFA3" />
        <path d="M1280.49 496.943C1277.21 497.251 1278.34 504.706 1281.31 507.128C1283.41 508.845 1285.17 506.996 1284.79 503.459C1284.42 500.113 1282.34 496.943 1280.5 496.958" fill="#B8AFA3" />
        <path d="M1270.71 496.943C1267.34 497.251 1268.44 504.706 1271.45 507.128C1273.59 508.845 1275.42 506.996 1275.06 503.459C1274.72 500.113 1272.61 496.943 1270.71 496.958" fill="#B8AFA3" />
        <path d="M1260.65 496.943C1257.15 497.251 1258.2 504.706 1261.29 507.128C1263.49 508.845 1265.39 506.996 1265.05 503.459C1264.74 500.113 1262.6 496.943 1260.65 496.958" fill="#B8AFA3" />
        <path d="M1250.17 496.943C1246.6 497.251 1247.6 504.706 1250.74 507.128C1253.13 508.977 1255.14 506.761 1254.57 502.916C1254.1 499.731 1252.05 496.943 1250.17 496.958" fill="#B8AFA3" />
        <path d="M1239.54 496.943C1236.06 497.236 1236.72 504.149 1239.7 506.849C1241.92 508.874 1244.14 507.407 1244.08 503.972C1244.03 500.494 1241.73 496.943 1239.53 496.943" fill="#B8AFA3" />
        <path d="M1228.65 496.943C1225.09 497.236 1225.7 504.134 1228.73 506.849C1231.15 509.006 1233.5 507.23 1233.23 503.444C1233 500.098 1230.77 496.943 1228.65 496.943Z" fill="#B8AFA3" />
        <path d="M1217.49 496.943C1213.82 497.236 1214.37 504.134 1217.47 506.849C1219.92 509.006 1222.36 507.23 1222.11 503.444C1221.89 500.098 1219.64 496.943 1217.49 496.943Z" fill="#B8AFA3" />
        <path d="M1206.05 496.943C1202.31 497.236 1202.84 504.148 1205.95 506.849C1208.45 509.006 1210.94 507.23 1210.72 503.444C1210.53 500.098 1208.25 496.928 1206.05 496.943Z" fill="#B8AFA3" />
        <path d="M1194.37 496.943C1190.56 497.236 1191.01 504.149 1194.18 506.849C1196.7 509.006 1199.27 507.23 1199.08 503.444C1198.92 500.098 1196.63 496.943 1194.37 496.943Z" fill="#B8AFA3" />
        <path d="M1182.32 496.943C1178.4 497.236 1178.82 504.134 1182.04 506.849C1184.74 509.123 1187.5 506.937 1187.05 502.901C1186.7 499.716 1184.49 496.928 1182.34 496.943" fill="#B8AFA3" />
        <path d="M1170.13 496.943C1166.14 497.236 1166.5 504.148 1169.76 506.849C1172.49 509.123 1175.32 506.951 1174.88 502.901C1174.54 499.716 1172.31 496.928 1170.11 496.943" fill="#B8AFA3" />
        <path d="M1157.71 496.943C1153.65 497.236 1153.97 504.148 1157.26 506.849C1160.02 509.123 1162.92 506.951 1162.51 502.901C1162.19 499.716 1159.94 496.928 1157.7 496.943" fill="#B8AFA3" />
        <path d="M1145.06 496.943C1140.92 497.236 1141.19 504.148 1144.52 506.849C1147.31 509.123 1150.29 506.951 1149.9 502.901C1149.61 499.716 1147.34 496.928 1145.06 496.943Z" fill="#B8AFA3" />
        <path d="M1132.18 496.943C1127.95 497.236 1128.17 504.148 1131.55 506.849C1134.38 509.123 1137.42 506.951 1137.06 502.901C1136.78 499.716 1134.5 496.928 1132.18 496.943Z" fill="#B8AFA3" />
        <path d="M1119.07 496.943C1114.98 497.222 1114.84 503.562 1118 506.541C1120.71 509.109 1124.03 507.407 1124.02 503.444C1124 500.098 1121.6 496.943 1119.07 496.943Z" fill="#B8AFA3" />
        <path d="M1105.73 496.943C1101.56 497.222 1101.39 503.562 1104.57 506.541C1107.32 509.109 1110.71 507.407 1110.72 503.444C1110.72 500.098 1108.31 496.943 1105.75 496.943" fill="#B8AFA3" />
        <path d="M1092.02 496.943C1087.78 497.222 1087.56 503.561 1090.76 506.54C1093.74 509.314 1097.31 507.245 1097.01 502.901C1096.79 499.716 1094.46 496.928 1092.02 496.943Z" fill="#B8AFA3" />
        <path d="M1078.26 496.943C1073.96 497.222 1073.68 503.561 1076.91 506.54C1079.92 509.314 1083.54 507.245 1083.28 502.901C1083.09 499.716 1080.74 496.928 1078.26 496.943Z" fill="#B8AFA3" />
        <path d="M1064.3 496.943C1059.93 497.222 1059.61 503.561 1062.86 506.54C1065.89 509.314 1069.6 507.245 1069.35 502.901C1069.17 499.716 1066.81 496.928 1064.3 496.943Z" fill="#B8AFA3" />
        <path d="M1050.13 496.943C1045.68 497.222 1045.28 503.561 1048.58 506.54C1051.64 509.314 1055.42 507.245 1055.22 502.901C1055.07 499.716 1052.69 496.928 1050.14 496.943" fill="#B8AFA3" />
        <path d="M1035.77 496.943C1031.25 497.222 1030.81 503.561 1034.13 506.54C1037.21 509.314 1041.06 507.245 1040.88 502.901C1040.75 499.716 1038.36 496.928 1035.77 496.943Z" fill="#B8AFA3" />
        <path d="M1021.19 496.943C1016.62 497.222 1016.15 503.561 1019.47 506.54C1022.57 509.314 1026.47 507.245 1026.31 502.901C1026.19 499.716 1023.8 496.928 1021.19 496.943Z" fill="#B8AFA3" />
        <path d="M1006.29 496.943C1001.67 497.222 1001.14 503.561 1004.47 506.54C1007.58 509.329 1011.56 507.245 1011.43 502.901C1011.34 499.716 1008.93 496.928 1006.28 496.943" fill="#B8AFA3" />
        <path d="M991.365 496.943C986.669 497.222 986.082 503.561 989.457 506.54C992.598 509.314 996.634 507.245 996.546 502.901C996.472 499.716 994.065 496.928 991.38 496.943" fill="#B8AFA3" />
        <path d="M976.249 496.943C971.524 497.221 970.878 503.561 974.268 506.54C977.6 509.476 981.87 506.981 981.415 502.343C981.107 499.364 978.803 496.928 976.264 496.928" fill="#B8AFA3" />
        <path d="M960.972 496.943C956.188 497.221 955.498 503.561 958.903 506.54C962.249 509.476 966.593 506.981 966.153 502.343C965.874 499.364 963.555 496.928 960.987 496.928" fill="#B8AFA3" />
        <path d="M945.534 496.943C940.691 497.221 939.957 503.561 943.362 506.54C946.737 509.476 951.125 506.981 950.714 502.343C950.45 499.364 948.117 496.928 945.519 496.928" fill="#B8AFA3" />
        <path d="M929.933 496.943C925.047 497.221 924.254 503.561 927.673 506.54C931.063 509.476 935.525 506.981 935.129 502.343C934.879 499.364 932.546 496.928 929.919 496.928" fill="#B8AFA3" />
        <path d="M914.172 496.943C909.226 497.221 908.39 503.561 911.824 506.54C915.214 509.476 919.749 506.966 919.382 502.343C919.147 499.364 916.814 496.928 914.157 496.928" fill="#B8AFA3" />
        <path d="M898.073 496.943C893.083 497.221 892.188 503.561 895.637 506.54C899.042 509.476 903.635 506.981 903.297 502.343C903.092 499.364 900.744 496.928 898.058 496.928" fill="#B8AFA3" />
        <path d="M882.003 496.943C876.97 497.221 876.016 503.561 879.479 506.54C882.898 509.476 887.536 506.966 887.242 502.343C887.052 499.364 884.704 496.928 882.003 496.928" fill="#B8AFA3" />
        <path d="M865.802 496.943C860.724 497.221 859.726 503.561 863.189 506.54C866.623 509.476 871.32 506.981 871.041 502.343C870.865 499.364 868.517 496.928 865.787 496.928" fill="#B8AFA3" />
        <path d="M849.468 496.943C844.346 497.221 843.289 503.561 846.767 506.54C850.202 509.476 854.956 506.966 854.722 502.343C854.56 499.364 852.212 496.928 849.468 496.928" fill="#B8AFA3" />
        <path d="M832.987 496.943C827.792 497.221 826.677 503.561 830.184 506.54C833.633 509.476 838.461 506.966 838.241 502.343C838.109 499.364 835.746 496.928 832.987 496.928" fill="#B8AFA3" />
        <path d="M816.389 496.943C811.15 497.221 809.991 503.561 813.498 506.54C816.961 509.476 821.834 506.966 821.643 502.343C821.526 499.364 819.163 496.928 816.374 496.928" fill="#B8AFA3" />
        <path d="M799.645 496.943C794.391 497.222 793.187 503.562 796.695 506.541C800.276 509.593 805.471 506.585 804.869 501.8C804.517 499.027 802.271 496.943 799.645 496.943Z" fill="#B8AFA3" />
        <path d="M782.635 496.943C777.352 497.222 776.09 503.562 779.583 506.541C783.178 509.608 788.447 506.585 787.86 501.8C787.522 499.085 785.233 496.943 782.635 496.943Z" fill="#B8AFA3" />
        <path d="M765.685 496.943C760.329 497.222 759.023 503.562 762.545 506.541C766.155 509.593 771.467 506.57 770.91 501.8C770.587 499.085 768.298 496.943 765.685 496.943Z" fill="#B8AFA3" />
        <path d="M748.603 496.943C743.246 497.222 741.882 503.562 745.389 506.541C748.985 509.593 754.341 506.585 753.813 501.8C753.505 499.027 751.259 496.943 748.588 496.943" fill="#B8AFA3" />
        <path d="M731.433 496.943C726.032 497.222 724.623 503.562 728.145 506.541C731.741 509.593 737.156 506.585 736.657 501.8C736.378 499.085 734.074 496.943 731.433 496.943Z" fill="#B8AFA3" />
        <path d="M696.857 496.943C691.442 497.222 689.945 503.562 693.423 506.541C697.004 509.608 702.478 506.585 702.038 501.8C701.788 499.085 699.514 496.943 696.857 496.943Z" fill="#B8AFA3" />
        <path d="M679.437 496.943C674.066 497.222 672.525 503.562 675.959 506.541C679.496 509.608 684.941 506.585 684.545 501.8C684.31 499.085 682.064 496.943 679.437 496.943Z" fill="#B8AFA3" />
        <path d="M393.221 497.163C388.657 497.442 386.867 504.09 389.655 506.702C392.443 509.314 396.978 505.895 396.802 501.316C396.699 498.909 395.202 497.163 393.221 497.163Z" fill="#B8AFA3" />
        <path d="M337.263 497.765C333.242 498.029 331.716 504.369 334.299 506.438C336.764 508.404 340.448 504.941 340.11 500.993C339.949 499.1 338.775 497.765 337.263 497.765Z" fill="#B8AFA3" />
        <path d="M323.997 496.943C319.33 497.251 317.51 504.706 320.489 507.128C323.322 509.432 327.622 505.367 327.255 500.744C327.079 498.513 325.728 496.943 323.982 496.943" fill="#B8AFA3" />
        <path d="M310.818 496.943C306.254 497.251 304.405 504.706 307.311 507.128C310.07 509.432 314.326 505.381 314.003 500.744C313.841 498.469 312.564 496.943 310.818 496.943Z" fill="#B8AFA3" />
        <path d="M297.874 496.943C293.384 497.251 291.52 504.706 294.352 507.128C297.052 509.432 301.264 505.381 300.971 500.744C300.839 498.513 299.562 496.943 297.874 496.943Z" fill="#B8AFA3" />
        <path d="M285.165 496.943C280.748 497.251 278.855 504.706 281.614 507.128C284.241 509.432 288.409 505.381 288.159 500.744C288.042 498.513 286.809 496.943 285.151 496.943" fill="#B8AFA3" />
        <path d="M272.544 496.943C268.215 497.251 266.293 504.706 268.978 507.128C271.532 509.432 275.656 505.367 275.465 500.744C275.377 498.469 274.203 496.943 272.544 496.943Z" fill="#B8AFA3" />
        <path d="M260.32 496.943C256.064 497.251 254.127 504.706 256.754 507.128C259.248 509.432 263.314 505.381 263.152 500.744C263.079 498.513 261.905 496.943 260.32 496.943Z" fill="#B8AFA3" />
        <path d="M248.345 496.943C244.177 497.251 242.225 504.706 244.764 507.128C247.185 509.432 251.206 505.381 251.089 500.744C251.03 498.513 249.9 496.943 248.345 496.943Z" fill="#B8AFA3" />
        <path d="M236.619 496.943C232.539 497.251 230.558 504.706 233.023 507.128C235.371 509.432 239.334 505.381 239.26 500.744C239.231 498.513 238.13 496.943 236.619 496.943Z" fill="#B8AFA3" />
        <path d="M225.157 496.943C220.828 497.28 219.082 505.279 221.811 507.348C224.409 509.3 228.327 504.207 227.637 499.775C227.373 498.029 226.419 496.943 225.157 496.943Z" fill="#B8AFA3" />
        <path d="M213.945 496.943C209.719 497.28 207.928 505.279 210.584 507.348C213.094 509.3 216.968 504.207 216.337 499.775C216.088 498.029 215.163 496.943 213.945 496.943Z" fill="#B8AFA3" />
        <path d="M202.88 496.943C198.756 497.28 196.936 505.279 199.504 507.348C201.941 509.3 205.756 504.207 205.184 499.775C204.964 498.029 204.069 496.943 202.865 496.943" fill="#B8AFA3" />
        <path d="M192.211 496.943C188.19 497.28 186.341 505.279 188.835 507.348C191.198 509.3 194.97 504.207 194.441 499.775C194.236 498.029 193.385 496.943 192.211 496.943Z" fill="#B8AFA3" />
        <path d="M181.82 496.943C177.902 497.28 176.024 505.279 178.43 507.348C180.705 509.3 184.433 504.207 183.963 499.775C183.787 498.029 182.965 496.943 181.82 496.943Z" fill="#B8AFA3" />
        <path d="M171.709 496.943C168.026 497.266 166.059 505.352 168.304 507.348C170.506 509.3 174.175 504.193 173.764 499.775C173.602 498.029 172.81 496.943 171.709 496.943Z" fill="#B8AFA3" />
        <path d="M161.862 496.943C158.149 497.28 156.226 505.279 158.457 507.348C160.497 509.226 163.931 504.721 163.858 500.245C163.828 498.234 163.036 496.943 161.862 496.943Z" fill="#B8AFA3" />
        <path d="M152.323 496.943C148.713 497.28 146.775 505.279 148.918 507.348C150.855 509.212 154.231 504.706 154.216 500.245C154.216 498.234 153.467 496.943 152.323 496.943Z" fill="#B8AFA3" />
        <path d="M143.077 496.943C139.306 497.31 137.603 505.939 139.878 507.539C142.167 509.138 145.587 503.092 144.765 498.909C144.515 497.662 143.899 496.943 143.077 496.943Z" fill="#B8AFA3" />
        <path d="M134.037 496.943C130.398 497.31 128.651 505.939 130.838 507.539C133.039 509.138 136.414 503.092 135.666 498.909C135.446 497.662 134.844 496.943 134.052 496.943" fill="#B8AFA3" />
        <path d="M125.393 496.943C121.871 497.31 120.081 505.939 122.179 507.539C124.278 509.124 127.594 503.077 126.919 498.909C126.714 497.662 126.156 496.943 125.393 496.943Z" fill="#B8AFA3" />
        <path d="M117.072 496.943C113.667 497.31 111.848 505.939 113.858 507.539C115.854 509.124 119.127 503.077 118.525 498.909C118.349 497.662 117.821 496.943 117.072 496.943Z" fill="#B8AFA3" />
        <path d="M1357.31 480.829C1355.27 481.122 1357.37 488.475 1359.25 489.752C1360.41 490.544 1360.97 488.93 1360.44 486.318C1359.88 483.485 1358.36 480.814 1357.31 480.829Z" fill="#B8AFA3" />
        <path d="M1343.53 480.022C1341.04 480.345 1343.02 488.372 1345.44 490.354C1346.85 491.498 1347.79 490.221 1347.53 487.492C1347.19 483.999 1345.06 480.022 1343.53 480.022Z" fill="#B8AFA3" />
        <path d="M1336.25 480.022C1333.55 480.36 1335.51 488.299 1338.1 490.354C1339.66 491.586 1340.67 490.016 1340.28 486.993C1339.82 483.529 1337.8 480.007 1336.25 480.022Z" fill="#B8AFA3" />
        <path d="M1328.67 480.022C1325.85 480.36 1327.77 488.299 1330.44 490.354C1332.04 491.586 1333.11 490.016 1332.75 486.993C1332.32 483.529 1330.27 480.022 1328.67 480.022Z" fill="#B8AFA3" />
        <path d="M1320.76 480.022C1317.82 480.36 1319.71 488.299 1322.46 490.354C1324.22 491.66 1325.36 489.781 1324.82 486.479C1324.28 483.148 1322.3 480.022 1320.76 480.022Z" fill="#B8AFA3" />
        <path d="M1312.44 480.022C1309.38 480.36 1311.23 488.299 1314.06 490.354C1315.87 491.66 1317.1 489.781 1316.57 486.479C1316.05 483.148 1314.04 480.022 1312.44 480.022Z" fill="#B8AFA3" />
        <path d="M1303.91 480.022C1300.99 480.33 1302.4 487.712 1305.17 490.119C1307.02 491.718 1308.49 490.207 1308.18 486.993C1307.84 483.529 1305.69 480.022 1303.91 480.022Z" fill="#B8AFA3" />
        <path d="M1295.07 480.022C1292.05 480.33 1293.42 487.712 1296.26 490.119C1298.16 491.718 1299.7 490.207 1299.4 486.993C1299.1 483.529 1296.91 480.022 1295.07 480.022Z" fill="#B8AFA3" />
        <path d="M1285.95 480.022C1282.82 480.33 1284.14 487.712 1287.05 490.119C1288.98 491.718 1290.58 490.207 1290.33 486.993C1290.06 483.529 1287.84 480.022 1285.95 480.022Z" fill="#B8AFA3" />
        <path d="M1276.52 480.022C1273.3 480.33 1274.57 487.712 1277.55 490.119C1279.68 491.836 1281.38 490.001 1280.93 486.479C1280.5 483.163 1278.36 480.022 1276.52 480.022Z" fill="#B8AFA3" />
        <path d="M1266.81 480.022C1263.48 480.33 1264.71 487.712 1267.75 490.119C1269.92 491.836 1271.68 490.001 1271.27 486.479C1270.87 483.163 1268.7 480.022 1266.81 480.022Z" fill="#B8AFA3" />
        <path d="M1256.82 480.022C1253.37 480.33 1254.56 487.712 1257.67 490.119C1259.88 491.836 1261.73 489.987 1261.34 486.479C1260.95 483.163 1258.77 480.022 1256.83 480.022" fill="#B8AFA3" />
        <path d="M1246.41 480.022C1243.06 480.315 1243.9 487.154 1246.85 489.855C1249.05 491.865 1251.15 490.412 1251 486.993C1250.86 483.529 1248.54 480.022 1246.4 480.022" fill="#B8AFA3" />
        <path d="M1235.86 480.022C1232.42 480.315 1233.22 487.154 1236.21 489.855C1238.46 491.865 1240.61 490.412 1240.51 486.993C1240.39 483.529 1238.05 480.022 1235.86 480.022Z" fill="#B8AFA3" />
        <path d="M1225.04 480.022C1221.52 480.315 1222.25 487.154 1225.31 489.855C1227.74 492.012 1230.05 490.236 1229.71 486.479C1229.42 483.163 1227.14 480.022 1225.04 480.022Z" fill="#B8AFA3" />
        <path d="M1213.96 480.022C1210.34 480.315 1211.01 487.154 1214.12 489.855C1216.6 491.997 1218.98 490.236 1218.67 486.479C1218.4 483.163 1216.11 480.022 1213.96 480.022Z" fill="#B8AFA3" />
        <path d="M1202.6 480.022C1198.91 480.315 1199.54 487.154 1202.69 489.855C1205.2 492.012 1207.65 490.236 1207.37 486.479C1207.12 483.163 1204.81 480.022 1202.62 480.022" fill="#B8AFA3" />
        <path d="M1191.01 480.022C1187.22 480.315 1187.81 487.154 1191.01 489.855C1193.55 491.997 1196.07 490.236 1195.82 486.479C1195.6 483.163 1193.27 480.022 1191.03 480.022" fill="#B8AFA3" />
        <path d="M1179.05 480.022C1175.16 480.315 1175.69 487.154 1178.93 489.855C1181.52 491.997 1184.11 490.236 1183.89 486.479C1183.7 483.163 1181.34 480.022 1179.05 480.022Z" fill="#B8AFA3" />
        <path d="M1166.94 480.022C1163 480.315 1163.48 487.154 1166.75 489.855C1169.5 492.115 1172.27 489.957 1171.79 485.951C1171.4 482.796 1169.14 480.022 1166.96 480.022" fill="#B8AFA3" />
        <path d="M1154.62 480.022C1150.59 480.315 1151.02 487.154 1154.34 489.855C1157.11 492.115 1159.96 489.957 1159.49 485.951C1159.12 482.796 1156.85 480.022 1154.62 480.022Z" fill="#B8AFA3" />
        <path d="M1142.05 480.022C1137.96 480.315 1138.33 487.154 1141.67 489.855C1144.47 492.115 1147.4 489.957 1146.95 485.951C1146.62 482.796 1144.31 480.022 1142.04 480.022" fill="#B8AFA3" />
        <path d="M1129.26 480.022C1125.07 480.315 1125.4 487.154 1128.79 489.855C1131.63 492.115 1134.61 489.957 1134.2 485.951C1133.88 482.796 1131.56 480.022 1129.26 480.022Z" fill="#B8AFA3" />
        <path d="M1116.24 480.022C1112.17 480.301 1112.14 486.582 1115.31 489.546C1118.04 492.1 1121.32 490.412 1121.24 486.479C1121.18 483.163 1118.75 480.022 1116.24 480.022Z" fill="#B8AFA3" />
        <path d="M1103 480.022C1098.88 480.301 1098.79 486.582 1101.99 489.546C1104.75 492.1 1108.09 490.412 1108.05 486.479C1108.02 483.163 1105.57 480.022 1103.02 480.022" fill="#B8AFA3" />
        <path d="M1089.38 480.022C1085.19 480.301 1085.05 486.582 1088.27 489.546C1091.06 492.1 1094.46 490.412 1094.45 486.479C1094.45 483.163 1091.98 480.022 1089.38 480.022Z" fill="#B8AFA3" />
        <path d="M1075.72 480.022C1071.45 480.301 1071.26 486.582 1074.5 489.546C1077.53 492.305 1081.11 490.251 1080.78 485.951C1080.55 482.796 1078.17 480.022 1075.72 480.022Z" fill="#B8AFA3" />
        <path d="M1061.85 480.022C1057.52 480.301 1057.27 486.582 1060.55 489.546C1063.58 492.305 1067.24 490.251 1066.94 485.951C1066.72 482.796 1064.35 480.022 1061.85 480.022Z" fill="#B8AFA3" />
        <path d="M1047.79 480.022C1043.38 480.301 1043.08 486.582 1046.37 489.546C1049.44 492.305 1053.16 490.251 1052.91 485.951C1052.72 482.796 1050.33 480.022 1047.79 480.022Z" fill="#B8AFA3" />
        <path d="M1033.53 480.022C1029.05 480.301 1028.68 486.582 1032.02 489.546C1035.11 492.305 1038.9 490.251 1038.68 485.951C1038.52 482.796 1036.11 480.022 1033.54 480.022" fill="#B8AFA3" />
        <path d="M1019.06 480.022C1014.54 480.301 1014.13 486.582 1017.46 489.546C1020.57 492.305 1024.41 490.251 1024.21 485.951C1024.06 482.796 1021.66 480.022 1019.04 480.022" fill="#B8AFA3" />
        <path d="M1004.26 480.022C999.686 480.301 999.217 486.582 1002.56 489.546C1005.69 492.305 1009.61 490.265 1009.45 485.951C1009.33 482.796 1006.91 480.022 1004.26 480.022Z" fill="#B8AFA3" />
        <path d="M989.443 480.022C984.791 480.301 984.262 486.582 987.638 489.546C990.778 492.305 994.77 490.251 994.638 485.951C994.535 482.796 992.114 480.022 989.443 480.022Z" fill="#B8AFA3" />
        <path d="M974.43 480.022C969.733 480.301 969.161 486.582 972.551 489.546C975.706 492.305 979.742 490.251 979.639 485.951C979.566 482.796 977.13 480.022 974.43 480.022Z" fill="#B8AFA3" />
        <path d="M959.27 480.022C954.53 480.301 953.899 486.582 957.289 489.546C960.649 492.467 964.935 489.987 964.45 485.408C964.142 482.443 961.809 480.022 959.27 480.037" fill="#B8AFA3" />
        <path d="M943.934 480.022C939.135 480.301 938.46 486.582 941.865 489.546C945.24 492.467 949.584 489.987 949.144 485.408C948.85 482.443 946.517 480.022 943.949 480.037" fill="#B8AFA3" />
        <path d="M928.437 480.022C923.594 480.301 922.845 486.582 926.265 489.546C929.64 492.467 934.057 489.987 933.646 485.408C933.382 482.443 931.034 480.022 928.437 480.037" fill="#B8AFA3" />
        <path d="M912.793 480.022C907.891 480.301 907.098 486.582 910.532 489.546C913.922 492.467 918.399 489.987 918.017 485.408C917.768 482.443 915.419 480.037 912.793 480.037" fill="#B8AFA3" />
        <path d="M896.811 480.022C891.865 480.301 891.014 486.582 894.463 489.546C897.868 492.467 902.402 489.987 902.05 485.408C901.815 482.443 899.467 480.037 896.811 480.037" fill="#B8AFA3" />
        <path d="M880.859 480.022C875.869 480.301 874.959 486.582 878.408 489.546C881.813 492.467 886.421 489.987 886.098 485.408C885.892 482.443 883.544 480.037 880.859 480.037" fill="#B8AFA3" />
        <path d="M864.774 480.022C859.741 480.301 858.772 486.582 862.235 489.546C865.655 492.467 870.307 489.987 870.013 485.408C869.823 482.443 867.475 480.037 864.774 480.037" fill="#B8AFA3" />
        <path d="M848.543 480.022C843.465 480.301 842.453 486.582 845.916 489.546C849.336 492.467 854.047 489.987 853.797 485.408C853.636 482.443 851.273 480.037 848.558 480.037" fill="#B8AFA3" />
        <path d="M832.195 480.022C827.044 480.301 825.972 486.582 829.45 489.546C832.884 492.467 837.669 489.987 837.434 485.408C837.287 482.443 834.939 480.037 832.18 480.037" fill="#B8AFA3" />
        <path d="M815.714 480.022C810.519 480.301 809.389 486.582 812.882 489.546C816.33 492.467 821.159 489.987 820.953 485.408C820.821 482.443 818.473 480.037 815.714 480.037" fill="#B8AFA3" />
        <path d="M799.087 480.022C793.877 480.301 792.703 486.582 796.181 489.546C799.615 492.467 804.487 489.987 804.326 485.408C804.223 482.443 801.875 480.022 799.087 480.037" fill="#B8AFA3" />
        <path d="M782.195 480.022C776.956 480.301 775.709 486.582 779.187 489.546C782.768 492.599 787.977 489.605 787.39 484.85C787.053 482.106 784.808 480.022 782.195 480.022Z" fill="#B8AFA3" />
        <path d="M765.362 480.227C760.27 480.491 759.023 486.538 762.383 489.385C765.832 492.305 770.895 489.429 770.367 484.879C770.059 482.238 767.901 480.242 765.377 480.242" fill="#B8AFA3" />
        <path d="M748.398 480.022C743.085 480.301 741.735 486.582 745.228 489.546C748.794 492.584 754.121 489.59 753.593 484.85C753.285 482.091 751.054 480.022 748.398 480.022Z" fill="#B8AFA3" />
        <path d="M731.359 480.022C726.003 480.301 724.609 486.582 728.101 489.546C731.682 492.584 737.053 489.605 736.554 484.85C736.261 482.106 734.03 480.022 731.374 480.022" fill="#B8AFA3" />
        <path d="M714.218 480.022C708.832 480.301 707.38 486.582 710.858 489.546C714.439 492.584 719.854 489.605 719.384 484.85C719.12 482.106 716.889 480.022 714.204 480.022" fill="#B8AFA3" />
        <path d="M697.033 480.022C691.677 480.301 690.18 486.582 693.614 489.546C697.166 492.599 702.595 489.605 702.17 484.85C701.92 482.15 699.66 480.022 697.033 480.022Z" fill="#B8AFA3" />
        <path d="M662.751 480.022C657.454 480.301 655.883 486.582 659.244 489.546C662.693 492.599 668.108 489.605 667.756 484.85C667.55 482.15 665.364 480.022 662.751 480.022Z" fill="#B8AFA3" />
        <path d="M381.437 480.022C376.77 480.315 374.818 487.154 377.606 489.855C380.38 492.54 385.076 489.018 384.988 484.322C384.944 481.842 383.447 480.037 381.437 480.037" fill="#B8AFA3" />
        <path d="M367.334 480.022C362.755 480.315 360.774 487.154 363.489 489.855C366.204 492.54 370.841 489.018 370.797 484.322C370.768 481.842 369.315 480.037 367.334 480.037" fill="#B8AFA3" />
        <path d="M353.612 480.022C348.857 480.33 347.008 487.712 350.046 490.119C352.951 492.423 357.354 488.402 356.973 483.794C356.782 481.578 355.402 480.022 353.612 480.022Z" fill="#B8AFA3" />
        <path d="M340.096 480.022C335.414 480.33 333.521 487.712 336.5 490.119C339.347 492.423 343.706 488.402 343.368 483.794C343.207 481.578 341.857 480.022 340.096 480.022Z" fill="#B8AFA3" />
        <path d="M326.8 480.022C322.177 480.33 320.254 487.712 323.175 490.119C325.949 492.408 330.292 488.387 329.984 483.794C329.838 481.578 328.531 480.022 326.8 480.022Z" fill="#B8AFA3" />
        <path d="M313.709 480.022C309.174 480.33 307.237 487.712 310.07 490.119C312.77 492.408 317.055 488.387 316.806 483.794C316.688 481.534 315.441 480.022 313.709 480.022Z" fill="#B8AFA3" />
        <path d="M300.868 480.022C296.421 480.33 294.44 487.712 297.199 490.119C299.841 492.423 304.082 488.402 303.877 483.794C303.774 481.578 302.541 480.022 300.868 480.022Z" fill="#B8AFA3" />
        <path d="M288.218 480.227C284.006 480.521 282.083 487.624 284.681 489.942C287.161 492.158 291.212 488.299 291.05 483.867C290.977 481.695 289.832 480.242 288.218 480.242" fill="#B8AFA3" />
        <path d="M275.729 480.022C271.429 480.33 269.404 487.712 272.031 490.119C274.526 492.408 278.679 488.387 278.576 483.794C278.517 481.534 277.387 480.022 275.744 480.022" fill="#B8AFA3" />
        <path d="M263.592 480.022C259.381 480.33 257.326 487.712 259.865 490.119C262.301 492.408 266.41 488.402 266.337 483.794C266.293 481.578 265.177 480.022 263.592 480.022Z" fill="#B8AFA3" />
        <path d="M251.691 480.022C247.552 480.33 245.483 487.712 247.948 490.119C250.311 492.408 254.376 488.387 254.332 483.794C254.317 481.578 253.231 480.022 251.676 480.022" fill="#B8AFA3" />
        <path d="M240.053 480.022C235.68 480.36 233.816 488.299 236.56 490.354C239.172 492.305 243.193 487.242 242.548 482.84C242.284 481.108 241.33 480.037 240.053 480.037" fill="#B8AFA3" />
        <path d="M228.665 480.022C224.379 480.36 222.486 488.299 225.157 490.354C227.696 492.305 231.673 487.242 231.086 482.84C230.851 481.108 229.927 480.037 228.679 480.037" fill="#B8AFA3" />
        <path d="M217.541 480.022C213.358 480.36 211.421 488.299 214.004 490.354C216.455 492.305 220.402 487.242 219.859 482.84C219.654 481.108 218.759 480.037 217.526 480.037" fill="#B8AFA3" />
        <path d="M206.549 480.022C202.454 480.36 200.502 488.299 202.997 490.354C205.375 492.305 209.264 487.242 208.779 482.84C208.589 481.108 207.723 480.037 206.534 480.037" fill="#B8AFA3" />
        <path d="M195.953 480.022C191.961 480.36 189.965 488.299 192.387 490.354C194.691 492.305 198.536 487.242 198.11 482.84C197.949 481.108 197.112 480.037 195.953 480.037" fill="#B8AFA3" />
        <path d="M185.636 480.022C181.747 480.36 179.722 488.299 182.055 490.354C184.271 492.305 188.072 487.242 187.705 482.84C187.559 481.108 186.766 480.037 185.636 480.037" fill="#B8AFA3" />
        <path d="M175.598 480.022C171.797 480.36 169.757 488.299 172.003 490.354C174.145 492.291 177.887 487.242 177.579 482.84C177.462 481.108 176.699 480.037 175.598 480.037" fill="#B8AFA3" />
        <path d="M165.824 480.022C162.141 480.36 160.057 488.299 162.229 490.354C164.283 492.305 167.996 487.242 167.732 482.84C167.629 481.108 166.895 480.037 165.824 480.037" fill="#B8AFA3" />
        <path d="M156.358 480.022C152.513 480.389 150.664 488.945 152.968 490.53C155.287 492.115 158.868 486.127 158.061 481.974C157.826 480.741 157.195 480.022 156.344 480.022" fill="#B8AFA3" />
        <path d="M147.172 480.022C143.444 480.389 141.551 488.945 143.767 490.53C145.998 492.115 149.534 486.127 148.801 481.974C148.58 480.741 147.993 480.022 147.172 480.022Z" fill="#B8AFA3" />
        <path d="M138.19 480.022C134.58 480.389 132.658 488.945 134.771 490.53C136.928 492.129 140.406 486.127 139.746 481.974C139.555 480.741 138.983 480.022 138.176 480.022" fill="#B8AFA3" />
        <path d="M129.62 480.022C126.127 480.389 124.16 488.945 126.2 490.53C128.24 492.115 131.674 486.112 131.102 481.974C130.926 480.741 130.398 480.022 129.62 480.022Z" fill="#B8AFA3" />
        <path d="M121.343 480.022C117.967 480.389 115.971 488.945 117.909 490.53C119.86 492.115 123.251 486.127 122.737 481.974C122.59 480.741 122.076 480.022 121.343 480.022Z" fill="#B8AFA3" />
        <path d="M1352.49 464.26C1350.46 464.554 1352.65 471.437 1354.53 472.714C1355.57 473.418 1356.08 472.141 1355.67 469.867C1355.16 467.093 1353.56 464.26 1352.49 464.26Z" fill="#B8AFA3" />
        <path d="M1338.73 463.292C1336.18 463.615 1338.32 471.466 1340.86 473.491C1342.29 474.621 1343.18 473.359 1342.86 470.659C1342.43 467.137 1340.28 463.292 1338.73 463.292Z" fill="#B8AFA3" />
        <path d="M1331.51 463.292C1328.86 463.615 1330.97 471.466 1333.58 473.491C1335.05 474.636 1336.02 473.359 1335.73 470.659C1335.34 467.137 1333.14 463.292 1331.53 463.292" fill="#B8AFA3" />
        <path d="M1323.99 463.292C1321.21 463.615 1323.28 471.466 1325.98 473.491C1327.6 474.709 1328.62 473.154 1328.18 470.175C1327.68 466.77 1325.56 463.292 1323.99 463.292Z" fill="#B8AFA3" />
        <path d="M1316.13 463.292C1313.24 463.615 1315.28 471.466 1318.04 473.491C1319.7 474.709 1320.8 473.154 1320.39 470.175C1319.92 466.77 1317.76 463.292 1316.13 463.292Z" fill="#B8AFA3" />
        <path d="M1307.89 463.292C1305.1 463.6 1306.7 470.894 1309.44 473.256C1311.16 474.753 1312.48 473.535 1312.26 470.644C1312 467.122 1309.71 463.277 1307.89 463.277" fill="#B8AFA3" />
        <path d="M1299.42 463.292C1296.53 463.6 1298.08 470.894 1300.89 473.256C1302.65 474.739 1304.03 473.521 1303.85 470.644C1303.63 467.122 1301.31 463.277 1299.42 463.277" fill="#B8AFA3" />
        <path d="M1290.64 463.292C1287.65 463.6 1289.16 470.894 1292.02 473.256C1293.94 474.841 1295.43 473.344 1295.07 470.16C1294.69 466.755 1292.46 463.277 1290.63 463.277" fill="#B8AFA3" />
        <path d="M1281.59 463.292C1278.49 463.6 1279.96 470.894 1282.89 473.256C1284.86 474.841 1286.42 473.344 1286.09 470.16C1285.76 466.755 1283.48 463.277 1281.59 463.277" fill="#B8AFA3" />
        <path d="M1272.24 463.292C1269.04 463.6 1270.46 470.894 1273.46 473.256C1275.47 474.841 1277.08 473.344 1276.79 470.16C1276.48 466.755 1274.18 463.277 1272.24 463.277" fill="#B8AFA3" />
        <path d="M1262.6 463.292C1259.31 463.6 1260.68 470.894 1263.73 473.256C1265.91 474.959 1267.63 473.139 1267.15 469.646C1266.68 466.374 1264.48 463.277 1262.6 463.277" fill="#B8AFA3" />
        <path d="M1252.68 463.292C1249.45 463.585 1250.45 470.336 1253.4 472.992C1255.6 474.973 1257.58 473.55 1257.33 470.16C1257.08 466.755 1254.73 463.277 1252.68 463.277" fill="#B8AFA3" />
        <path d="M1242.36 463.292C1239.06 463.585 1240.01 470.336 1242.99 472.992C1245.22 474.973 1247.28 473.55 1247.06 470.16C1246.85 466.755 1244.47 463.277 1242.36 463.277" fill="#B8AFA3" />
        <path d="M1231.9 463.292C1228.49 463.585 1229.4 470.336 1232.43 472.992C1234.69 474.973 1236.81 473.55 1236.64 470.16C1236.46 466.755 1234.07 463.277 1231.9 463.277" fill="#B8AFA3" />
        <path d="M1221.15 463.292C1217.66 463.585 1218.51 470.336 1221.59 472.992C1223.9 474.988 1226.09 473.55 1225.94 470.16C1225.79 466.755 1223.38 463.277 1221.15 463.277" fill="#B8AFA3" />
        <path d="M1210.16 463.292C1206.57 463.585 1207.37 470.336 1210.5 472.992C1212.99 475.12 1215.33 473.374 1214.95 469.661C1214.61 466.388 1212.29 463.292 1210.16 463.292Z" fill="#B8AFA3" />
        <path d="M1198.89 463.292C1195.24 463.585 1195.99 470.336 1199.14 472.992C1201.68 475.12 1204.07 473.374 1203.72 469.661C1203.41 466.388 1201.06 463.292 1198.89 463.292Z" fill="#B8AFA3" />
        <path d="M1187.39 463.292C1183.64 463.585 1184.33 470.336 1187.55 472.992C1190.12 475.12 1192.58 473.374 1192.26 469.661C1191.98 466.388 1189.62 463.292 1187.39 463.292Z" fill="#B8AFA3" />
        <path d="M1175.51 463.292C1171.67 463.585 1172.31 470.336 1175.56 472.992C1178.16 475.12 1180.69 473.374 1180.42 469.661C1180.17 466.388 1177.77 463.292 1175.51 463.292Z" fill="#B8AFA3" />
        <path d="M1163.49 463.292C1159.59 463.585 1160.18 470.336 1163.46 472.992C1166.22 475.238 1168.95 473.095 1168.4 469.133C1167.96 466.021 1165.68 463.292 1163.51 463.292" fill="#B8AFA3" />
        <path d="M1151.27 463.292C1147.29 463.585 1147.82 470.336 1151.14 472.992C1153.93 475.223 1156.71 473.095 1156.2 469.133C1155.79 466.021 1153.49 463.292 1151.27 463.292Z" fill="#B8AFA3" />
        <path d="M1138.8 463.292C1134.92 463.571 1135.1 469.778 1138.21 472.684C1140.91 475.208 1143.99 473.55 1143.8 469.646C1143.64 466.374 1141.2 463.277 1138.8 463.277" fill="#B8AFA3" />
        <path d="M1126.1 463.292C1122.15 463.571 1122.27 469.778 1125.43 472.684C1128.16 475.208 1131.31 473.55 1131.15 469.646C1131.02 466.374 1128.57 463.277 1126.12 463.277" fill="#B8AFA3" />
        <path d="M1113.19 463.292C1109.17 463.571 1109.22 469.778 1112.41 472.684C1115.17 475.208 1118.38 473.55 1118.25 469.646C1118.15 466.374 1115.68 463.277 1113.19 463.277" fill="#B8AFA3" />
        <path d="M1100.05 463.292C1095.97 463.571 1095.97 469.778 1099.17 472.684C1101.95 475.208 1105.23 473.55 1105.14 469.646C1105.06 466.374 1102.59 463.277 1100.05 463.277" fill="#B8AFA3" />
        <path d="M1086.55 463.292C1082.4 463.571 1082.34 469.778 1085.57 472.684C1088.37 475.208 1091.72 473.55 1091.66 469.646C1091.6 466.374 1089.12 463.277 1086.55 463.277" fill="#B8AFA3" />
        <path d="M1072.99 463.292C1068.76 463.571 1068.66 469.778 1071.9 472.684C1074.94 475.414 1078.46 473.388 1078.1 469.133C1077.82 466.021 1075.44 463.292 1072.99 463.292Z" fill="#B8AFA3" />
        <path d="M1059.22 463.292C1054.94 463.571 1054.78 469.778 1058.04 472.684C1061.09 475.414 1064.68 473.388 1064.35 469.133C1064.1 466.021 1061.7 463.292 1059.22 463.292Z" fill="#B8AFA3" />
        <path d="M1045.27 463.292C1040.89 463.571 1040.67 469.764 1043.98 472.684C1047.06 475.414 1050.73 473.388 1050.42 469.133C1050.2 466.021 1047.79 463.292 1045.27 463.292Z" fill="#B8AFA3" />
        <path d="M1031.12 463.292C1026.69 463.571 1026.4 469.764 1029.73 472.684C1032.82 475.414 1036.57 473.388 1036.29 469.133C1036.08 466.021 1033.67 463.292 1031.12 463.292Z" fill="#B8AFA3" />
        <path d="M1016.75 463.292C1012.28 463.571 1011.94 469.778 1015.27 472.684C1018.38 475.414 1022.18 473.388 1021.93 469.133C1021.76 466.021 1019.34 463.292 1016.75 463.292Z" fill="#B8AFA3" />
        <path d="M1002.08 463.292C997.543 463.571 997.147 469.764 1000.49 472.684C1003.62 475.414 1007.49 473.388 1007.29 469.133C1007.13 466.021 1004.71 463.292 1002.09 463.292" fill="#B8AFA3" />
        <path d="M987.373 463.292C982.765 463.571 982.31 469.764 985.671 472.684C988.812 475.414 992.759 473.388 992.583 469.133C992.451 466.021 990.015 463.292 987.373 463.292Z" fill="#B8AFA3" />
        <path d="M972.478 463.292C967.84 463.571 967.327 469.778 970.702 472.684C973.857 475.414 977.849 473.388 977.702 469.133C977.6 466.021 975.149 463.292 972.478 463.292Z" fill="#B8AFA3" />
        <path d="M957.421 463.292C952.724 463.571 952.152 469.778 955.542 472.684C958.83 475.516 963.115 473.022 962.616 468.59C962.278 465.669 959.959 463.292 957.421 463.292Z" fill="#B8AFA3" />
        <path d="M942.202 463.292C937.447 463.571 936.831 469.778 940.221 472.684C943.508 475.516 947.882 473.022 947.397 468.59C947.089 465.669 944.756 463.292 942.188 463.292" fill="#B8AFA3" />
        <path d="M926.837 463.292C922.038 463.571 921.348 469.778 924.753 472.684C928.055 475.516 932.487 473.022 932.047 468.59C931.753 465.669 929.42 463.292 926.837 463.292Z" fill="#B8AFA3" />
        <path d="M911.31 463.292C906.467 463.571 905.719 469.778 909.138 472.684C912.455 475.516 916.946 473.022 916.535 468.59C916.271 465.669 913.922 463.292 911.31 463.292Z" fill="#B8AFA3" />
        <path d="M895.446 463.292C890.544 463.571 889.737 469.778 893.171 472.684C896.488 475.516 901.052 473.022 900.671 468.59C900.421 465.669 898.073 463.292 895.446 463.292Z" fill="#B8AFA3" />
        <path d="M879.626 463.292C874.68 463.571 873.814 469.778 877.248 472.684C880.58 475.516 885.188 473.022 884.85 468.59C884.63 465.669 882.282 463.292 879.626 463.292Z" fill="#B8AFA3" />
        <path d="M863.659 463.292C858.669 463.571 857.745 469.778 861.193 472.684C864.525 475.516 869.206 473.022 868.898 468.59C868.693 465.669 866.345 463.292 863.674 463.292" fill="#B8AFA3" />
        <path d="M847.56 463.292C842.526 463.571 841.543 469.778 844.992 472.684C848.411 475.575 853.078 473.124 852.784 468.59C852.608 465.669 850.26 463.292 847.56 463.292Z" fill="#B8AFA3" />
        <path d="M831.329 463.292C826.236 463.571 825.18 469.764 828.643 472.684C832.063 475.575 836.803 473.124 836.553 468.59C836.392 465.669 834.044 463.292 831.329 463.292Z" fill="#B8AFA3" />
        <path d="M814.98 463.292C809.844 463.571 808.743 469.764 812.207 472.684C815.641 475.575 820.425 473.124 820.205 468.59C820.073 465.669 817.725 463.292 814.98 463.292Z" fill="#B8AFA3" />
        <path d="M798.485 463.292C793.334 463.571 792.175 469.778 795.623 472.684C799.043 475.575 803.871 473.124 803.695 468.59C803.578 465.669 801.244 463.292 798.47 463.292" fill="#B8AFA3" />
        <path d="M781.711 463.292C776.516 463.571 775.298 469.764 778.746 472.684C782.313 475.707 787.478 472.757 786.877 468.047C786.539 465.376 784.264 463.292 781.711 463.292Z" fill="#B8AFA3" />
        <path d="M765.01 463.292C759.756 463.571 758.48 469.764 761.943 472.684C765.509 475.693 770.734 472.743 770.176 468.047C769.853 465.376 767.593 463.292 765.01 463.292Z" fill="#B8AFA3" />
        <path d="M697.21 463.292C691.897 463.571 690.415 469.778 693.819 472.684C697.342 475.707 702.742 472.757 702.317 468.047C702.082 465.376 699.836 463.292 697.224 463.292" fill="#B8AFA3" />
        <path d="M663.192 463.468C658.143 463.732 656.632 469.705 659.816 472.523C663.118 475.428 668.299 472.596 667.961 468.061C667.77 465.449 665.716 463.468 663.177 463.468" fill="#B8AFA3" />
        <path d="M398.079 463.292C393.412 463.585 391.416 470.336 394.204 472.992C396.993 475.663 401.718 472.185 401.645 467.518C401.601 465.067 400.104 463.292 398.079 463.292Z" fill="#B8AFA3" />
        <path d="M384.049 463.292C379.426 463.585 377.401 470.336 380.13 472.992C382.86 475.649 387.556 472.17 387.527 467.518C387.512 465.067 386.045 463.292 384.049 463.292Z" fill="#B8AFA3" />
        <path d="M370.063 463.292C365.279 463.6 363.386 470.894 366.424 473.256C369.344 475.546 373.805 471.569 373.424 467.005C373.248 464.818 371.854 463.277 370.063 463.277" fill="#B8AFA3" />
        <path d="M356.444 463.292C351.733 463.6 349.796 470.894 352.775 473.256C355.637 475.546 360.054 471.569 359.732 467.005C359.57 464.818 358.22 463.277 356.444 463.277" fill="#B8AFA3" />
        <path d="M343.031 463.292C338.393 463.6 336.412 470.894 339.318 473.256C342.121 475.546 346.509 471.569 346.23 467.005C346.098 464.818 344.777 463.277 343.031 463.277" fill="#B8AFA3" />
        <path d="M329.838 463.292C325.244 463.6 323.234 470.894 326.095 473.256C328.825 475.531 333.184 471.554 332.949 467.005C332.831 464.818 331.555 463.277 329.838 463.277" fill="#B8AFA3" />
        <path d="M316.85 463.292C312.359 463.6 310.319 470.894 313.093 473.256C315.749 475.531 320.064 471.554 319.873 467.005C319.785 464.774 318.567 463.277 316.85 463.277" fill="#B8AFA3" />
        <path d="M304.097 463.292C299.679 463.6 297.61 470.894 300.311 473.256C302.908 475.531 307.179 471.569 307.032 467.005C306.959 464.818 305.755 463.277 304.097 463.277" fill="#B8AFA3" />
        <path d="M279.148 463.292C274.892 463.6 272.75 470.894 275.303 473.256C277.754 475.531 281.937 471.554 281.893 467.005C281.878 464.774 280.763 463.277 279.134 463.277" fill="#B8AFA3" />
        <path d="M267.1 463.292C262.917 463.6 260.76 470.894 263.24 473.256C265.618 475.531 269.771 471.569 269.756 467.005C269.756 464.818 268.655 463.277 267.1 463.277" fill="#B8AFA3" />
        <path d="M255.301 463.292C251.206 463.6 249.02 470.894 251.426 473.256C253.73 475.531 257.84 471.569 257.869 467.005C257.884 464.818 256.827 463.277 255.301 463.277" fill="#B8AFA3" />
        <path d="M243.751 463.292C239.407 463.615 237.426 471.466 240.112 473.491C242.68 475.428 246.76 470.439 246.187 466.065C245.967 464.363 245.028 463.292 243.766 463.292" fill="#B8AFA3" />
        <path d="M232.451 463.292C228.21 463.615 226.185 471.466 228.782 473.491C231.277 475.428 235.313 470.424 234.799 466.065C234.594 464.363 233.698 463.292 232.451 463.292Z" fill="#B8AFA3" />
        <path d="M221.415 463.292C217.262 463.615 215.207 471.466 217.731 473.491C220.138 475.428 224.145 470.424 223.675 466.065C223.499 464.363 222.633 463.292 221.415 463.292Z" fill="#B8AFA3" />
        <path d="M210.496 463.292C206.446 463.615 204.347 471.466 206.784 473.491C209.117 475.428 213.065 470.424 212.668 466.065C212.507 464.363 211.67 463.292 210.496 463.292Z" fill="#B8AFA3" />
        <path d="M199.989 463.292C196.026 463.615 193.898 471.466 196.261 473.491C198.507 475.428 202.425 470.424 202.073 466.065C201.941 464.363 201.133 463.292 199.989 463.292Z" fill="#B8AFA3" />
        <path d="M189.745 463.292C185.886 463.615 183.728 471.466 186.003 473.491C188.175 475.428 192.035 470.424 191.756 466.065C191.638 464.363 190.875 463.292 189.76 463.292" fill="#B8AFA3" />
        <path d="M179.781 463.292C176.009 463.615 173.822 471.466 176.009 473.491C178.093 475.414 181.923 470.424 181.688 466.065C181.6 464.363 180.867 463.292 179.781 463.292Z" fill="#B8AFA3" />
        <path d="M170.095 463.292C166.441 463.615 164.225 471.466 166.323 473.491C168.334 475.428 172.105 470.424 171.929 466.065C171.856 464.363 171.151 463.292 170.095 463.292Z" fill="#B8AFA3" />
        <path d="M160.702 463.292C156.887 463.644 154.876 472.112 157.136 473.667C159.411 475.238 163.08 469.323 162.375 465.214C162.17 463.996 161.554 463.292 160.717 463.292" fill="#B8AFA3" />
        <path d="M151.589 463.292C147.891 463.644 145.836 472.112 147.993 473.667C150.18 475.252 153.805 469.323 153.159 465.214C152.968 463.996 152.396 463.292 151.574 463.292" fill="#B8AFA3" />
        <path d="M142.681 463.292C139.1 463.644 137.001 472.112 139.071 473.667C141.169 475.252 144.765 469.323 144.192 465.214C144.016 463.996 143.473 463.292 142.681 463.292Z" fill="#B8AFA3" />
        <path d="M134.169 463.292C130.706 463.644 128.563 472.112 130.544 473.667C132.54 475.238 136.077 469.323 135.593 465.214C135.446 463.996 134.932 463.292 134.169 463.292Z" fill="#B8AFA3" />
        <path d="M125.745 464.055C122.913 464.363 121.049 471.583 122.649 472.904C124.219 474.21 127.242 469.103 126.89 465.699C126.787 464.657 126.362 464.055 125.745 464.055Z" fill="#B8AFA3" />
        <path d="M1346.91 446.709C1344.46 447.061 1347.32 455.426 1349.65 456.967C1350.94 457.818 1351.53 456.277 1350.96 453.503C1350.25 450.128 1348.21 446.694 1346.92 446.709" fill="#B8AFA3" />
        <path d="M1333.57 446.709C1331.04 447.031 1333.35 454.795 1335.92 456.791C1337.35 457.921 1338.22 456.659 1337.82 453.988C1337.34 450.583 1335.07 446.694 1333.55 446.709" fill="#B8AFA3" />
        <path d="M1326.41 446.709C1323.78 447.031 1326.05 454.795 1328.7 456.791C1330.18 457.921 1331.1 456.659 1330.75 453.988C1330.3 450.51 1328.02 446.694 1326.41 446.709Z" fill="#B8AFA3" />
        <path d="M1318.94 446.709C1316.19 447.031 1318.42 454.795 1321.14 456.791C1322.77 457.994 1323.75 456.453 1323.25 453.503C1322.68 450.128 1320.49 446.694 1318.94 446.709Z" fill="#B8AFA3" />
        <path d="M1311.16 446.709C1308.3 447.031 1310.5 454.795 1313.29 456.791C1314.96 457.994 1316.02 456.453 1315.53 453.503C1314.99 450.128 1312.77 446.694 1311.14 446.709" fill="#B8AFA3" />
        <path d="M1302.97 446.709C1300.21 447.017 1301.96 454.222 1304.73 456.57C1306.48 458.053 1307.75 456.835 1307.48 453.988C1307.14 450.51 1304.78 446.694 1302.97 446.709Z" fill="#B8AFA3" />
        <path d="M1294.58 446.709C1291.71 447.017 1293.42 454.222 1296.25 456.57C1298.02 458.038 1299.37 456.835 1299.13 453.988C1298.83 450.51 1296.44 446.694 1294.58 446.709Z" fill="#B8AFA3" />
        <path d="M1285.89 446.709C1282.92 447.017 1284.58 454.222 1287.47 456.57C1289.41 458.141 1290.85 456.659 1290.44 453.503C1290 450.128 1287.69 446.694 1285.89 446.709Z" fill="#B8AFA3" />
        <path d="M1276.91 446.709C1273.84 447.017 1275.45 454.222 1278.4 456.57C1280.38 458.141 1281.9 456.659 1281.51 453.503C1281.1 450.128 1278.77 446.694 1276.91 446.709Z" fill="#B8AFA3" />
        <path d="M1267.63 446.709C1264.46 447.017 1266.03 454.222 1269.04 456.57C1271.07 458.141 1272.64 456.659 1272.28 453.503C1271.9 450.128 1269.55 446.694 1267.63 446.709Z" fill="#B8AFA3" />
        <path d="M1258.08 446.708C1254.82 447.017 1256.33 454.222 1259.4 456.57C1261.6 458.243 1263.27 456.453 1262.72 453.004C1262.19 449.761 1259.93 446.708 1258.08 446.708Z" fill="#B8AFA3" />
        <path d="M1248.23 446.709C1245.03 446.987 1246.16 453.679 1249.14 456.306C1251.22 458.141 1253.1 457.025 1253.01 453.988C1252.91 450.51 1250.42 446.694 1248.23 446.709Z" fill="#B8AFA3" />
        <path d="M1238 446.709C1234.73 446.987 1235.82 453.679 1238.82 456.306C1241.07 458.273 1243.08 456.864 1242.8 453.503C1242.52 450.128 1240.1 446.694 1238 446.709Z" fill="#B8AFA3" />
        <path d="M1227.63 446.709C1224.27 446.987 1225.29 453.679 1228.35 456.306C1230.62 458.273 1232.7 456.864 1232.47 453.503C1232.22 450.128 1229.78 446.694 1227.63 446.709Z" fill="#B8AFA3" />
        <path d="M1216.97 446.709C1213.52 446.987 1214.49 453.679 1217.59 456.306C1219.91 458.273 1222.06 456.864 1221.84 453.503C1221.64 450.128 1219.17 446.694 1216.97 446.709Z" fill="#B8AFA3" />
        <path d="M1206.07 446.708C1202.52 446.987 1203.43 453.679 1206.58 456.306C1209.11 458.405 1211.38 456.673 1210.94 453.004C1210.54 449.761 1208.18 446.708 1206.07 446.708Z" fill="#B8AFA3" />
        <path d="M1194.9 446.708C1191.28 446.987 1192.14 453.679 1195.33 456.306C1197.88 458.42 1200.23 456.688 1199.8 453.004C1199.43 449.761 1197.06 446.708 1194.9 446.708Z" fill="#B8AFA3" />
        <path d="M1183.5 446.708C1179.8 446.987 1180.61 453.679 1183.82 456.306C1186.4 458.405 1188.81 456.688 1188.44 453.004C1188.1 449.761 1185.71 446.708 1183.5 446.708Z" fill="#B8AFA3" />
        <path d="M1171.71 446.708C1167.91 446.987 1168.66 453.679 1171.93 456.306C1174.54 458.405 1177.04 456.673 1176.7 453.004C1176.39 449.761 1173.97 446.708 1171.73 446.708" fill="#B8AFA3" />
        <path d="M1159.8 446.708C1155.94 446.987 1156.63 453.679 1159.93 456.306C1162.57 458.42 1165.12 456.688 1164.81 453.004C1164.54 449.761 1162.1 446.708 1159.81 446.708" fill="#B8AFA3" />
        <path d="M1147.67 446.709C1143.9 446.987 1144.24 453.122 1147.35 455.998C1149.92 458.376 1152.74 457.069 1152.74 453.503C1152.74 450.128 1150.18 446.694 1147.67 446.709Z" fill="#B8AFA3" />
        <path d="M1135.3 446.708C1131.46 446.987 1131.74 453.122 1134.88 455.998C1137.61 458.508 1140.63 456.849 1140.38 453.004C1140.16 449.761 1137.69 446.708 1135.32 446.708" fill="#B8AFA3" />
        <path d="M1122.71 446.708C1118.81 446.987 1119.01 453.122 1122.18 455.998C1124.93 458.508 1128.04 456.849 1127.8 453.004C1127.61 449.761 1125.15 446.708 1122.71 446.708Z" fill="#B8AFA3" />
        <path d="M1109.91 446.708C1105.94 446.987 1106.08 453.122 1109.28 455.998C1112.06 458.508 1115.23 456.849 1115.04 453.004C1114.87 449.761 1112.39 446.708 1109.91 446.708Z" fill="#B8AFA3" />
        <path d="M1096.88 446.708C1092.83 446.987 1092.92 453.122 1096.15 455.998C1098.94 458.508 1102.18 456.849 1102.03 453.004C1101.9 449.761 1099.41 446.708 1096.9 446.708" fill="#B8AFA3" />
        <path d="M1083.48 446.708C1079.36 446.987 1079.4 453.122 1082.63 455.998C1085.44 458.508 1088.75 456.849 1088.63 453.004C1088.53 449.761 1086.04 446.708 1083.48 446.708Z" fill="#B8AFA3" />
        <path d="M1070.04 446.708C1065.86 446.987 1065.83 453.122 1069.09 455.998C1071.92 458.508 1075.29 456.849 1075.21 453.004C1075.13 449.761 1072.62 446.708 1070.03 446.708" fill="#B8AFA3" />
        <path d="M1056.39 446.709C1052.15 446.987 1052.06 453.122 1055.34 455.998C1058.4 458.698 1061.94 456.688 1061.54 452.476C1061.25 449.394 1058.84 446.694 1056.38 446.694" fill="#B8AFA3" />
        <path d="M1042.55 446.709C1038.22 446.987 1038.08 453.122 1041.38 455.998C1044.48 458.698 1048.09 456.688 1047.73 452.476C1047.47 449.394 1045.05 446.694 1042.55 446.694" fill="#B8AFA3" />
        <path d="M1028.52 446.709C1024.14 446.987 1023.92 453.122 1027.25 455.998C1030.36 458.698 1034.04 456.688 1033.72 452.476C1033.48 449.394 1031.05 446.694 1028.52 446.694" fill="#B8AFA3" />
        <path d="M1014.27 446.709C1009.84 446.987 1009.58 453.122 1012.91 455.998C1016.03 458.698 1019.78 456.688 1019.48 452.476C1019.26 449.394 1016.84 446.694 1014.27 446.694" fill="#B8AFA3" />
        <path d="M999.73 446.709C995.24 446.973 994.902 453.122 998.248 455.998C1001.39 458.713 1005.2 456.703 1004.94 452.476C1004.75 449.394 1002.31 446.694 999.716 446.694" fill="#B8AFA3" />
        <path d="M985.143 446.709C980.579 446.987 980.182 453.122 983.558 455.998C986.713 458.698 990.602 456.688 990.382 452.476C990.221 449.394 987.784 446.694 985.157 446.694" fill="#B8AFA3" />
        <path d="M970.365 446.709C965.756 446.987 965.316 453.122 968.692 455.998C971.847 458.698 975.795 456.688 975.604 452.476C975.472 449.394 973.021 446.694 970.365 446.694" fill="#B8AFA3" />
        <path d="M955.44 446.709C950.787 446.987 950.274 453.122 953.664 455.998C956.834 458.698 960.84 456.688 960.679 452.476C960.576 449.394 958.125 446.694 955.44 446.694" fill="#B8AFA3" />
        <path d="M940.353 446.708C935.642 446.987 935.07 453.122 938.475 455.998C941.762 458.801 946.077 456.336 945.563 451.948C945.225 449.057 942.892 446.708 940.353 446.708Z" fill="#B8AFA3" />
        <path d="M925.105 446.708C920.35 446.987 919.719 453.122 923.124 455.998C926.426 458.801 930.799 456.336 930.33 451.948C930.022 449.057 927.674 446.708 925.12 446.708" fill="#B8AFA3" />
        <path d="M909.711 446.708C904.897 446.987 904.207 453.122 907.627 455.998C910.929 458.801 915.375 456.336 914.935 451.948C914.642 449.057 912.308 446.708 909.725 446.708" fill="#B8AFA3" />
        <path d="M893.979 446.708C889.121 446.987 888.358 453.122 891.777 455.998C895.094 458.801 899.599 456.336 899.188 451.948C898.924 449.057 896.576 446.708 893.964 446.708" fill="#B8AFA3" />
        <path d="M878.29 446.708C873.389 446.987 872.567 453.122 875.986 455.998C879.303 458.801 883.867 456.336 883.5 451.948C883.265 449.057 880.917 446.708 878.276 446.708" fill="#B8AFA3" />
        <path d="M862.456 446.708C857.51 446.987 856.629 453.122 860.049 455.998C863.365 458.801 868.003 456.336 867.665 451.948C867.445 449.057 865.112 446.708 862.441 446.708" fill="#B8AFA3" />
        <path d="M846.503 446.708C841.514 446.987 840.574 453.122 844.008 455.998C847.34 458.801 852.021 456.336 851.728 451.948C851.537 449.057 849.189 446.708 846.518 446.708" fill="#B8AFA3" />
        <path d="M830.404 446.708C825.356 446.987 824.343 453.122 827.777 455.998C831.182 458.86 835.878 456.438 835.614 451.948C835.438 449.057 833.105 446.708 830.404 446.708Z" fill="#B8AFA3" />
        <path d="M814.188 446.708C809.095 446.987 808.024 453.122 811.458 455.998C814.878 458.86 819.618 456.438 819.383 451.948C819.236 449.057 816.903 446.708 814.188 446.708Z" fill="#B8AFA3" />
        <path d="M797.825 446.708C792.718 446.987 791.588 453.122 795.022 455.998C798.426 458.86 803.211 456.438 803.02 451.948C802.902 449.057 800.569 446.708 797.825 446.708Z" fill="#B8AFA3" />
        <path d="M781.197 446.708C776.046 446.973 774.858 453.122 778.277 456.013C781.828 459.007 786.935 456.086 786.334 451.419C785.982 448.778 783.736 446.708 781.197 446.708Z" fill="#B8AFA3" />
        <path d="M680.377 446.708C675.138 446.987 673.611 453.122 676.943 456.013C680.391 459.007 685.733 456.086 685.352 451.419C685.132 448.778 682.96 446.708 680.377 446.708Z" fill="#B8AFA3" />
        <path d="M386.823 446.914C382.405 447.193 380.395 453.635 382.963 456.16C385.531 458.698 390.066 455.367 390.081 450.935C390.081 448.602 388.716 446.914 386.823 446.914Z" fill="#B8AFA3" />
        <path d="M372.984 446.708C368.243 447.002 366.262 454.222 369.241 456.57C372.235 458.919 376.931 454.442 376.212 449.908C375.904 447.971 374.642 446.708 372.984 446.708Z" fill="#B8AFA3" />
        <path d="M359.482 446.708C354.801 447.002 352.79 454.222 355.696 456.57C358.616 458.919 363.283 454.442 362.623 449.908C362.344 447.971 361.096 446.708 359.467 446.708" fill="#B8AFA3" />
        <path d="M346.171 446.708C341.563 447.002 339.494 454.222 342.341 456.57C345.203 458.919 349.84 454.442 349.239 449.908C348.974 447.971 347.771 446.708 346.171 446.708Z" fill="#B8AFA3" />
        <path d="M333.096 446.708C328.546 447.002 326.433 454.222 329.236 456.57C332.024 458.919 336.632 454.428 336.089 449.908C335.855 447.971 334.68 446.708 333.096 446.708Z" fill="#B8AFA3" />
        <path d="M320.21 446.708C315.749 447.017 313.621 454.222 316.321 456.57C319.022 458.919 323.6 454.428 323.116 449.908C322.911 447.971 321.766 446.708 320.21 446.708Z" fill="#B8AFA3" />
        <path d="M307.531 446.914C303.319 447.208 301.22 454.149 303.759 456.424C306.313 458.699 310.686 454.369 310.26 449.996C310.084 448.132 309.013 446.914 307.531 446.914Z" fill="#B8AFA3" />
        <path d="M282.832 446.708C278.605 447.017 276.36 454.222 278.855 456.57C281.247 458.816 285.459 454.883 285.503 450.392C285.518 448.191 284.446 446.708 282.832 446.708Z" fill="#B8AFA3" />
        <path d="M270.886 446.708C266.733 447.017 264.473 454.222 266.88 456.57C269.198 458.83 273.381 454.897 273.454 450.392C273.484 448.22 272.427 446.708 270.886 446.708Z" fill="#B8AFA3" />
        <path d="M259.19 446.708C254.787 447.031 252.718 454.795 255.418 456.791C258.001 458.713 262.184 453.767 261.626 449.453C261.406 447.765 260.481 446.708 259.19 446.708Z" fill="#B8AFA3" />
        <path d="M247.728 446.708C243.414 447.031 241.3 454.795 243.927 456.791C246.437 458.713 250.575 453.767 250.076 449.453C249.885 447.765 248.976 446.708 247.728 446.708Z" fill="#B8AFA3" />
        <path d="M236.516 446.708C232.304 447.031 230.147 454.795 232.686 456.791C235.122 458.698 239.216 453.767 238.791 449.453C238.615 447.765 237.749 446.708 236.516 446.708Z" fill="#B8AFA3" />
        <path d="M225.568 446.708C221.444 447.031 219.243 454.795 221.708 456.791C224.057 458.698 228.122 453.767 227.755 449.453C227.608 447.765 226.772 446.708 225.568 446.708Z" fill="#B8AFA3" />
        <path d="M214.752 446.708C210.717 447.031 208.486 454.795 210.878 456.791C213.153 458.698 217.174 453.767 216.851 449.453C216.734 447.765 215.926 446.708 214.752 446.708Z" fill="#B8AFA3" />
        <path d="M204.333 446.708C200.4 447.031 198.14 454.795 200.429 456.791C202.616 458.698 206.607 453.767 206.343 449.453C206.241 447.765 205.463 446.708 204.333 446.708Z" fill="#B8AFA3" />
        <path d="M194.177 446.708C190.347 447.031 188.043 454.795 190.259 456.791C192.372 458.698 196.305 453.767 196.114 449.453C196.041 447.765 195.293 446.708 194.192 446.708" fill="#B8AFA3" />
        <path d="M184.301 446.708C180.558 447.031 178.225 454.795 180.353 456.791C182.378 458.698 186.282 453.753 186.135 449.453C186.076 447.765 185.372 446.708 184.301 446.708Z" fill="#B8AFA3" />
        <path d="M174.688 446.708C171.063 447.031 168.686 454.795 170.726 456.791C172.678 458.698 176.523 453.767 176.449 449.453C176.42 447.765 175.745 446.708 174.688 446.708Z" fill="#B8AFA3" />
        <path d="M165.369 446.708C161.583 447.061 159.396 455.426 161.612 456.967C163.843 458.522 167.6 452.667 166.984 448.616C166.793 447.413 166.22 446.708 165.384 446.708" fill="#B8AFA3" />
        <path d="M156.329 446.708C152.646 447.061 150.43 455.426 152.543 456.967C154.685 458.522 158.398 452.667 157.855 448.616C157.694 447.413 157.136 446.708 156.329 446.708Z" fill="#B8AFA3" />
        <path d="M147.494 446.708C143.928 447.061 141.668 455.426 143.694 456.967C145.748 458.537 149.432 452.681 148.947 448.616C148.801 447.413 148.272 446.708 147.494 446.708Z" fill="#B8AFA3" />
        <path d="M139.056 446.708C135.607 447.061 133.303 455.426 135.24 456.967C137.192 458.522 140.832 452.667 140.436 448.616C140.318 447.413 139.819 446.708 139.071 446.708" fill="#B8AFA3" />
        <path d="M130.926 446.708C127.594 447.061 125.246 455.426 127.081 456.967C128.93 458.522 132.525 452.667 132.203 448.616C132.1 447.413 131.63 446.708 130.911 446.708" fill="#B8AFA3" />
        <path d="M1328.14 430.521C1325.64 430.844 1328.11 438.52 1330.71 440.501C1332.07 441.543 1332.89 440.545 1332.6 438.182C1332.19 434.733 1329.72 430.521 1328.14 430.521Z" fill="#B8AFA3" />
        <path d="M1321.04 430.521C1318.44 430.844 1320.87 438.52 1323.53 440.501C1325.03 441.616 1325.92 440.369 1325.51 437.727C1324.97 434.278 1322.64 430.521 1321.04 430.521Z" fill="#B8AFA3" />
        <path d="M1313.64 430.521C1310.92 430.844 1313.32 438.52 1316.06 440.501C1317.6 441.616 1318.54 440.369 1318.16 437.727C1317.68 434.352 1315.27 430.521 1313.64 430.521Z" fill="#B8AFA3" />
        <path d="M1305.92 430.521C1303.31 430.815 1305.24 437.962 1307.97 440.281C1309.59 441.646 1310.73 440.706 1310.54 438.182C1310.28 434.733 1307.73 430.521 1305.92 430.521Z" fill="#B8AFA3" />
        <path d="M1297.8 430.521C1295.07 430.815 1296.97 437.962 1299.77 440.281C1301.43 441.646 1302.63 440.706 1302.47 438.182C1302.25 434.733 1299.67 430.521 1297.8 430.521Z" fill="#B8AFA3" />
        <path d="M1289.48 430.521C1286.65 430.815 1288.5 437.962 1291.36 440.281C1293.15 441.734 1294.46 440.545 1294.16 437.727C1293.8 434.293 1291.35 430.521 1289.48 430.521Z" fill="#B8AFA3" />
        <path d="M1280.87 430.521C1277.93 430.815 1279.74 437.962 1282.66 440.281C1284.49 441.734 1285.86 440.545 1285.59 437.727C1285.26 434.293 1282.79 430.521 1280.87 430.521Z" fill="#B8AFA3" />
        <path d="M1271.96 430.521C1268.94 430.815 1270.68 437.962 1273.66 440.281C1275.66 441.836 1277.13 440.369 1276.67 437.258C1276.19 433.926 1273.81 430.521 1271.96 430.536" fill="#B8AFA3" />
        <path d="M1262.77 430.521C1259.65 430.815 1261.34 437.962 1264.39 440.281C1266.43 441.836 1267.95 440.369 1267.54 437.258C1267.1 433.926 1264.7 430.521 1262.79 430.536" fill="#B8AFA3" />
        <path d="M1253.31 430.521C1250.26 430.8 1251.56 437.419 1254.51 440.017C1256.57 441.836 1258.34 440.721 1258.17 437.727C1257.96 434.293 1255.42 430.521 1253.31 430.521Z" fill="#B8AFA3" />
        <path d="M1243.55 430.521C1240.38 430.8 1241.64 437.419 1244.64 440.017C1246.73 441.836 1248.58 440.721 1248.44 437.727C1248.27 434.293 1245.71 430.521 1243.55 430.521Z" fill="#B8AFA3" />
        <path d="M1233.41 430.522C1230.16 430.8 1231.37 437.419 1234.41 440.017C1236.68 441.954 1238.63 440.56 1238.3 437.243C1237.96 433.912 1235.48 430.507 1233.41 430.522Z" fill="#B8AFA3" />
        <path d="M1223.12 430.522C1219.79 430.8 1220.95 437.419 1224.02 440.017C1226.32 441.954 1228.35 440.56 1228.05 437.243C1227.74 433.912 1225.26 430.507 1223.12 430.522Z" fill="#B8AFA3" />
        <path d="M1212.57 430.522C1209.15 430.8 1210.24 437.419 1213.36 440.017C1215.69 441.968 1217.81 440.574 1217.53 437.243C1217.25 433.912 1214.76 430.507 1212.57 430.522Z" fill="#B8AFA3" />
        <path d="M1201.77 430.522C1198.25 430.8 1199.29 437.419 1202.46 440.017C1204.82 441.954 1207.01 440.56 1206.77 437.243C1206.54 433.912 1204.01 430.507 1201.78 430.522" fill="#B8AFA3" />
        <path d="M1190.69 430.522C1187.11 430.8 1188.08 437.419 1191.29 440.017C1193.86 442.101 1196.15 440.398 1195.68 436.744C1195.25 433.545 1192.83 430.507 1190.7 430.522" fill="#B8AFA3" />
        <path d="M1179.39 430.522C1175.72 430.8 1176.64 437.419 1179.89 440.017C1182.48 442.101 1184.85 440.383 1184.41 436.744C1184.03 433.545 1181.59 430.507 1179.39 430.522Z" fill="#B8AFA3" />
        <path d="M1167.71 430.521C1164.11 430.786 1164.65 436.861 1167.74 439.723C1170.27 442.086 1172.93 440.78 1172.78 437.258C1172.65 433.926 1170.08 430.521 1167.71 430.536" fill="#B8AFA3" />
        <path d="M1155.91 430.521C1152.25 430.786 1152.74 436.861 1155.85 439.723C1158.42 442.086 1161.12 440.794 1161.01 437.258C1160.91 433.926 1158.34 430.521 1155.91 430.536" fill="#B8AFA3" />
        <path d="M1143.87 430.521C1140.15 430.786 1140.57 436.861 1143.7 439.723C1146.28 442.086 1149.05 440.794 1148.99 437.258C1148.94 433.926 1146.35 430.521 1143.87 430.536" fill="#B8AFA3" />
        <path d="M1131.62 430.521C1127.82 430.786 1128.18 436.861 1131.34 439.723C1134.08 442.203 1137.06 440.56 1136.74 436.759C1136.48 433.559 1133.98 430.521 1131.62 430.536" fill="#B8AFA3" />
        <path d="M1119.14 430.521C1115.27 430.786 1115.58 436.861 1118.76 439.723C1121.52 442.203 1124.57 440.56 1124.3 436.759C1124.06 433.559 1121.55 430.521 1119.14 430.536" fill="#B8AFA3" />
        <path d="M1106.45 430.521C1102.5 430.786 1102.75 436.861 1105.95 439.723C1108.74 442.203 1111.85 440.56 1111.62 436.759C1111.41 433.559 1108.9 430.521 1106.45 430.536" fill="#B8AFA3" />
        <path d="M1093.54 430.521C1089.53 430.786 1089.71 436.861 1092.93 439.723C1095.74 442.203 1098.92 440.56 1098.72 436.759C1098.54 433.559 1096.02 430.521 1093.54 430.536" fill="#B8AFA3" />
        <path d="M1080.27 430.521C1076.19 430.786 1076.31 436.861 1079.56 439.723C1082.38 442.203 1085.64 440.56 1085.48 436.759C1085.33 433.559 1082.81 430.521 1080.28 430.536" fill="#B8AFA3" />
        <path d="M1066.94 430.521C1062.81 430.786 1062.86 436.861 1066.12 439.723C1068.95 442.203 1072.29 440.56 1072.15 436.759C1072.04 433.559 1069.51 430.521 1066.94 430.536" fill="#B8AFA3" />
        <path d="M1053.41 430.521C1049.2 430.786 1049.2 436.861 1052.49 439.723C1055.57 442.394 1059.05 440.413 1058.61 436.245C1058.29 433.192 1055.85 430.536 1053.41 430.536" fill="#B8AFA3" />
        <path d="M1039.69 430.521C1035.41 430.786 1035.33 436.861 1038.65 439.723C1041.75 442.394 1045.31 440.413 1044.9 436.245C1044.61 433.207 1042.17 430.536 1039.69 430.536" fill="#B8AFA3" />
        <path d="M1025.79 430.521C1021.45 430.786 1021.3 436.861 1024.63 439.723C1027.75 442.394 1031.39 440.413 1031 436.245C1030.72 433.207 1028.29 430.536 1025.78 430.536" fill="#B8AFA3" />
        <path d="M1011.68 430.521C1007.29 430.786 1007.1 436.861 1010.43 439.723C1013.55 442.394 1017.24 440.413 1016.9 436.245C1016.65 433.192 1014.21 430.536 1011.68 430.536" fill="#B8AFA3" />
        <path d="M997.25 430.521C992.803 430.786 992.539 436.861 995.885 439.723C999.026 442.409 1002.78 440.413 1002.49 436.245C1002.27 433.207 999.818 430.536 997.25 430.536" fill="#B8AFA3" />
        <path d="M982.795 430.521C978.275 430.786 977.937 436.861 981.312 439.723C984.468 442.394 988.298 440.413 988.034 436.245C987.843 433.207 985.392 430.536 982.795 430.536" fill="#B8AFA3" />
        <path d="M968.148 430.521C963.584 430.786 963.203 436.861 966.578 439.723C969.733 442.394 973.622 440.413 973.402 436.245C973.241 433.207 970.79 430.536 968.163 430.536" fill="#B8AFA3" />
        <path d="M953.355 430.521C948.747 430.786 948.292 436.861 951.668 439.723C954.838 442.394 958.785 440.413 958.595 436.245C958.463 433.207 956.012 430.536 953.341 430.536" fill="#B8AFA3" />
        <path d="M938.401 430.521C933.734 430.786 933.221 436.861 936.611 439.723C939.898 442.497 944.154 440.061 943.611 435.717C943.259 432.855 940.925 430.536 938.401 430.536" fill="#B8AFA3" />
        <path d="M923.3 430.521C918.589 430.786 918.002 436.861 921.407 439.723C924.694 442.497 929.024 440.061 928.51 435.717C928.172 432.855 925.839 430.536 923.3 430.536" fill="#B8AFA3" />
        <path d="M908.038 430.521C903.268 430.786 902.622 436.861 906.027 439.723C909.329 442.497 913.702 440.061 913.247 435.717C912.939 432.855 910.606 430.536 908.038 430.536" fill="#B8AFA3" />
        <path d="M892.438 430.521C887.624 430.786 886.92 436.861 890.324 439.723C893.626 442.497 898.073 440.061 897.647 435.717C897.369 432.855 895.035 430.536 892.438 430.536" fill="#B8AFA3" />
        <path d="M876.896 430.521C872.039 430.786 871.261 436.861 874.68 439.723C877.982 442.497 882.502 440.061 882.106 435.717C881.842 432.855 879.508 430.536 876.896 430.536" fill="#B8AFA3" />
        <path d="M861.194 430.521C856.292 430.786 855.455 436.861 858.86 439.723C862.162 442.497 866.741 440.061 866.389 435.717C866.154 432.855 863.82 430.536 861.194 430.536" fill="#B8AFA3" />
        <path d="M845.373 430.521C840.428 430.786 839.518 436.861 842.937 439.723C846.254 442.497 850.877 440.046 850.568 435.717C850.363 432.855 848.03 430.536 845.373 430.536" fill="#B8AFA3" />
        <path d="M829.421 430.521C824.417 430.786 823.433 436.861 826.867 439.723C830.258 442.555 834.895 440.149 834.616 435.717C834.44 432.855 832.107 430.536 829.436 430.536" fill="#B8AFA3" />
        <path d="M813.351 430.521C808.303 430.786 807.261 436.861 810.68 439.723C814.07 442.555 818.767 440.149 818.517 435.717C818.356 432.855 816.037 430.536 813.337 430.536" fill="#B8AFA3" />
        <path d="M797.135 430.521C792.072 430.786 790.971 436.861 794.376 439.723C797.766 442.555 802.492 440.163 802.301 435.717C802.169 432.855 799.85 430.536 797.135 430.536" fill="#B8AFA3" />
        <path d="M780.654 430.521C775.547 430.786 774.373 436.861 777.778 439.723C781.3 442.687 786.363 439.796 785.747 435.174C785.395 432.561 783.149 430.521 780.64 430.521" fill="#B8AFA3" />
        <path d="M680.729 430.521C675.534 430.786 674.007 436.861 677.309 439.723C680.714 442.673 686.027 439.796 685.66 435.174C685.454 432.561 683.282 430.521 680.729 430.521Z" fill="#B8AFA3" />
        <path d="M376.065 430.521C371.355 430.815 369.3 437.962 372.22 440.281C375.156 442.614 379.866 438.182 379.221 433.691C378.942 431.769 377.694 430.521 376.051 430.521" fill="#B8AFA3" />
        <path d="M362.667 430.521C358.029 430.815 355.931 437.962 358.778 440.281C361.639 442.614 366.336 438.167 365.749 433.691C365.499 431.769 364.281 430.521 362.667 430.521Z" fill="#B8AFA3" />
        <path d="M349.488 430.521C344.909 430.815 342.767 437.947 345.555 440.281C348.358 442.614 353.025 438.182 352.482 433.691C352.247 431.769 351.073 430.536 349.473 430.521" fill="#B8AFA3" />
        <path d="M336.53 430.521C332.01 430.815 329.823 437.962 332.553 440.281C335.282 442.599 339.92 438.167 339.45 433.691C339.245 431.769 338.1 430.536 336.53 430.521Z" fill="#B8AFA3" />
        <path d="M323.762 430.521C319.33 430.815 317.114 437.962 319.756 440.281C322.397 442.599 327.005 438.167 326.594 433.691C326.418 431.769 325.303 430.521 323.762 430.521Z" fill="#B8AFA3" />
        <path d="M274.863 430.521C270.739 430.815 268.377 437.962 270.725 440.281C273.087 442.599 277.549 438.167 277.343 433.691C277.255 431.769 276.287 430.536 274.848 430.521" fill="#B8AFA3" />
        <path d="M263.269 430.521C258.896 430.844 256.71 438.52 259.351 440.501C261.875 442.394 266.117 437.507 265.632 433.236C265.441 431.563 264.532 430.521 263.269 430.521Z" fill="#B8AFA3" />
        <path d="M251.911 430.521C247.625 430.844 245.395 438.52 247.963 440.501C250.414 442.394 254.611 437.507 254.2 433.236C254.039 431.563 253.158 430.521 251.911 430.521Z" fill="#B8AFA3" />
        <path d="M240.816 430.521C236.633 430.844 234.344 438.52 236.839 440.501C239.216 442.394 243.37 437.507 243.017 433.236C242.885 431.563 242.034 430.521 240.816 430.521Z" fill="#B8AFA3" />
        <path d="M229.956 430.521C225.862 430.844 223.543 438.52 225.95 440.501C228.254 442.394 232.363 437.507 232.069 433.236C231.952 431.563 231.145 430.521 229.956 430.521Z" fill="#B8AFA3" />
        <path d="M219.243 430.521C215.237 430.844 212.874 438.52 215.207 440.501C217.423 442.394 221.503 437.507 221.283 433.236C221.195 431.563 220.417 430.521 219.258 430.521" fill="#B8AFA3" />
        <path d="M208.911 430.521C205.008 430.844 202.601 438.52 204.846 440.501C206.989 442.394 211.025 437.507 210.863 433.236C210.79 431.563 210.056 430.521 208.926 430.521" fill="#B8AFA3" />
        <path d="M198.844 430.521C195.043 430.844 192.592 438.52 194.75 440.501C196.804 442.394 200.811 437.507 200.693 433.236C200.649 431.563 199.945 430.521 198.844 430.521Z" fill="#B8AFA3" />
        <path d="M189.055 430.521C185.343 430.844 182.862 438.52 184.932 440.501C186.913 442.394 190.861 437.507 190.817 433.236C190.802 431.563 190.127 430.521 189.041 430.521" fill="#B8AFA3" />
        <path d="M179.516 430.521C175.906 430.844 173.397 438.52 175.378 440.501C177.271 442.394 181.189 437.507 181.204 433.236C181.204 431.563 180.558 430.521 179.516 430.521Z" fill="#B8AFA3" />
        <path d="M170.286 430.521C166.514 430.874 164.181 439.151 166.338 440.677C168.51 442.218 172.369 436.421 171.841 432.415C171.68 431.226 171.122 430.536 170.286 430.536" fill="#B8AFA3" />
        <path d="M161.333 430.521C157.679 430.874 155.302 439.151 157.356 440.677C159.44 442.218 163.256 436.421 162.801 432.415C162.669 431.226 162.126 430.536 161.333 430.536" fill="#B8AFA3" />
        <path d="M152.572 430.521C149.035 430.874 146.599 439.151 148.58 440.677C150.576 442.233 154.363 436.436 153.981 432.415C153.864 431.226 153.35 430.536 152.587 430.536" fill="#B8AFA3" />
        <path d="M144.207 430.521C140.788 430.874 138.308 439.151 140.186 440.677C142.079 442.218 145.821 436.421 145.513 432.415C145.425 431.226 144.941 430.536 144.192 430.536" fill="#B8AFA3" />
        <path d="M136.15 430.521C132.848 430.874 130.324 439.151 132.115 440.677C133.92 442.218 137.618 436.421 137.383 432.415C137.31 431.226 136.869 430.536 136.15 430.536" fill="#B8AFA3" />
        <path d="M1328.99 414.32C1326.74 414.628 1329.42 422.289 1331.85 424.182C1333.08 425.136 1333.82 424.343 1333.6 422.318C1333.25 418.943 1330.57 414.32 1328.99 414.32Z" fill="#B8AFA3" />
        <path d="M1322.28 414.32C1319.82 414.643 1322.44 422.215 1325.07 424.182C1326.45 425.209 1327.23 424.226 1326.89 421.892C1326.41 418.488 1323.87 414.32 1322.28 414.32Z" fill="#B8AFA3" />
        <path d="M1315.25 414.32C1312.69 414.642 1315.28 422.215 1317.97 424.182C1319.48 425.282 1320.33 424.064 1319.86 421.437C1319.25 418.033 1316.84 414.305 1315.27 414.32" fill="#B8AFA3" />
        <path d="M1307.93 414.32C1305.45 414.613 1307.59 421.672 1310.28 423.962C1311.76 425.224 1312.8 424.519 1312.67 422.318C1312.48 418.943 1309.74 414.32 1307.93 414.32Z" fill="#B8AFA3" />
        <path d="M1300.28 414.32C1297.7 414.613 1299.79 421.672 1302.54 423.962C1304.17 425.312 1305.29 424.387 1305.04 421.892C1304.7 418.488 1302.07 414.32 1300.28 414.32Z" fill="#B8AFA3" />
        <path d="M1292.26 414.32C1289.57 414.613 1291.61 421.672 1294.43 423.962C1296.1 425.312 1297.28 424.387 1297.06 421.892C1296.76 418.488 1294.11 414.32 1292.26 414.32Z" fill="#B8AFA3" />
        <path d="M1284.01 414.32C1281.22 414.613 1283.2 421.672 1286.09 423.961C1287.9 425.4 1289.18 424.226 1288.81 421.437C1288.35 418.033 1285.84 414.305 1284.01 414.32Z" fill="#B8AFA3" />
        <path d="M1275.48 414.32C1272.59 414.613 1274.53 421.672 1277.48 423.961C1279.33 425.4 1280.66 424.226 1280.33 421.437C1279.91 418.033 1277.39 414.305 1275.48 414.32Z" fill="#B8AFA3" />
        <path d="M1266.66 414.32C1263.67 414.613 1265.55 421.672 1268.56 423.961C1270.45 425.4 1271.84 424.226 1271.54 421.437C1271.17 418.033 1268.61 414.305 1266.65 414.32" fill="#B8AFA3" />
        <path d="M1257.56 414.32C1254.63 414.598 1256.13 421.129 1259.05 423.697C1261.09 425.502 1262.76 424.402 1262.48 421.437C1262.16 418.033 1259.59 414.305 1257.56 414.32Z" fill="#B8AFA3" />
        <path d="M1248.17 414.32C1245.15 414.598 1246.59 421.129 1249.55 423.697C1251.64 425.502 1253.37 424.402 1253.12 421.437C1252.84 418.033 1250.24 414.305 1248.16 414.32" fill="#B8AFA3" />
        <path d="M1238.52 414.32C1235.39 414.599 1236.77 421.129 1239.79 423.697C1241.91 425.503 1243.71 424.402 1243.51 421.437C1243.27 418.033 1240.66 414.32 1238.52 414.32Z" fill="#B8AFA3" />
        <path d="M1228.48 414.32C1225.28 414.599 1226.6 421.129 1229.67 423.697C1231.81 425.503 1233.67 424.402 1233.51 421.437C1233.32 418.033 1230.69 414.32 1228.49 414.32" fill="#B8AFA3" />
        <path d="M1218.29 414.32C1215.01 414.599 1216.27 421.129 1219.38 423.697C1221.7 425.62 1223.68 424.24 1223.31 420.968C1222.94 417.666 1220.41 414.32 1218.29 414.32Z" fill="#B8AFA3" />
        <path d="M1207.84 414.32C1204.47 414.599 1205.67 421.129 1208.81 423.697C1211.16 425.62 1213.23 424.24 1212.89 420.968C1212.55 417.666 1210.02 414.32 1207.84 414.32Z" fill="#B8AFA3" />
        <path d="M1197.13 414.32C1193.65 414.599 1194.8 421.129 1198 423.697C1200.39 425.62 1202.52 424.24 1202.21 420.968C1201.91 417.666 1199.35 414.32 1197.13 414.32Z" fill="#B8AFA3" />
        <path d="M1186.17 414.32C1182.62 414.599 1183.72 421.129 1186.93 423.697C1189.35 425.62 1191.54 424.24 1191.28 420.968C1191.01 417.666 1188.43 414.32 1186.17 414.32Z" fill="#B8AFA3" />
        <path d="M1174.97 414.32C1171.51 414.584 1172.21 420.586 1175.28 423.404C1177.82 425.737 1180.33 424.461 1180.09 420.968C1179.87 417.666 1177.27 414.32 1174.96 414.32" fill="#B8AFA3" />
        <path d="M1163.41 414.32C1159.85 414.584 1160.49 420.586 1163.6 423.404C1166.16 425.737 1168.76 424.461 1168.56 420.968C1168.37 417.666 1165.77 414.32 1163.41 414.32Z" fill="#B8AFA3" />
        <path d="M1151.71 414.32C1148.1 414.584 1148.67 420.586 1151.8 423.404C1154.38 425.737 1157.04 424.461 1156.88 420.968C1156.71 417.666 1154.1 414.32 1151.7 414.32" fill="#B8AFA3" />
        <path d="M1139.81 414.32C1136.12 414.584 1136.64 420.586 1139.79 423.404C1142.39 425.737 1145.12 424.461 1145 420.968C1144.89 417.666 1142.27 414.32 1139.81 414.32Z" fill="#B8AFA3" />
        <path d="M1127.67 414.32C1123.91 414.584 1124.37 420.586 1127.54 423.404C1130.17 425.737 1132.95 424.461 1132.88 420.968C1132.81 417.666 1130.18 414.32 1127.67 414.32Z" fill="#B8AFA3" />
        <path d="M1115.31 414.32C1111.48 414.584 1111.88 420.586 1115.08 423.404C1117.85 425.855 1120.85 424.24 1120.51 420.469C1120.23 417.299 1117.69 414.305 1115.31 414.32Z" fill="#B8AFA3" />
        <path d="M1102.74 414.32C1098.83 414.584 1099.17 420.586 1102.39 423.404C1105.17 425.855 1108.24 424.24 1107.95 420.469C1107.7 417.299 1105.16 414.305 1102.74 414.32Z" fill="#B8AFA3" />
        <path d="M1089.96 414.32C1085.99 414.584 1086.26 420.586 1089.5 423.404C1092.32 425.855 1095.44 424.24 1095.19 420.469C1094.97 417.299 1092.44 414.305 1089.97 414.32" fill="#B8AFA3" />
        <path d="M1076.81 414.32C1072.77 414.584 1072.98 420.586 1076.23 423.404C1079.07 425.855 1082.27 424.24 1082.05 420.469C1081.85 417.299 1079.32 414.305 1076.81 414.32Z" fill="#B8AFA3" />
        <path d="M1063.61 414.32C1059.52 414.584 1059.65 420.586 1062.92 423.404C1065.77 425.855 1069.04 424.24 1068.85 420.469C1068.69 417.299 1066.15 414.305 1063.6 414.32" fill="#B8AFA3" />
        <path d="M1050.21 414.32C1046.05 414.584 1046.12 420.586 1049.42 423.404C1052.28 425.855 1055.61 424.24 1055.47 420.469C1055.35 417.299 1052.8 414.305 1050.21 414.32Z" fill="#B8AFA3" />
        <path d="M1036.62 414.32C1032.38 414.584 1032.38 420.586 1035.7 423.404C1038.81 426.046 1042.3 424.079 1041.85 419.97C1041.51 416.961 1039.08 414.32 1036.62 414.32Z" fill="#B8AFA3" />
        <path d="M1022.84 414.32C1018.54 414.584 1018.47 420.586 1021.8 423.404C1024.91 426.046 1028.49 424.079 1028.07 419.97C1027.76 416.961 1025.31 414.32 1022.83 414.32" fill="#B8AFA3" />
        <path d="M1008.87 414.32C1004.53 414.584 1004.41 420.586 1007.74 423.404C1010.87 426.046 1014.51 424.094 1014.11 419.97C1013.83 416.961 1011.38 414.32 1008.87 414.32Z" fill="#B8AFA3" />
        <path d="M994.579 414.32C990.177 414.584 989.986 420.586 993.332 423.404C996.399 426.002 1000.17 424.006 999.833 419.97C999.584 416.961 997.133 414.32 994.579 414.32Z" fill="#B8AFA3" />
        <path d="M980.27 414.32C975.794 414.584 975.53 420.586 978.891 423.404C982.046 426.046 985.818 424.079 985.51 419.97C985.289 416.961 982.839 414.32 980.256 414.32" fill="#B8AFA3" />
        <path d="M965.771 414.32C961.251 414.584 960.928 420.586 964.303 423.404C967.459 426.046 971.289 424.094 971.025 419.97C970.834 416.961 968.383 414.32 965.771 414.32Z" fill="#B8AFA3" />
        <path d="M951.11 414.32C946.546 414.584 946.15 420.586 949.525 423.404C952.681 426.046 956.584 424.079 956.364 419.97C956.203 416.961 953.752 414.32 951.11 414.32Z" fill="#B8AFA3" />
        <path d="M936.303 414.32C931.68 414.584 931.225 420.586 934.615 423.404C937.902 426.148 942.085 423.727 941.513 419.442C941.131 416.609 938.798 414.32 936.317 414.32" fill="#B8AFA3" />
        <path d="M921.348 414.32C916.681 414.584 916.153 420.586 919.543 423.404C922.831 426.148 927.086 423.727 926.558 419.442C926.206 416.609 923.872 414.32 921.363 414.32" fill="#B8AFA3" />
        <path d="M906.233 414.32C901.522 414.584 900.92 420.586 904.31 423.404C907.597 426.134 911.927 423.727 911.428 419.442C911.105 416.624 908.771 414.32 906.233 414.32Z" fill="#B8AFA3" />
        <path d="M890.779 414.32C886.01 414.584 885.349 420.586 888.754 423.404C892.041 426.134 896.444 423.727 895.974 419.442C895.681 416.624 893.348 414.32 890.779 414.32Z" fill="#B8AFA3" />
        <path d="M875.385 414.32C870.571 414.584 869.837 420.586 873.242 423.404C876.529 426.134 880.991 423.727 880.58 419.442C880.301 416.624 877.982 414.32 875.385 414.32Z" fill="#B8AFA3" />
        <path d="M859.843 414.32C854.986 414.584 854.193 420.586 857.583 423.404C860.885 426.134 865.391 423.727 865.024 419.442C864.774 416.624 862.456 414.32 859.843 414.32Z" fill="#B8AFA3" />
        <path d="M844.17 414.32C839.268 414.584 838.402 420.586 841.807 423.404C845.094 426.134 849.673 423.727 849.35 419.442C849.13 416.624 846.812 414.32 844.185 414.32" fill="#B8AFA3" />
        <path d="M828.379 414.32C823.419 414.584 822.479 420.586 825.884 423.404C829.26 426.207 833.838 423.83 833.545 419.442C833.354 416.624 831.035 414.32 828.379 414.32Z" fill="#B8AFA3" />
        <path d="M812.456 414.32C807.452 414.584 806.439 420.586 809.844 423.404C813.219 426.207 817.857 423.83 817.593 419.442C817.431 416.624 815.112 414.32 812.442 414.32" fill="#B8AFA3" />
        <path d="M796.401 414.32C791.382 414.584 790.311 420.586 793.701 423.404C797.062 426.207 801.743 423.83 801.538 419.442C801.406 416.624 799.101 414.32 796.401 414.32Z" fill="#B8AFA3" />
        <path d="M780.082 414.32C775.019 414.584 773.874 420.586 777.264 423.404C780.757 426.324 785.776 423.477 785.16 418.913C784.807 416.33 782.577 414.32 780.097 414.32" fill="#B8AFA3" />
        <path d="M763.822 414.32C758.7 414.584 757.496 420.586 760.886 423.404C764.379 426.31 769.457 423.463 768.885 418.913C768.562 416.33 766.331 414.32 763.836 414.32" fill="#B8AFA3" />
        <path d="M747.444 414.32C742.322 414.584 741.045 420.586 744.406 423.404C747.884 426.31 753.006 423.463 752.477 418.913C752.169 416.286 749.997 414.32 747.444 414.32Z" fill="#B8AFA3" />
        <path d="M379.323 414.51C374.818 414.789 372.749 421.584 375.522 423.8C378.296 426.016 382.846 421.79 382.288 417.519C382.053 415.699 380.879 414.51 379.323 414.51Z" fill="#B8AFA3" />
        <path d="M366.115 414.32C361.522 414.613 359.335 421.672 362.124 423.962C364.927 426.266 369.638 421.878 369.109 417.446C368.889 415.553 367.7 414.32 366.101 414.32" fill="#B8AFA3" />
        <path d="M353.054 414.32C348.52 414.613 346.289 421.672 349.018 423.962C351.763 426.266 356.444 421.878 355.989 417.446C355.784 415.553 354.639 414.32 353.069 414.32" fill="#B8AFA3" />
        <path d="M340.213 414.32C335.737 414.613 333.448 421.672 336.119 423.962C338.79 426.251 343.456 421.863 343.046 417.446C342.869 415.553 341.754 414.32 340.198 414.32" fill="#B8AFA3" />
        <path d="M327.578 414.32C323.19 414.613 320.871 421.672 323.454 423.962C326.037 426.251 330.674 421.863 330.337 417.446C330.19 415.553 329.104 414.32 327.578 414.32Z" fill="#B8AFA3" />
        <path d="M267.672 414.32C263.343 414.643 261.024 422.215 263.607 424.182C266.19 426.134 270.666 420.733 269.903 416.58C269.639 415.171 268.802 414.32 267.657 414.32" fill="#B8AFA3" />
        <path d="M256.416 414.32C252.175 414.643 249.812 422.215 252.322 424.182C254.831 426.134 259.263 420.733 258.573 416.58C258.339 415.171 257.531 414.32 256.416 414.32Z" fill="#B8AFA3" />
        <path d="M245.424 414.32C241.271 414.643 238.864 422.215 241.286 424.182C243.707 426.134 248.124 420.733 247.508 416.58C247.303 415.171 246.525 414.32 245.424 414.32Z" fill="#B8AFA3" />
        <path d="M234.667 414.32C230.602 414.643 228.151 422.215 230.499 424.182C232.833 426.134 237.22 420.733 236.678 416.58C236.487 415.171 235.738 414.32 234.667 414.32Z" fill="#B8AFA3" />
        <path d="M224.057 414.32C220.094 414.643 217.599 422.215 219.859 424.182C222.017 426.046 226.155 421.217 226.008 417.005C225.95 415.362 225.201 414.334 224.057 414.32Z" fill="#B8AFA3" />
        <path d="M213.828 414.32C209.953 414.643 207.415 422.215 209.601 424.182C211.685 426.046 215.78 421.217 215.706 417.005C215.677 415.362 214.958 414.334 213.842 414.32" fill="#B8AFA3" />
        <path d="M203.863 414.32C200.091 414.643 197.509 422.215 199.607 424.182C201.603 426.046 205.668 421.217 205.653 417.005C205.653 415.362 204.964 414.334 203.878 414.32" fill="#B8AFA3" />
        <path d="M194.163 414.32C190.479 414.643 187.867 422.215 189.877 424.182C191.8 426.046 195.821 421.217 195.865 417.005C195.88 415.362 195.234 414.334 194.177 414.32" fill="#B8AFA3" />
        <path d="M184.726 414.32C180.881 414.657 178.43 422.846 180.617 424.358C182.892 425.928 187.089 419.544 186.238 415.831C185.944 414.525 185.166 414.334 184.726 414.334" fill="#B8AFA3" />
        <path d="M175.569 414.32C171.826 414.657 169.332 422.846 171.43 424.358C173.676 425.972 177.785 419.662 177.007 415.831C176.743 414.525 175.994 414.334 175.569 414.334" fill="#B8AFA3" />
        <path d="M166.705 414.32C163.08 414.657 160.541 422.846 162.537 424.358C164.679 425.972 168.774 419.676 168.07 415.831C167.835 414.525 167.116 414.334 166.705 414.334" fill="#B8AFA3" />
        <path d="M158.031 414.32C154.524 414.657 151.926 422.846 153.849 424.358C155.83 425.913 159.939 419.544 159.338 415.831C159.132 414.525 158.428 414.334 158.031 414.334" fill="#B8AFA3" />
        <path d="M149.755 414.32C146.35 414.657 143.723 422.846 145.543 424.358C147.494 425.957 151.501 419.662 150.987 415.831C150.811 414.525 150.136 414.334 149.755 414.334" fill="#B8AFA3" />
        <path d="M141.771 414.32C138.484 414.657 135.798 422.846 137.544 424.358C139.291 425.884 143.092 420.161 142.96 416.184C142.916 415.01 142.49 414.32 141.786 414.32" fill="#B8AFA3" />
        <path d="M134.081 414.32C130.911 414.657 128.182 422.846 129.825 424.358C131.484 425.884 135.226 420.146 135.182 416.184C135.167 415.01 134.771 414.32 134.081 414.32Z" fill="#B8AFA3" />
        <path d="M126.626 414.51C123.691 414.848 121.02 422.729 122.517 424.182C123.984 425.605 127.594 420.014 127.609 416.301C127.609 415.171 127.257 414.51 126.626 414.51Z" fill="#B8AFA3" />
        <path d="M1351.12 398.309C1349.39 398.631 1352.87 406.82 1354.79 408.244C1355.61 408.846 1355.96 408.215 1355.7 406.615C1355.13 403.342 1352.35 398.294 1351.12 398.309Z" fill="#B8AFA3" />
        <path d="M1301.88 398.309C1299.43 398.602 1301.72 405.588 1304.45 407.848C1305.95 409.095 1306.96 408.405 1306.79 406.219C1306.52 402.887 1303.67 398.294 1301.88 398.294" fill="#B8AFA3" />
        <path d="M1294.33 398.309C1291.77 398.602 1294.02 405.588 1296.81 407.848C1298.45 409.183 1299.54 408.259 1299.23 405.793C1298.8 402.418 1296.1 398.279 1294.33 398.294" fill="#B8AFA3" />
        <path d="M1286.37 398.309C1283.72 398.602 1285.9 405.588 1288.75 407.848C1290.44 409.183 1291.58 408.273 1291.3 405.793C1290.92 402.418 1288.21 398.279 1286.36 398.294" fill="#B8AFA3" />
        <path d="M1278.23 398.309C1275.47 398.602 1277.6 405.588 1280.52 407.848C1282.23 409.183 1283.44 408.259 1283.2 405.793C1282.88 402.418 1280.14 398.294 1278.23 398.294" fill="#B8AFA3" />
        <path d="M1269.77 398.309C1266.91 398.602 1269 405.588 1271.98 407.848C1273.84 409.271 1275.13 408.112 1274.73 405.353C1274.26 402.051 1271.62 398.294 1269.77 398.294" fill="#B8AFA3" />
        <path d="M1261.04 398.309C1258.24 398.587 1259.93 405.059 1262.83 407.598C1264.74 409.271 1266.25 408.435 1266.09 405.808C1265.87 402.432 1263.1 398.309 1261.04 398.309Z" fill="#B8AFA3" />
        <path d="M1252.03 398.309C1249.13 398.587 1250.77 405.059 1253.72 407.598C1255.66 409.271 1257.24 408.435 1257.11 405.808C1256.93 402.432 1254.14 398.309 1252.03 398.309Z" fill="#B8AFA3" />
        <path d="M1242.76 398.309C1239.76 398.587 1241.33 405.059 1244.34 407.598C1246.44 409.374 1248.13 408.288 1247.83 405.368C1247.5 402.066 1244.8 398.309 1242.77 398.309" fill="#B8AFA3" />
        <path d="M1233.2 398.309C1230.11 398.587 1231.62 405.059 1234.67 407.598C1236.8 409.374 1238.57 408.288 1238.31 405.368C1238.02 402.066 1235.29 398.309 1233.22 398.309" fill="#B8AFA3" />
        <path d="M1223.25 398.309C1220.08 398.587 1221.54 405.059 1224.62 407.598C1226.77 409.374 1228.61 408.288 1228.37 405.368C1228.13 402.066 1225.38 398.309 1223.25 398.309Z" fill="#B8AFA3" />
        <path d="M1213.17 398.309C1209.91 398.587 1211.31 405.059 1214.43 407.598C1216.77 409.491 1218.7 408.127 1218.28 404.898C1217.84 401.625 1215.27 398.309 1213.17 398.309Z" fill="#B8AFA3" />
        <path d="M1202.82 398.309C1199.48 398.587 1200.81 405.059 1203.98 407.598C1206.35 409.506 1208.36 408.141 1207.96 404.898C1207.56 401.625 1204.97 398.309 1202.82 398.309Z" fill="#B8AFA3" />
        <path d="M1192.23 398.309C1188.78 398.587 1190.06 405.059 1193.27 407.598C1195.66 409.491 1197.75 408.127 1197.39 404.898C1197.03 401.625 1194.43 398.309 1192.23 398.309Z" fill="#B8AFA3" />
        <path d="M1181.38 398.309C1178.04 398.573 1178.92 404.516 1181.99 407.305C1184.36 409.462 1186.68 408.479 1186.61 405.368C1186.52 402.007 1183.79 398.309 1181.38 398.309Z" fill="#B8AFA3" />
        <path d="M1170.29 398.309C1166.85 398.573 1167.68 404.516 1170.77 407.305C1173.33 409.609 1175.79 408.347 1175.5 404.898C1175.22 401.625 1172.59 398.309 1170.29 398.309Z" fill="#B8AFA3" />
        <path d="M1158.86 398.309C1155.33 398.573 1156.08 404.516 1159.22 407.305C1161.81 409.609 1164.35 408.347 1164.1 404.898C1163.85 401.625 1161.2 398.309 1158.87 398.309" fill="#B8AFA3" />
        <path d="M1147.28 398.309C1143.7 398.573 1144.39 404.516 1147.54 407.305C1150.14 409.609 1152.75 408.347 1152.53 404.898C1152.33 401.625 1149.67 398.309 1147.28 398.309Z" fill="#B8AFA3" />
        <path d="M1135.49 398.309C1131.84 398.573 1132.47 404.516 1135.64 407.305C1138.25 409.609 1140.94 408.347 1140.76 404.898C1140.6 401.625 1137.94 398.309 1135.51 398.309" fill="#B8AFA3" />
        <path d="M1123.49 398.309C1119.76 398.573 1120.32 404.516 1123.52 407.305C1126.16 409.609 1128.89 408.347 1128.76 404.898C1128.63 401.625 1125.97 398.309 1123.49 398.309Z" fill="#B8AFA3" />
        <path d="M1111.25 398.309C1107.45 398.573 1107.95 404.516 1111.16 407.305C1113.95 409.726 1116.88 408.127 1116.49 404.414C1116.15 401.273 1113.6 398.309 1111.23 398.309" fill="#B8AFA3" />
        <path d="M1098.8 398.309C1094.94 398.573 1095.37 404.516 1098.61 407.305C1101.42 409.726 1104.43 408.127 1104.07 404.414C1103.78 401.273 1101.21 398.309 1098.8 398.309Z" fill="#B8AFA3" />
        <path d="M1086.15 398.309C1082.22 398.573 1082.59 404.516 1085.85 407.305C1088.66 409.726 1091.75 408.127 1091.44 404.414C1091.17 401.273 1088.6 398.309 1086.17 398.309" fill="#B8AFA3" />
        <path d="M1073.14 398.309C1069.15 398.573 1069.44 404.516 1072.71 407.305C1075.54 409.726 1078.7 408.127 1078.42 404.414C1078.19 401.273 1075.62 398.309 1073.14 398.309Z" fill="#B8AFA3" />
        <path d="M1060.08 398.309C1056.01 398.573 1056.25 404.516 1059.53 407.305C1062.38 409.726 1065.61 408.127 1065.37 404.414C1065.17 401.273 1062.6 398.309 1060.09 398.309" fill="#B8AFA3" />
        <path d="M1046.82 398.309C1042.7 398.573 1042.86 404.516 1046.16 407.305C1049.03 409.726 1052.31 408.127 1052.12 404.414C1051.96 401.273 1049.39 398.309 1046.82 398.309Z" fill="#B8AFA3" />
        <path d="M1033.38 398.309C1029.18 398.573 1029.26 404.516 1032.59 407.305C1035.7 409.917 1039.15 407.98 1038.64 403.9C1038.27 400.921 1035.8 398.294 1033.38 398.294" fill="#B8AFA3" />
        <path d="M1019.73 398.309C1015.46 398.573 1015.48 404.516 1018.82 407.305C1021.95 409.917 1025.46 407.98 1024.99 403.9C1024.65 400.921 1022.18 398.294 1019.73 398.294" fill="#B8AFA3" />
        <path d="M1005.91 398.309C1001.61 398.573 1001.55 404.516 1004.9 407.305C1008.02 409.917 1011.6 407.98 1011.16 403.9C1010.84 400.921 1008.39 398.294 1005.89 398.294" fill="#B8AFA3" />
        <path d="M991.761 398.309C987.403 398.573 987.271 404.516 990.631 407.305C993.699 409.858 997.411 407.892 997.03 403.9C996.751 400.921 994.286 398.294 991.761 398.294" fill="#B8AFA3" />
        <path d="M977.599 398.309C973.167 398.573 972.962 404.516 976.337 407.305C979.478 409.917 983.206 407.98 982.853 403.9C982.604 400.921 980.138 398.294 977.585 398.294" fill="#B8AFA3" />
        <path d="M963.247 398.309C958.771 398.573 958.521 404.516 961.882 407.305C965.037 409.917 968.809 407.98 968.501 403.9C968.281 400.921 965.815 398.294 963.247 398.294" fill="#B8AFA3" />
        <path d="M948.747 398.309C944.227 398.573 943.89 404.516 947.265 407.305C950.42 409.917 954.251 407.98 954.001 403.9C953.81 400.921 951.36 398.294 948.747 398.294" fill="#B8AFA3" />
        <path d="M934.087 398.309C929.508 398.573 929.112 404.516 932.487 407.305C935.642 409.917 939.546 407.98 939.326 403.9C939.164 400.921 936.714 398.294 934.072 398.294" fill="#B8AFA3" />
        <path d="M919.279 398.309C914.656 398.573 914.187 404.516 917.562 407.305C920.835 410.005 925.032 407.628 924.474 403.386C924.107 400.583 921.774 398.309 919.279 398.309Z" fill="#B8AFA3" />
        <path d="M904.31 398.309C899.629 398.573 899.1 404.516 902.476 407.305C905.748 410.005 910.019 407.628 909.491 403.386C909.138 400.583 906.82 398.309 904.31 398.309Z" fill="#B8AFA3" />
        <path d="M889.033 398.309C884.307 398.573 883.691 404.516 887.081 407.305C890.354 410.005 894.683 407.628 894.213 403.386C893.89 400.583 891.572 398.309 889.033 398.309Z" fill="#B8AFA3" />
        <path d="M873.785 398.309C869.016 398.573 868.326 404.516 871.716 407.305C874.989 410.005 879.391 407.628 878.951 403.386C878.657 400.583 876.339 398.309 873.785 398.309Z" fill="#B8AFA3" />
        <path d="M858.405 398.309C853.591 398.573 852.843 404.516 856.218 407.305C859.491 410.005 863.952 407.628 863.556 403.386C863.292 400.583 860.973 398.309 858.39 398.309" fill="#B8AFA3" />
        <path d="M842.908 398.309C838.05 398.573 837.228 404.516 840.604 407.305C843.876 410.005 848.397 407.628 848.044 403.386C847.81 400.583 845.505 398.309 842.893 398.309" fill="#B8AFA3" />
        <path d="M827.264 398.309C822.347 398.573 821.438 404.516 824.828 407.305C828.188 410.064 832.708 407.73 832.385 403.386C832.18 400.583 829.876 398.309 827.249 398.309" fill="#B8AFA3" />
        <path d="M811.502 398.309C806.542 398.573 805.573 404.516 808.949 407.305C812.295 410.064 816.888 407.73 816.609 403.386C816.433 400.583 814.144 398.309 811.502 398.309Z" fill="#B8AFA3" />
        <path d="M795.609 398.309C790.634 398.573 789.592 404.516 792.967 407.305C796.298 410.078 800.936 407.73 800.701 403.386C800.554 400.583 798.265 398.309 795.609 398.309Z" fill="#B8AFA3" />
        <path d="M779.466 398.309C774.447 398.573 773.331 404.516 776.692 407.305C780.155 410.196 785.116 407.363 784.485 402.873C784.118 400.275 781.96 398.309 779.451 398.309" fill="#B8AFA3" />
        <path d="M763.367 398.309C758.289 398.573 757.1 404.516 760.476 407.305C763.939 410.181 768.958 407.363 768.386 402.873C768.048 400.275 765.891 398.309 763.381 398.309" fill="#B8AFA3" />
        <path d="M747.15 398.309C742.058 398.573 740.81 404.516 744.156 407.305C747.59 410.181 752.668 407.363 752.14 402.873C751.832 400.275 749.689 398.309 747.15 398.309Z" fill="#B8AFA3" />
        <path d="M730.875 399.629C727.089 399.82 726.106 404.208 728.571 406.263C731.11 408.391 734.926 406.307 734.559 402.99C734.353 401.097 732.739 399.615 730.875 399.615" fill="#B8AFA3" />
        <path d="M480.291 398.69C475.844 398.94 473.98 404.913 476.651 407.261C479.322 409.609 483.798 406.542 483.71 402.432C483.666 400.26 482.228 398.69 480.291 398.69Z" fill="#B8AFA3" />
        <path d="M382.787 398.69C378.487 398.954 376.447 405.397 379.059 407.495C381.657 409.594 386.059 405.588 385.59 401.552C385.384 399.82 384.284 398.69 382.787 398.69Z" fill="#B8AFA3" />
        <path d="M356.826 398.309C352.32 398.602 350.002 405.588 352.673 407.848C355.344 410.122 360.054 405.778 359.673 401.405C359.511 399.527 358.396 398.309 356.826 398.309Z" fill="#B8AFA3" />
        <path d="M344.117 398.309C339.67 398.602 337.293 405.588 339.92 407.848C342.517 410.108 347.213 405.764 346.876 401.405C346.729 399.527 345.658 398.309 344.117 398.309Z" fill="#B8AFA3" />
        <path d="M331.613 398.309C327.255 398.602 324.848 405.588 327.372 407.848C329.955 410.166 334.548 405.896 334.284 401.405C334.182 399.527 333.125 398.309 331.599 398.309" fill="#B8AFA3" />
        <path d="M261.186 398.309C256.974 398.617 254.494 406.131 256.944 408.068C259.454 410.064 263.901 404.78 263.284 400.539C263.079 399.145 262.301 398.309 261.186 398.309Z" fill="#B8AFA3" />
        <path d="M250.296 398.309C246.173 398.617 243.634 406.131 246.011 408.068C248.447 410.064 252.865 404.78 252.322 400.539C252.145 399.145 251.382 398.309 250.311 398.309" fill="#B8AFA3" />
        <path d="M239.657 398.309C235.621 398.617 233.038 406.131 235.327 408.068C237.675 410.064 242.063 404.78 241.594 400.539C241.432 399.145 240.713 398.309 239.657 398.309Z" fill="#B8AFA3" />
        <path d="M229.149 398.309C225.201 398.631 222.574 406.131 224.79 408.068C227.05 410.049 231.409 404.78 231.013 400.539C230.881 399.145 230.191 398.309 229.149 398.309Z" fill="#B8AFA3" />
        <path d="M219.023 398.309C215.178 398.631 212.507 406.131 214.62 408.068C216.792 410.049 221.121 404.78 220.799 400.539C220.696 399.145 220.021 398.309 219.023 398.309Z" fill="#B8AFA3" />
        <path d="M209.161 398.309C205.404 398.631 202.689 406.131 204.729 408.068C206.813 410.049 211.113 404.78 210.849 400.539C210.761 399.145 210.13 398.309 209.146 398.309" fill="#B8AFA3" />
        <path d="M199.563 398.309C195.894 398.617 193.135 406.131 195.102 408.068C197.098 410.049 201.368 404.78 201.177 400.539C201.119 399.145 200.517 398.309 199.563 398.309Z" fill="#B8AFA3" />
        <path d="M190.23 398.309C186.399 398.646 183.802 406.747 185.944 408.244C188.234 409.844 192.475 403.606 191.697 399.791C191.433 398.499 190.67 398.309 190.23 398.309Z" fill="#B8AFA3" />
        <path d="M181.175 398.309C177.462 398.646 174.806 406.747 176.845 408.244C179.017 409.829 183.244 403.592 182.554 399.791C182.319 398.499 181.586 398.309 181.16 398.309" fill="#B8AFA3" />
        <path d="M172.399 398.309C168.789 398.646 166.088 406.747 168.04 408.244C170.124 409.829 174.307 403.592 173.705 399.791C173.499 398.499 172.795 398.309 172.384 398.309" fill="#B8AFA3" />
        <path d="M163.814 398.309C160.321 398.646 157.562 406.747 159.426 408.244C161.422 409.844 165.589 403.606 165.061 399.791C164.885 398.499 164.195 398.309 163.799 398.309" fill="#B8AFA3" />
        <path d="M155.61 398.309C152.235 398.646 149.417 406.747 151.193 408.244C153.071 409.829 157.21 403.592 156.784 399.791C156.637 398.499 155.977 398.309 155.61 398.309Z" fill="#B8AFA3" />
        <path d="M147.715 398.309C144.457 398.646 141.595 406.747 143.283 408.244C145.073 409.829 149.167 403.592 148.815 399.791C148.698 398.499 148.067 398.309 147.715 398.309Z" fill="#B8AFA3" />
        <path d="M140.025 398.5C137.001 398.822 134.213 406.615 135.739 408.053C137.368 409.58 141.272 403.592 141.023 399.938C140.935 398.705 140.362 398.514 140.025 398.514" fill="#B8AFA3" />
        <path d="M1344.22 382.518C1342.52 382.841 1346.16 390.898 1348.11 392.306C1348.88 392.849 1349.23 392.38 1349.02 391.059C1348.55 387.933 1345.5 382.503 1344.22 382.518Z" fill="#B8AFA3" />
        <path d="M1339.61 383.252C1338.04 383.531 1341.13 390.384 1342.87 391.587C1343.61 392.101 1343.94 391.558 1343.69 390.223C1343.2 387.478 1340.72 383.237 1339.61 383.252Z" fill="#B8AFA3" />
        <path d="M1295.54 382.518C1293.14 382.811 1295.56 389.679 1298.3 391.925C1299.81 393.158 1300.8 392.468 1300.56 390.311C1300.21 387.023 1297.31 382.503 1295.53 382.518" fill="#B8AFA3" />
        <path d="M1288.06 382.518C1285.55 382.811 1287.93 389.679 1290.73 391.925C1292.29 393.158 1293.31 392.468 1293.12 390.311C1292.83 387.023 1289.89 382.503 1288.06 382.518Z" fill="#B8AFA3" />
        <path d="M1280.19 382.518C1277.57 382.811 1279.9 389.679 1282.76 391.925C1284.46 393.246 1285.57 392.336 1285.24 389.9C1284.79 386.583 1282 382.503 1280.19 382.518Z" fill="#B8AFA3" />
        <path d="M1272.12 382.518C1269.41 382.811 1271.67 389.679 1274.6 391.925C1276.33 393.246 1277.49 392.336 1277.21 389.9C1276.82 386.583 1274.02 382.503 1272.12 382.518Z" fill="#B8AFA3" />
        <path d="M1263.77 382.518C1261.1 382.797 1262.96 389.166 1265.84 391.675C1267.62 393.216 1269 392.615 1268.92 390.325C1268.81 387.038 1265.83 382.518 1263.77 382.532" fill="#B8AFA3" />
        <path d="M1255.14 382.518C1252.37 382.797 1254.19 389.166 1257.11 391.675C1259.03 393.319 1260.51 392.497 1260.29 389.9C1260 386.583 1257.17 382.518 1255.14 382.518Z" fill="#B8AFA3" />
        <path d="M1246.23 382.518C1243.37 382.797 1245.13 389.166 1248.1 391.675C1250.05 393.319 1251.61 392.497 1251.42 389.9C1251.18 386.583 1248.32 382.518 1246.23 382.518Z" fill="#B8AFA3" />
        <path d="M1237.05 382.518C1234.1 382.797 1235.8 389.166 1238.81 391.675C1240.79 393.319 1242.4 392.497 1242.26 389.9C1242.07 386.583 1239.2 382.518 1237.06 382.518" fill="#B8AFA3" />
        <path d="M1227.6 382.518C1224.54 382.782 1226.17 389.166 1229.24 391.675C1231.38 393.436 1233.11 392.35 1232.79 389.474C1232.42 386.157 1229.71 382.532 1227.6 382.532" fill="#B8AFA3" />
        <path d="M1217.76 382.518C1214.64 382.797 1216.21 389.166 1219.31 391.675C1221.48 393.436 1223.27 392.365 1222.97 389.474C1222.65 386.157 1219.92 382.518 1217.76 382.532" fill="#B8AFA3" />
        <path d="M1207.78 382.518C1204.57 382.797 1206.08 389.166 1209.22 391.675C1211.42 393.436 1213.27 392.365 1213.02 389.474C1212.75 386.157 1210 382.532 1207.78 382.532" fill="#B8AFA3" />
        <path d="M1197.56 382.518C1194.25 382.782 1195.69 389.166 1198.88 391.675C1201.25 393.554 1203.22 392.204 1202.77 389.004C1202.31 385.79 1199.68 382.518 1197.56 382.518Z" fill="#B8AFA3" />
        <path d="M1187.08 382.518C1183.83 382.782 1184.88 388.623 1187.94 391.382C1190.31 393.51 1192.54 392.541 1192.36 389.459C1192.17 386.143 1189.41 382.518 1187.09 382.518" fill="#B8AFA3" />
        <path d="M1176.34 382.518C1173.03 382.782 1174.02 388.623 1177.1 391.382C1179.49 393.51 1181.78 392.541 1181.63 389.459C1181.49 386.143 1178.71 382.518 1176.34 382.518Z" fill="#B8AFA3" />
        <path d="M1165.37 382.518C1162 382.782 1162.91 388.623 1166.02 391.382C1168.43 393.51 1170.77 392.541 1170.69 389.459C1170.58 386.143 1167.81 382.518 1165.39 382.518" fill="#B8AFA3" />
        <path d="M1154.06 382.518C1150.58 382.782 1151.43 388.623 1154.57 391.382C1157.17 393.657 1159.66 392.409 1159.34 389.004C1159.03 385.79 1156.38 382.518 1154.06 382.518Z" fill="#B8AFA3" />
        <path d="M1142.61 382.518C1139.07 382.782 1139.87 388.623 1143.02 391.382C1145.63 393.657 1148.2 392.409 1147.91 389.004C1147.64 385.79 1144.96 382.518 1142.61 382.518Z" fill="#B8AFA3" />
        <path d="M1130.96 382.518C1127.36 382.782 1128.07 388.623 1131.25 391.382C1133.88 393.657 1136.51 392.409 1136.27 389.004C1136.05 385.79 1133.37 382.518 1130.96 382.518Z" fill="#B8AFA3" />
        <path d="M1119.07 382.518C1115.4 382.782 1116.05 388.623 1119.25 391.382C1121.89 393.657 1124.59 392.409 1124.4 389.004C1124.22 385.79 1121.54 382.518 1119.07 382.518Z" fill="#B8AFA3" />
        <path d="M1106.98 382.518C1103.24 382.782 1103.82 388.623 1107.04 391.382C1109.69 393.657 1112.45 392.409 1112.31 389.004C1112.16 385.79 1109.47 382.518 1106.98 382.518Z" fill="#B8AFA3" />
        <path d="M1094.67 382.518C1090.85 382.782 1091.36 388.623 1094.61 391.382C1097.42 393.774 1100.37 392.204 1099.96 388.52C1099.61 385.438 1097.04 382.518 1094.67 382.518Z" fill="#B8AFA3" />
        <path d="M1082.16 382.518C1078.29 382.782 1078.73 388.623 1081.99 391.382C1084.82 393.774 1087.84 392.204 1087.48 388.52C1087.17 385.438 1084.58 382.518 1082.16 382.518Z" fill="#B8AFA3" />
        <path d="M1069.29 382.518C1065.34 382.782 1065.73 388.623 1069 391.382C1071.85 393.774 1074.94 392.189 1074.6 388.52C1074.33 385.438 1071.74 382.518 1069.29 382.518Z" fill="#B8AFA3" />
        <path d="M1056.36 382.518C1052.36 382.782 1052.66 388.623 1055.95 391.382C1058.81 393.774 1061.97 392.204 1061.69 388.52C1061.46 385.438 1058.87 382.518 1056.38 382.518" fill="#B8AFA3" />
        <path d="M1043.26 382.518C1039.19 382.782 1039.43 388.623 1042.71 391.382C1045.58 393.774 1048.8 392.189 1048.57 388.52C1048.36 385.438 1045.78 382.518 1043.26 382.518Z" fill="#B8AFA3" />
        <path d="M1029.96 382.518C1025.81 382.782 1025.97 388.623 1029.29 391.382C1032.18 393.774 1035.47 392.189 1035.27 388.52C1035.11 385.438 1032.52 382.518 1029.96 382.518Z" fill="#B8AFA3" />
        <path d="M1016.47 382.518C1012.26 382.782 1012.35 388.623 1015.68 391.382C1018.81 393.965 1022.26 392.042 1021.74 388.021C1021.36 385.086 1018.91 382.518 1016.47 382.518Z" fill="#B8AFA3" />
        <path d="M1002.78 382.518C998.541 382.782 998.556 388.623 1001.89 391.382C1005.01 393.965 1008.52 392.042 1008.05 388.021C1007.7 385.086 1005.25 382.518 1002.78 382.518Z" fill="#B8AFA3" />
        <path d="M988.797 382.518C984.497 382.782 984.438 388.623 987.77 391.382C990.837 393.906 994.476 391.969 994.066 388.021C993.757 385.086 991.292 382.518 988.797 382.518Z" fill="#B8AFA3" />
        <path d="M974.782 382.518C970.409 382.782 970.262 388.623 973.623 391.382C976.763 393.965 980.417 392.042 980.036 388.021C979.757 385.086 977.291 382.518 974.767 382.518" fill="#B8AFA3" />
        <path d="M960.591 382.518C956.173 382.782 955.983 388.623 959.329 391.382C962.469 393.965 966.182 392.042 965.844 388.021C965.595 385.086 963.144 382.518 960.591 382.518Z" fill="#B8AFA3" />
        <path d="M946.253 382.518C941.791 382.782 941.512 388.623 944.873 391.382C948.014 393.965 951.8 392.042 951.506 388.021C951.286 385.086 948.836 382.518 946.253 382.518Z" fill="#B8AFA3" />
        <path d="M931.753 382.518C927.233 382.782 926.896 388.623 930.256 391.382C933.412 393.965 937.242 392.042 936.992 388.021C936.816 385.086 934.366 382.518 931.753 382.518Z" fill="#B8AFA3" />
        <path d="M917.107 382.518C912.807 382.767 912.147 388.183 915.126 391.059C918.237 394.082 922.552 392.262 922.332 388.021C922.185 385.086 919.734 382.518 917.107 382.518Z" fill="#B8AFA3" />
        <path d="M902.299 382.518C897.956 382.767 897.222 388.183 900.186 391.059C903.297 394.082 907.671 392.262 907.509 388.021C907.392 385.086 904.956 382.518 902.299 382.518Z" fill="#B8AFA3" />
        <path d="M887.184 382.518C882.796 382.767 881.989 388.183 884.953 391.059C888.064 394.082 892.496 392.262 892.379 388.021C892.291 385.086 889.869 382.518 887.184 382.518Z" fill="#B8AFA3" />
        <path d="M872.112 382.518C867.68 382.767 866.799 388.183 869.764 391.059C872.86 394.082 877.366 392.262 877.292 388.021C877.248 385.086 874.827 382.518 872.112 382.518Z" fill="#B8AFA3" />
        <path d="M856.893 382.518C852.417 382.767 851.478 388.183 854.428 391.059C857.51 394.082 862.074 392.262 862.059 388.021C862.045 385.086 859.638 382.518 856.893 382.518Z" fill="#B8AFA3" />
        <path d="M841.558 382.518C836.759 382.782 835.981 388.623 839.327 391.382C842.585 394.053 847.046 391.705 846.665 387.507C846.415 384.748 844.126 382.518 841.543 382.518" fill="#B8AFA3" />
        <path d="M826.09 382.518C821.511 382.767 820.425 388.168 823.36 391.059C826.442 394.082 831.123 392.262 831.197 388.021C831.255 385.086 828.863 382.518 826.09 382.518Z" fill="#B8AFA3" />
        <path d="M810.519 382.518C805.617 382.782 804.678 388.623 808.039 391.382C811.37 394.111 815.89 391.793 815.597 387.507C815.406 384.748 813.131 382.518 810.519 382.518Z" fill="#B8AFA3" />
        <path d="M794.787 382.518C789.871 382.782 788.858 388.623 792.189 391.382C795.506 394.111 800.07 391.807 799.835 387.507C799.674 384.748 797.414 382.518 794.772 382.518" fill="#B8AFA3" />
        <path d="M778.82 382.518C773.874 382.782 772.774 388.623 776.105 391.382C779.334 394.067 784.044 391.705 783.854 387.507C783.736 384.748 781.476 382.518 778.82 382.518Z" fill="#B8AFA3" />
        <path d="M762.897 382.518C757.893 382.782 756.719 388.623 760.05 391.382C763.484 394.229 768.444 391.441 767.857 387.009C767.52 384.499 765.348 382.532 762.897 382.518Z" fill="#B8AFA3" />
        <path d="M746.857 382.518C741.838 382.782 740.605 388.623 743.907 391.382C747.312 394.229 752.331 391.441 751.802 387.009C751.494 384.455 749.366 382.518 746.857 382.518Z" fill="#B8AFA3" />
        <path d="M482.977 382.518C478.236 382.797 476.182 389.166 478.999 391.675C481.832 394.2 486.645 390.912 486.587 386.51C486.557 384.206 485.046 382.518 482.977 382.518Z" fill="#B8AFA3" />
        <path d="M468.521 382.694C464.001 382.958 461.976 389.092 464.632 391.514C467.406 394.053 472.293 390.384 471.896 386.084C471.706 384.088 470.326 382.694 468.521 382.694Z" fill="#B8AFA3" />
        <path d="M360.803 382.518C356.356 382.797 353.949 389.679 356.562 391.925C359.174 394.17 363.899 389.9 363.577 385.57C363.444 383.721 362.344 382.518 360.803 382.518Z" fill="#B8AFA3" />
        <path d="M348.226 382.518C343.823 382.811 341.373 389.679 343.926 391.925C346.465 394.155 351.176 389.885 350.912 385.57C350.794 383.721 349.752 382.518 348.226 382.518Z" fill="#B8AFA3" />
        <path d="M266.205 382.518C262.037 382.826 259.439 390.222 261.817 392.13C264.194 394.038 268.758 388.77 268.23 384.719C268.054 383.34 267.291 382.518 266.205 382.518Z" fill="#B8AFA3" />
        <path d="M255.433 382.518C251.353 382.826 248.697 390.222 251.001 392.13C253.305 394.038 257.825 388.77 257.385 384.719C257.238 383.34 256.504 382.518 255.433 382.518Z" fill="#B8AFA3" />
        <path d="M244.91 382.518C240.919 382.826 238.218 390.222 240.434 392.13C242.65 394.038 247.156 388.77 246.774 384.719C246.642 383.34 245.952 382.518 244.896 382.518" fill="#B8AFA3" />
        <path d="M234.52 382.518C230.617 382.826 227.872 390.222 230.015 392.13C232.143 394.038 236.619 388.77 236.325 384.719C236.223 383.34 235.547 382.518 234.535 382.518" fill="#B8AFA3" />
        <path d="M224.497 382.518C220.696 382.826 217.893 390.222 219.947 392.13C221.987 394.038 226.449 388.77 226.214 384.719C226.14 383.34 225.495 382.518 224.497 382.518Z" fill="#B8AFA3" />
        <path d="M214.738 382.518C211.025 382.826 208.192 390.222 210.159 392.13C212.125 394.038 216.543 388.77 216.381 384.719C216.323 383.34 215.721 382.518 214.752 382.518" fill="#B8AFA3" />
        <path d="M205.243 382.518C201.618 382.826 198.727 390.222 200.62 392.13C202.557 394.097 206.886 388.902 206.798 384.719C206.769 383.34 206.182 382.518 205.243 382.518Z" fill="#B8AFA3" />
        <path d="M196.012 382.518C192.225 382.855 189.481 390.839 191.55 392.306C193.708 393.833 198.096 387.61 197.421 383.985C197.186 382.723 196.437 382.518 196.012 382.518Z" fill="#B8AFA3" />
        <path d="M187.06 382.518C183.376 382.855 180.588 390.839 182.569 392.306C184.697 393.877 188.997 387.728 188.41 383.985C188.204 382.723 187.485 382.518 187.074 382.518" fill="#B8AFA3" />
        <path d="M178.386 382.518C174.82 382.855 171.959 390.839 173.852 392.306C175.892 393.877 180.162 387.742 179.649 383.985C179.472 382.723 178.783 382.518 178.386 382.518Z" fill="#B8AFA3" />
        <path d="M169.889 382.518C166.426 382.855 163.52 390.839 165.325 392.306C167.204 393.833 171.518 387.61 171.093 383.985C170.946 382.723 170.271 382.518 169.889 382.518Z" fill="#B8AFA3" />
        <path d="M161.774 382.518C158.428 382.855 155.463 390.839 157.18 392.306C159.015 393.877 163.241 387.728 162.904 383.985C162.786 382.723 162.141 382.518 161.774 382.518Z" fill="#B8AFA3" />
        <path d="M153.966 382.518C150.738 382.855 147.715 390.839 149.344 392.306C151.075 393.877 155.272 387.728 155.023 383.985C154.935 382.723 154.319 382.532 153.966 382.518Z" fill="#B8AFA3" />
        <path d="M146.438 382.518C143.327 382.855 140.259 390.839 141.8 392.306C143.444 393.877 147.597 387.728 147.436 383.985C147.377 382.723 146.79 382.532 146.453 382.518" fill="#B8AFA3" />
        <path d="M1342.14 368.195C1340.99 368.429 1343.84 374.329 1345.24 375.356C1345.73 375.723 1345.95 375.474 1345.84 374.681C1345.53 372.48 1343.06 368.18 1342.14 368.195Z" fill="#B8AFA3" />
        <path d="M1336.97 366.918C1335.3 367.241 1339.12 375.195 1341.08 376.574C1341.85 377.117 1342.18 376.648 1341.95 375.342C1341.41 372.26 1338.24 366.903 1336.97 366.918Z" fill="#B8AFA3" />
        <path d="M1332.09 366.918C1330.19 367.255 1333.99 375.121 1336.12 376.574C1337 377.161 1337.35 376.545 1337.03 374.989C1336.37 371.805 1333.36 366.903 1332.07 366.918" fill="#B8AFA3" />
        <path d="M1288.85 366.918C1286.47 367.197 1289.04 373.991 1291.82 376.193C1293.34 377.411 1294.3 376.736 1294.02 374.608C1293.59 371.364 1290.6 366.903 1288.85 366.918Z" fill="#B8AFA3" />
        <path d="M1281.47 366.918C1278.99 367.197 1281.51 373.991 1284.35 376.193C1285.92 377.411 1286.92 376.736 1286.68 374.608C1286.31 371.364 1283.3 366.903 1281.49 366.918" fill="#B8AFA3" />
        <path d="M1273.69 366.918C1271.11 367.197 1273.58 373.991 1276.47 376.193C1278.18 377.499 1279.25 376.604 1278.87 374.197C1278.34 370.924 1275.5 366.903 1273.69 366.918Z" fill="#B8AFA3" />
        <path d="M1265.72 366.918C1263.04 367.197 1265.44 373.991 1268.39 376.193C1270.14 377.499 1271.27 376.604 1270.92 374.197C1270.45 370.924 1267.57 366.903 1265.71 366.918" fill="#B8AFA3" />
        <path d="M1257.46 366.918C1254.82 367.182 1256.83 373.478 1259.72 375.943C1261.51 377.469 1262.86 376.868 1262.73 374.608C1262.54 371.364 1259.49 366.903 1257.46 366.918Z" fill="#B8AFA3" />
        <path d="M1248.93 366.918C1246.21 367.182 1248.14 373.478 1251.09 375.943C1253.03 377.572 1254.48 376.75 1254.2 374.197C1253.84 370.924 1250.93 366.903 1248.93 366.918Z" fill="#B8AFA3" />
        <path d="M1240.11 366.918C1237.3 367.182 1239.18 373.478 1242.17 375.943C1244.14 377.572 1245.65 376.75 1245.4 374.197C1245.09 370.924 1242.17 366.903 1240.11 366.918Z" fill="#B8AFA3" />
        <path d="M1231.05 366.918C1228.14 367.182 1229.96 373.478 1232.98 375.943C1234.98 377.572 1236.55 376.75 1236.34 374.197C1236.08 370.924 1233.16 366.903 1231.03 366.918" fill="#B8AFA3" />
        <path d="M1221.7 366.918C1218.69 367.182 1220.44 373.478 1223.52 375.943C1225.67 377.675 1227.36 376.618 1226.98 373.771C1226.54 370.499 1223.77 366.918 1221.7 366.918Z" fill="#B8AFA3" />
        <path d="M1211.98 366.918C1208.9 367.182 1210.59 373.478 1213.7 375.943C1215.89 377.675 1217.63 376.618 1217.28 373.771C1216.88 370.499 1214.11 366.918 1211.97 366.918" fill="#B8AFA3" />
        <path d="M1202.12 366.918C1199.1 367.167 1200.37 372.949 1203.4 375.664C1205.58 377.631 1207.56 376.926 1207.48 374.197C1207.37 370.924 1204.42 366.903 1202.12 366.918Z" fill="#B8AFA3" />
        <path d="M1192.01 366.918C1188.9 367.167 1190.12 372.949 1193.17 375.664C1195.53 377.763 1197.64 376.809 1197.35 373.771C1197.04 370.499 1194.25 366.918 1192.01 366.918Z" fill="#B8AFA3" />
        <path d="M1181.66 366.918C1178.46 367.167 1179.61 372.949 1182.69 375.664C1185.07 377.763 1187.25 376.809 1187.02 373.771C1186.75 370.499 1183.95 366.918 1181.66 366.918Z" fill="#B8AFA3" />
        <path d="M1171.04 366.918C1167.78 367.167 1168.87 372.949 1171.96 375.664C1174.37 377.763 1176.61 376.809 1176.41 373.771C1176.19 370.499 1173.39 366.918 1171.04 366.918Z" fill="#B8AFA3" />
        <path d="M1160.21 366.918C1156.88 367.167 1157.89 372.949 1161.01 375.664C1163.44 377.763 1165.74 376.809 1165.58 373.771C1165.42 370.499 1162.6 366.918 1160.21 366.918Z" fill="#B8AFA3" />
        <path d="M1149.02 366.918C1145.59 367.167 1146.54 372.949 1149.7 375.664C1152.14 377.763 1154.51 376.809 1154.41 373.771C1154.29 370.499 1151.47 366.918 1149.02 366.918Z" fill="#B8AFA3" />
        <path d="M1137.71 366.918C1134.22 367.167 1135.1 372.949 1138.28 375.664C1140.91 377.91 1143.42 376.692 1143.08 373.316C1142.76 370.146 1140.06 366.918 1137.72 366.918" fill="#B8AFA3" />
        <path d="M1126.19 366.918C1122.64 367.167 1123.44 372.949 1126.64 375.664C1129.29 377.91 1131.85 376.677 1131.56 373.316C1131.28 370.146 1128.58 366.918 1126.19 366.918Z" fill="#B8AFA3" />
        <path d="M1114.45 366.918C1110.82 367.167 1111.56 372.949 1114.77 375.664C1117.43 377.91 1120.07 376.677 1119.82 373.316C1119.59 370.146 1116.87 366.918 1114.45 366.918Z" fill="#B8AFA3" />
        <path d="M1102.49 366.918C1098.79 367.167 1099.46 372.949 1102.69 375.664C1105.36 377.91 1108.06 376.677 1107.86 373.316C1107.67 370.146 1104.95 366.918 1102.49 366.918Z" fill="#B8AFA3" />
        <path d="M1090.32 366.918C1086.57 367.167 1087.15 372.949 1090.41 375.664C1093.1 377.91 1095.87 376.677 1095.71 373.316C1095.56 370.146 1092.85 366.918 1090.34 366.918" fill="#B8AFA3" />
        <path d="M1077.95 366.918C1074.12 367.167 1074.65 372.949 1077.92 375.664C1080.75 378.027 1083.72 376.471 1083.29 372.847C1082.94 369.794 1080.34 366.918 1077.95 366.918Z" fill="#B8AFA3" />
        <path d="M1065.23 366.918C1061.34 367.167 1061.79 372.949 1065.07 375.664C1067.91 378.027 1070.95 376.471 1070.57 372.847C1070.25 369.794 1067.65 366.918 1065.23 366.918Z" fill="#B8AFA3" />
        <path d="M1052.46 366.918C1048.5 367.167 1048.88 372.949 1052.18 375.664C1055.04 378.027 1058.14 376.471 1057.8 372.847C1057.52 369.794 1054.92 366.918 1052.46 366.918Z" fill="#B8AFA3" />
        <path d="M1039.5 366.918C1035.48 367.167 1035.79 372.949 1039.09 375.664C1041.97 378.027 1045.12 376.471 1044.83 372.847C1044.58 369.794 1041.98 366.918 1039.49 366.918" fill="#B8AFA3" />
        <path d="M1026.35 366.918C1022.26 367.167 1022.49 372.949 1025.81 375.664C1028.7 378.027 1031.94 376.471 1031.69 372.847C1031.49 369.794 1028.89 366.918 1026.35 366.918Z" fill="#B8AFA3" />
        <path d="M1013.03 366.918C1009.11 367.153 1009.01 372.494 1012 375.341C1014.95 378.159 1018.57 376.721 1018.35 372.847C1018.18 369.794 1015.59 366.918 1013.03 366.918Z" fill="#B8AFA3" />
        <path d="M999.51 366.918C995.562 367.153 995.386 372.494 998.365 375.341C1001.32 378.159 1005 376.736 1004.82 372.847C1004.69 369.794 1002.09 366.918 999.51 366.918Z" fill="#B8AFA3" />
        <path d="M985.686 366.918C981.679 367.153 981.445 372.494 984.409 375.341C987.359 378.159 991.116 376.736 990.984 372.847C990.896 369.794 988.313 366.918 985.671 366.918" fill="#B8AFA3" />
        <path d="M971.832 366.918C967.752 367.153 967.444 372.494 970.423 375.341C973.373 378.159 977.203 376.721 977.13 372.847C977.071 369.794 974.503 366.918 971.832 366.918Z" fill="#B8AFA3" />
        <path d="M957.802 366.918C953.693 367.153 953.312 372.494 956.291 375.341C959.241 378.159 963.115 376.736 963.086 372.847C963.071 369.794 960.503 366.918 957.802 366.918Z" fill="#B8AFA3" />
        <path d="M943.626 366.918C939.473 367.153 939.018 372.494 941.982 375.341C944.917 378.159 948.865 376.721 948.88 372.847C948.894 369.794 946.341 366.918 943.611 366.918" fill="#B8AFA3" />
        <path d="M929.288 366.918C925.076 367.153 924.548 372.494 927.527 375.341C930.462 378.159 934.454 376.721 934.542 372.847C934.6 369.794 932.047 366.918 929.302 366.918" fill="#B8AFA3" />
        <path d="M914.818 366.918C910.562 367.153 909.96 372.494 912.925 375.341C916.036 378.321 920.277 376.53 920.028 372.348C919.851 369.457 917.415 366.918 914.818 366.918Z" fill="#B8AFA3" />
        <path d="M900.186 366.918C895.886 367.153 895.211 372.494 898.176 375.341C901.272 378.321 905.587 376.53 905.381 372.348C905.235 369.457 902.813 366.918 900.186 366.918Z" fill="#B8AFA3" />
        <path d="M885.247 366.918C880.903 367.153 880.154 372.494 883.104 375.341C886.2 378.321 890.574 376.53 890.427 372.348C890.324 369.457 887.903 366.918 885.247 366.918Z" fill="#B8AFA3" />
        <path d="M870.351 366.918C865.963 367.153 865.141 372.494 868.091 375.341C871.173 378.321 875.619 376.53 875.517 372.348C875.443 369.457 873.037 366.918 870.366 366.918" fill="#B8AFA3" />
        <path d="M855.309 366.918C850.877 367.153 849.981 372.494 852.916 375.341C855.984 378.321 860.489 376.53 860.445 372.348C860.416 369.457 858.009 366.918 855.309 366.918Z" fill="#B8AFA3" />
        <path d="M840.149 366.918C835.687 367.153 834.719 372.494 837.639 375.341C840.706 378.321 845.256 376.53 845.256 372.348C845.256 369.457 842.878 366.918 840.149 366.918Z" fill="#B8AFA3" />
        <path d="M824.872 366.918C820.352 367.153 819.295 372.494 822.215 375.341C825.268 378.321 829.905 376.53 829.949 372.348C829.993 369.457 827.616 366.918 824.872 366.918Z" fill="#B8AFA3" />
        <path d="M809.462 366.918C804.898 367.153 803.768 372.494 806.674 375.341C809.712 378.321 814.408 376.53 814.511 372.348C814.584 369.457 812.221 366.918 809.462 366.918Z" fill="#B8AFA3" />
        <path d="M793.921 366.918C789.063 367.167 788.08 372.949 791.382 375.664C794.669 378.365 799.175 376.075 798.925 371.849C798.764 369.134 796.518 366.918 793.906 366.918" fill="#B8AFA3" />
        <path d="M778.13 366.918C773.243 367.167 772.172 372.949 775.459 375.664C778.658 378.306 783.311 375.987 783.12 371.849C782.988 369.134 780.757 366.918 778.13 366.918Z" fill="#B8AFA3" />
        <path d="M762.413 366.918C757.467 367.167 756.322 372.949 759.61 375.664C763.014 378.467 767.916 375.723 767.329 371.35C766.991 368.87 764.834 366.918 762.413 366.918Z" fill="#B8AFA3" />
        <path d="M619.591 366.918C614.733 367.167 613.001 372.949 615.922 375.664C618.945 378.482 624.037 375.738 623.935 371.35C623.876 368.87 621.968 366.918 619.591 366.918Z" fill="#B8AFA3" />
        <path d="M604.181 366.918C599.339 367.167 597.533 372.949 600.41 375.664C603.389 378.467 608.481 375.723 608.437 371.35C608.408 368.87 606.544 366.932 604.181 366.918Z" fill="#B8AFA3" />
        <path d="M499.985 366.918C495.245 367.182 493.205 373.478 496.023 375.943C498.973 378.541 504.05 374.798 503.566 370.366C503.346 368.327 501.864 366.903 499.985 366.903" fill="#B8AFA3" />
        <path d="M485.735 366.918C481.039 367.182 478.955 373.478 481.7 375.943C484.591 378.541 489.654 374.798 489.228 370.366C489.037 368.327 487.599 366.903 485.735 366.903" fill="#B8AFA3" />
        <path d="M471.471 366.918C466.833 367.182 464.676 373.478 467.362 375.943C470.179 378.541 475.242 374.798 474.876 370.366C474.714 368.327 473.305 366.903 471.471 366.903" fill="#B8AFA3" />
        <path d="M390.433 366.918C385.898 367.197 383.535 373.991 386.221 376.193C388.921 378.409 393.676 374.197 393.294 369.926C393.133 368.106 392.003 366.918 390.433 366.918Z" fill="#B8AFA3" />
        <path d="M364.971 366.918C360.568 367.197 358.088 373.991 360.627 376.193C363.18 378.409 367.906 374.197 367.656 369.926C367.554 368.106 366.497 366.918 364.971 366.918Z" fill="#B8AFA3" />
        <path d="M352.555 366.918C348.197 367.197 345.672 373.991 348.153 376.193C350.633 378.394 355.344 374.182 355.167 369.926C355.079 368.106 354.067 366.918 352.555 366.918Z" fill="#B8AFA3" />
        <path d="M271.473 366.918C267.349 367.226 264.634 374.52 266.953 376.413C269.272 378.291 273.88 373.096 273.44 369.09C273.293 367.725 272.559 366.918 271.473 366.918Z" fill="#B8AFA3" />
        <path d="M260.833 366.918C256.798 367.226 254.024 374.52 256.269 376.413C258.5 378.291 263.093 373.096 262.726 369.09C262.609 367.725 261.905 366.918 260.833 366.918Z" fill="#B8AFA3" />
        <path d="M250.428 366.918C246.481 367.226 243.663 374.52 245.806 376.413C247.963 378.291 252.512 373.096 252.234 369.09C252.131 367.725 251.456 366.918 250.428 366.918Z" fill="#B8AFA3" />
        <path d="M240.156 366.918C236.296 367.226 233.42 374.52 235.489 376.413C237.558 378.291 242.093 373.096 241.873 369.09C241.799 367.74 241.154 366.918 240.141 366.918" fill="#B8AFA3" />
        <path d="M230.264 366.918C226.493 367.226 223.572 374.52 225.568 376.413C227.549 378.291 232.055 373.096 231.923 369.09C231.879 367.74 231.262 366.918 230.279 366.918" fill="#B8AFA3" />
        <path d="M220.608 366.918C216.924 367.226 213.96 374.52 215.868 376.413C217.761 378.291 222.251 373.096 222.178 369.09C222.149 367.74 221.562 366.918 220.608 366.918Z" fill="#B8AFA3" />
        <path d="M211.23 366.918C207.371 367.241 204.538 375.121 206.637 376.574C208.897 378.13 213.329 372.069 212.654 368.356C212.419 367.108 211.656 366.918 211.23 366.918Z" fill="#B8AFA3" />
        <path d="M202.102 366.918C198.36 367.255 195.454 375.121 197.479 376.574C199.578 378.086 204.054 371.937 203.467 368.356C203.261 367.108 202.528 366.918 202.102 366.918Z" fill="#B8AFA3" />
        <path d="M193.253 366.918C189.613 367.255 186.663 375.121 188.586 376.574C190.655 378.13 195.043 372.054 194.544 368.356C194.368 367.108 193.664 366.918 193.253 366.918Z" fill="#B8AFA3" />
        <path d="M184.668 366.918C181.131 367.255 178.122 375.121 179.957 376.574C181.923 378.13 186.296 372.069 185.886 368.356C185.739 367.108 185.064 366.918 184.668 366.918Z" fill="#B8AFA3" />
        <path d="M176.273 366.918C172.854 367.255 169.787 375.121 171.533 376.574C173.353 378.071 177.755 371.937 177.432 368.356C177.315 367.108 176.655 366.918 176.273 366.918Z" fill="#B8AFA3" />
        <path d="M168.26 366.918C164.944 367.255 161.818 375.121 163.491 376.574C165.266 378.115 169.581 372.054 169.346 368.356C169.258 367.108 168.627 366.918 168.26 366.918Z" fill="#B8AFA3" />
        <path d="M160.541 366.918C157.342 367.255 154.157 375.121 155.742 376.574C157.415 378.115 161.715 372.054 161.554 368.356C161.495 367.108 160.893 366.918 160.541 366.918Z" fill="#B8AFA3" />
        <path d="M153.101 366.918C150.019 367.255 146.79 375.121 148.272 376.574C149.857 378.115 154.113 372.054 154.04 368.356C154.01 367.108 153.438 366.918 153.101 366.918Z" fill="#B8AFA3" />
        <path d="M145.968 366.918C144.354 367.094 142.608 369.897 141.903 371.35C140.685 373.889 140.406 376.193 141.257 376.706C143.048 377.778 147.392 370.763 146.775 367.769C146.658 367.211 146.394 366.932 145.954 366.932" fill="#B8AFA3" />
        <path d="M1329.39 351.523C1327.74 351.831 1331.73 359.683 1333.72 361.048C1334.49 361.576 1334.8 361.121 1334.54 359.83C1333.92 356.777 1330.63 351.509 1329.39 351.523Z" fill="#B8AFA3" />
        <path d="M1324.56 351.523C1322.78 351.831 1326.76 359.683 1328.81 361.048C1329.62 361.576 1329.97 361.121 1329.75 359.83C1329.21 356.777 1325.91 351.509 1324.56 351.523Z" fill="#B8AFA3" />
        <path d="M1281.85 351.523C1279.52 351.802 1282.22 358.494 1285.02 360.681C1286.45 361.796 1287.37 361.297 1287.21 359.492C1286.93 356.351 1283.69 351.523 1281.87 351.523" fill="#B8AFA3" />
        <path d="M1274.56 351.523C1272.12 351.802 1274.78 358.494 1277.63 360.681C1279.21 361.884 1280.18 361.209 1279.89 359.11C1279.45 355.911 1276.36 351.509 1274.56 351.523Z" fill="#B8AFA3" />
        <path d="M1266.88 351.523C1264.34 351.802 1266.94 358.494 1269.85 360.681C1271.46 361.884 1272.49 361.209 1272.24 359.11C1271.86 355.911 1268.75 351.509 1266.88 351.523Z" fill="#B8AFA3" />
        <path d="M1259 351.523C1256.49 351.787 1258.68 357.995 1261.56 360.431C1263.33 361.943 1264.59 361.341 1264.37 359.11C1264.05 355.911 1260.94 351.509 1259 351.523Z" fill="#B8AFA3" />
        <path d="M1250.86 351.523C1248.26 351.787 1250.39 357.995 1253.31 360.431C1255.11 361.943 1256.43 361.341 1256.26 359.11C1255.99 355.911 1252.87 351.509 1250.86 351.523Z" fill="#B8AFA3" />
        <path d="M1242.42 351.523C1239.73 351.787 1241.79 357.995 1244.77 360.431C1246.6 361.943 1247.98 361.341 1247.83 359.11C1247.63 355.911 1244.49 351.523 1242.42 351.523Z" fill="#B8AFA3" />
        <path d="M1233.72 351.523C1230.94 351.787 1232.94 357.995 1235.95 360.431C1237.93 362.031 1239.41 361.224 1239.1 358.714C1238.72 355.486 1235.74 351.523 1233.72 351.523Z" fill="#B8AFA3" />
        <path d="M1224.76 351.523C1221.9 351.787 1223.84 357.995 1226.89 360.431C1228.9 362.031 1230.44 361.224 1230.18 358.714C1229.84 355.486 1226.86 351.523 1224.76 351.523Z" fill="#B8AFA3" />
        <path d="M1215.53 351.523C1212.57 351.787 1214.43 357.995 1217.54 360.431C1219.58 362.031 1221.18 361.224 1220.96 358.714C1220.68 355.486 1217.69 351.523 1215.53 351.523Z" fill="#B8AFA3" />
        <path d="M1205.94 351.523C1203.03 351.773 1204.5 357.467 1207.51 360.152C1209.69 362.09 1211.57 361.4 1211.38 358.714C1211.15 355.486 1208.15 351.523 1205.94 351.523Z" fill="#B8AFA3" />
        <path d="M1196.19 351.523C1193.21 351.773 1194.61 357.467 1197.64 360.152C1199.85 362.09 1201.8 361.4 1201.65 358.714C1201.47 355.486 1198.47 351.523 1196.21 351.523" fill="#B8AFA3" />
        <path d="M1186.21 351.523C1183.14 351.773 1184.47 357.467 1187.53 360.152C1189.76 362.104 1191.77 361.4 1191.67 358.714C1191.55 355.486 1188.55 351.523 1186.21 351.523Z" fill="#B8AFA3" />
        <path d="M1175.98 351.523C1172.83 351.773 1174.08 357.467 1177.19 360.152C1179.58 362.222 1181.72 361.282 1181.43 358.289C1181.1 355.06 1178.26 351.523 1176 351.538" fill="#B8AFA3" />
        <path d="M1165.5 351.523C1162.29 351.773 1163.48 357.467 1166.59 360.152C1169.01 362.236 1171.2 361.282 1170.95 358.289C1170.67 355.06 1167.82 351.523 1165.5 351.538" fill="#B8AFA3" />
        <path d="M1154.79 351.523C1151.5 351.773 1152.62 357.467 1155.76 360.152C1158.2 362.222 1160.46 361.282 1160.24 358.289C1160.02 355.06 1157.15 351.523 1154.79 351.538" fill="#B8AFA3" />
        <path d="M1143.74 351.523C1140.37 351.773 1141.41 357.467 1144.58 360.152C1147.03 362.222 1149.36 361.282 1149.2 358.289C1149.02 355.06 1146.18 351.523 1143.76 351.538" fill="#B8AFA3" />
        <path d="M1132.57 351.523C1129.14 351.773 1130.11 357.467 1133.29 360.152C1135.93 362.368 1138.38 361.165 1137.99 357.834C1137.61 354.708 1134.88 351.523 1132.57 351.523Z" fill="#B8AFA3" />
        <path d="M1121.18 351.523C1117.68 351.773 1118.59 357.467 1121.79 360.152C1124.43 362.368 1126.95 361.15 1126.6 357.834C1126.26 354.708 1123.53 351.523 1121.18 351.523Z" fill="#B8AFA3" />
        <path d="M1109.59 351.523C1106.01 351.773 1106.85 357.467 1110.06 360.152C1112.72 362.368 1115.31 361.15 1115.01 357.834C1114.71 354.708 1111.98 351.523 1109.59 351.523Z" fill="#B8AFA3" />
        <path d="M1097.79 351.523C1094.15 351.773 1094.9 357.467 1098.14 360.152C1100.82 362.368 1103.47 361.15 1103.21 357.834C1102.96 354.708 1100.23 351.523 1097.79 351.523Z" fill="#B8AFA3" />
        <path d="M1085.77 351.523C1082.06 351.773 1082.75 357.467 1086.01 360.152C1088.69 362.368 1091.41 361.15 1091.2 357.834C1091 354.708 1088.27 351.523 1085.79 351.523" fill="#B8AFA3" />
        <path d="M1073.55 351.523C1069.78 351.773 1070.38 357.467 1073.65 360.152C1076.5 362.486 1079.39 360.945 1078.92 357.364C1078.52 354.356 1075.91 351.523 1073.55 351.523Z" fill="#B8AFA3" />
        <path d="M1060.99 351.523C1057.14 351.773 1057.68 357.467 1060.96 360.152C1063.8 362.486 1066.78 360.945 1066.34 357.364C1065.98 354.356 1063.36 351.523 1060.97 351.523" fill="#B8AFA3" />
        <path d="M1048.38 351.523C1044.7 351.758 1044.9 357.027 1047.87 359.83C1050.6 362.412 1053.85 361.297 1053.77 357.834C1053.69 354.708 1050.96 351.523 1048.36 351.523" fill="#B8AFA3" />
        <path d="M1035.58 351.523C1031.84 351.758 1031.97 357.027 1034.95 359.83C1037.68 362.412 1041 361.297 1040.97 357.834C1040.94 354.708 1038.22 351.523 1035.58 351.523Z" fill="#B8AFA3" />
        <path d="M1022.59 351.523C1018.79 351.758 1018.82 357.027 1021.82 359.83C1024.56 362.412 1027.95 361.297 1027.97 357.834C1027.98 354.708 1025.27 351.523 1022.59 351.523Z" fill="#B8AFA3" />
        <path d="M1009.43 351.523C1005.57 351.758 1005.54 357.027 1008.52 359.83C1011.47 362.603 1015.04 361.194 1014.77 357.364C1014.57 354.356 1011.97 351.523 1009.43 351.523Z" fill="#B8AFA3" />
        <path d="M996.061 351.523C992.158 351.758 992.055 357.027 995.034 359.83C997.984 362.603 1001.61 361.209 1001.39 357.364C1001.21 354.356 998.629 351.523 996.061 351.523Z" fill="#B8AFA3" />
        <path d="M982.413 351.523C978.465 351.758 978.289 357.027 981.254 359.83C984.204 362.618 987.887 361.209 987.726 357.364C987.594 354.356 985.011 351.523 982.413 351.523Z" fill="#B8AFA3" />
        <path d="M968.736 351.523C964.715 351.758 964.45 357.027 967.444 359.83C970.394 362.603 974.151 361.194 974.033 357.364C973.945 354.356 971.363 351.523 968.736 351.523Z" fill="#B8AFA3" />
        <path d="M954.867 351.523C950.817 351.758 950.494 357.027 953.458 359.83C956.408 362.603 960.209 361.209 960.15 357.364C960.092 354.356 957.524 351.523 954.867 351.523Z" fill="#B8AFA3" />
        <path d="M940.867 351.523C936.757 351.758 936.361 357.027 939.326 359.83C942.261 362.603 946.135 361.194 946.12 357.364C946.12 354.356 943.552 351.523 940.867 351.523Z" fill="#B8AFA3" />
        <path d="M926.72 351.523C922.566 351.758 922.097 357.027 925.046 359.83C927.982 362.603 931.915 361.194 931.944 357.364C931.973 354.356 929.434 351.523 926.705 351.523" fill="#B8AFA3" />
        <path d="M912.426 351.523C908.228 351.758 907.671 357.027 910.635 359.83C913.732 362.765 917.914 361.004 917.635 356.88C917.445 354.018 915.009 351.523 912.44 351.523" fill="#B8AFA3" />
        <path d="M897.985 351.523C893.744 351.758 893.113 357.027 896.062 359.83C899.144 362.765 903.4 361.004 903.165 356.88C903.004 354.018 900.583 351.523 897.985 351.523Z" fill="#B8AFA3" />
        <path d="M883.221 351.523C878.936 351.758 878.232 357.027 881.167 359.83C884.249 362.765 888.563 361.004 888.373 356.88C888.255 354.018 885.834 351.523 883.221 351.523Z" fill="#B8AFA3" />
        <path d="M868.502 351.523C864.173 351.758 863.395 357.027 866.315 359.83C869.382 362.765 873.756 361.004 873.624 356.88C873.536 354.018 871.143 351.523 868.487 351.523" fill="#B8AFA3" />
        <path d="M853.65 351.523C849.277 351.758 848.426 357.027 851.331 359.83C854.384 362.765 858.816 361.004 858.743 356.88C858.699 354.018 856.307 351.523 853.636 351.523" fill="#B8AFA3" />
        <path d="M838.681 351.523C834.279 351.758 833.339 357.027 836.245 359.83C839.283 362.765 843.788 361.004 843.759 356.88C843.759 354.018 841.367 351.523 838.681 351.523Z" fill="#B8AFA3" />
        <path d="M823.58 351.523C819.119 351.758 818.091 357.027 820.997 359.83C824.035 362.765 828.599 361.004 828.629 356.88C828.658 354.018 826.295 351.523 823.58 351.523Z" fill="#B8AFA3" />
        <path d="M808.362 351.523C803.856 351.758 802.77 357.027 805.647 359.83C808.67 362.765 813.293 361.004 813.381 356.88C813.439 354.033 811.106 351.523 808.376 351.523" fill="#B8AFA3" />
        <path d="M793.026 351.523C788.506 351.758 787.346 357.027 790.193 359.83C793.187 362.779 797.854 361.004 798.001 356.88C798.103 354.018 795.77 351.523 793.026 351.523Z" fill="#B8AFA3" />
        <path d="M777.426 351.523C772.598 351.773 771.556 357.467 774.814 360.152C777.983 362.765 782.577 360.475 782.371 356.381C782.239 353.695 780.023 351.523 777.426 351.523Z" fill="#B8AFA3" />
        <path d="M636.159 351.523C631.331 351.773 629.643 357.467 632.579 360.152C635.616 362.926 640.665 360.226 640.518 355.897C640.445 353.446 638.522 351.538 636.159 351.538" fill="#B8AFA3" />
        <path d="M620.824 351.523C616.025 351.773 614.278 357.467 617.155 360.152C620.134 362.926 625.182 360.226 625.094 355.897C625.05 353.446 623.172 351.538 620.824 351.538" fill="#B8AFA3" />
        <path d="M605.605 351.523C600.821 351.773 599.016 357.467 601.833 360.152C604.754 362.926 609.802 360.211 609.787 355.897C609.773 353.446 607.938 351.538 605.605 351.538" fill="#B8AFA3" />
        <path d="M502.7 351.523C498.019 351.787 495.935 357.995 498.694 360.431C501.585 362.999 506.648 359.301 506.208 354.943C506.002 352.932 504.564 351.523 502.7 351.523Z" fill="#B8AFA3" />
        <path d="M488.612 351.523C483.974 351.787 481.846 357.995 484.532 360.431C487.364 362.999 492.413 359.301 492.031 354.943C491.855 352.932 490.446 351.523 488.612 351.523Z" fill="#B8AFA3" />
        <path d="M474.538 351.523C469.959 351.787 467.758 357.995 470.385 360.431C473.144 362.999 478.178 359.301 477.869 354.943C477.723 352.932 476.358 351.523 474.538 351.523Z" fill="#B8AFA3" />
        <path d="M407.5 351.523C402.936 351.802 400.559 358.494 403.259 360.681C405.959 362.853 410.744 358.7 410.362 354.502C410.201 352.697 409.071 351.538 407.5 351.538" fill="#B8AFA3" />
        <path d="M394.483 351.523C390.007 351.802 387.571 358.494 390.183 360.681C392.81 362.867 397.58 358.7 397.272 354.502C397.139 352.697 396.039 351.538 394.483 351.538" fill="#B8AFA3" />
        <path d="M381.818 351.523C377.401 351.802 374.906 358.494 377.46 360.681C380.013 362.867 384.768 358.7 384.519 354.502C384.416 352.697 383.359 351.538 381.818 351.538" fill="#B8AFA3" />
        <path d="M333.066 351.714C329.074 351.978 326.462 358.435 328.634 360.534C330.821 362.647 335.341 358.641 335.341 354.576C335.341 352.844 334.46 351.729 333.066 351.729" fill="#B8AFA3" />
        <path d="M287.748 351.523C283.58 351.831 280.807 359.022 283.14 360.886C285.474 362.75 290.14 357.614 289.715 353.666C289.568 352.33 288.834 351.523 287.734 351.523" fill="#B8AFA3" />
        <path d="M276.991 351.523C272.911 351.831 270.079 359.022 272.339 360.886C274.584 362.75 279.251 357.614 278.899 353.666C278.782 352.33 278.077 351.523 277.006 351.523" fill="#B8AFA3" />
        <path d="M266.483 351.523C262.477 351.831 259.601 359.022 261.773 360.886C263.945 362.75 268.582 357.614 268.303 353.666C268.215 352.33 267.525 351.523 266.483 351.523Z" fill="#B8AFA3" />
        <path d="M256.211 351.523C252.292 351.831 249.357 359.022 251.456 360.886C253.54 362.75 258.162 357.614 257.957 353.666C257.884 352.33 257.238 351.523 256.211 351.523Z" fill="#B8AFA3" />
        <path d="M246.07 351.523C242.254 351.831 239.26 359.022 241.256 360.886C243.252 362.735 247.846 357.614 247.728 353.666C247.684 352.33 247.068 351.523 246.07 351.523Z" fill="#B8AFA3" />
        <path d="M236.281 351.523C232.554 351.831 229.501 359.022 231.424 360.886C233.346 362.735 237.91 357.614 237.852 353.666C237.837 352.33 237.25 351.523 236.267 351.523" fill="#B8AFA3" />
        <path d="M226.757 351.523C223.117 351.831 220.021 359.022 221.855 360.886C223.69 362.735 228.224 357.614 228.254 353.666C228.254 352.33 227.696 351.523 226.757 351.523Z" fill="#B8AFA3" />
        <path d="M217.497 351.523C213.666 351.846 210.687 359.609 212.742 361.048C214.943 362.574 219.463 356.601 218.861 352.947C218.656 351.714 217.922 351.523 217.482 351.523" fill="#B8AFA3" />
        <path d="M208.471 351.523C204.758 351.846 201.72 359.609 203.672 361.048C205.712 362.53 210.276 356.484 209.777 352.947C209.601 351.714 208.882 351.523 208.457 351.523" fill="#B8AFA3" />
        <path d="M199.739 351.523C196.129 351.846 193.033 359.609 194.896 361.048C196.892 362.574 201.383 356.601 200.972 352.947C200.84 351.714 200.136 351.523 199.725 351.523" fill="#B8AFA3" />
        <path d="M191.257 351.523C187.749 351.846 184.594 359.609 186.385 361.048C188.292 362.574 192.768 356.601 192.431 352.947C192.313 351.714 191.653 351.523 191.257 351.523Z" fill="#B8AFA3" />
        <path d="M182.965 351.523C179.575 351.846 176.347 359.609 178.049 361.048C179.81 362.53 184.315 356.469 184.081 352.947C183.992 351.714 183.347 351.523 182.965 351.523Z" fill="#B8AFA3" />
        <path d="M175.055 351.523C171.768 351.846 168.495 359.609 170.095 361.048C171.812 362.574 176.229 356.586 176.082 352.947C176.038 351.714 175.407 351.523 175.055 351.523Z" fill="#B8AFA3" />
        <path d="M167.424 351.523C164.254 351.846 160.923 359.609 162.434 361.048C164.048 362.574 168.451 356.601 168.378 352.947C168.363 351.714 167.761 351.523 167.424 351.523Z" fill="#B8AFA3" />
        <path d="M160.086 351.523C157.034 351.846 153.643 359.609 155.067 361.048C156.593 362.574 160.952 356.586 160.981 352.947C160.981 351.714 160.424 351.523 160.086 351.523Z" fill="#B8AFA3" />
        <path d="M153.027 351.523C151.428 351.699 149.637 354.458 148.903 355.882C147.627 358.391 147.289 360.666 148.126 361.165C149.96 362.28 154.627 354.737 153.746 352.11C153.57 351.597 153.218 351.523 153.027 351.523Z" fill="#B8AFA3" />
        <path d="M107.577 351.523C106.726 351.67 105.244 353.578 103.791 356.381C102.705 358.494 101.942 360.96 102.558 361.238C103.908 361.855 108.56 353.504 107.856 351.743C107.797 351.611 107.695 351.523 107.562 351.523" fill="#B8AFA3" />
        <path d="M1321.46 336.363C1319.85 336.671 1324.01 344.42 1326.01 345.77C1326.72 346.255 1327.04 345.917 1326.86 344.89C1326.36 341.999 1322.78 336.349 1321.46 336.363Z" fill="#B8AFA3" />
        <path d="M1316.79 336.54C1315.11 336.833 1319.1 344.288 1321.09 345.58C1321.87 346.079 1322.21 345.638 1321.95 344.435C1321.34 341.544 1318.06 336.525 1316.78 336.54" fill="#B8AFA3" />
        <path d="M1274.56 336.363C1272.25 336.642 1275.12 343.261 1277.93 345.403C1279.37 346.504 1280.27 346.005 1280.06 344.229C1279.71 341.133 1276.36 336.349 1274.56 336.363Z" fill="#B8AFA3" />
        <path d="M1267.35 336.363C1264.95 336.642 1267.75 343.261 1270.63 345.403C1272.21 346.592 1273.15 345.932 1272.81 343.863C1272.3 340.693 1269.13 336.349 1267.34 336.363" fill="#B8AFA3" />
        <path d="M1259.77 336.363C1257.39 336.627 1259.77 342.762 1262.63 345.169C1264.26 346.548 1265.43 346.137 1265.3 344.244C1265.06 341.148 1261.7 336.363 1259.77 336.378" fill="#B8AFA3" />
        <path d="M1252 336.363C1249.54 336.627 1251.86 342.762 1254.76 345.169C1256.55 346.651 1257.78 346.064 1257.51 343.862C1257.11 340.693 1253.91 336.349 1252 336.363Z" fill="#B8AFA3" />
        <path d="M1243.95 336.363C1241.38 336.627 1243.64 342.762 1246.6 345.169C1248.42 346.651 1249.71 346.064 1249.48 343.863C1249.14 340.707 1245.94 336.349 1243.96 336.363" fill="#B8AFA3" />
        <path d="M1235.62 336.363C1232.97 336.627 1235.17 342.762 1238.16 345.169C1240.01 346.651 1241.36 346.064 1241.16 343.863C1240.88 340.707 1237.66 336.349 1235.62 336.363Z" fill="#B8AFA3" />
        <path d="M1227.04 336.363C1224.29 336.627 1226.42 342.762 1229.48 345.169C1231.47 346.754 1232.91 345.961 1232.56 343.466C1232.1 340.267 1229.06 336.363 1227.05 336.363" fill="#B8AFA3" />
        <path d="M1218.19 336.363C1215.36 336.627 1217.43 342.762 1220.51 345.169C1222.53 346.754 1224.03 345.961 1223.71 343.466C1223.3 340.267 1220.26 336.363 1218.19 336.363Z" fill="#B8AFA3" />
        <path d="M1209.09 336.363C1206.29 336.613 1207.93 342.234 1210.94 344.89C1212.99 346.695 1214.73 346.211 1214.64 343.862C1214.54 340.707 1211.31 336.363 1209.08 336.363" fill="#B8AFA3" />
        <path d="M1199.61 336.363C1196.75 336.613 1198.32 342.234 1201.36 344.89C1203.56 346.812 1205.39 346.108 1205.16 343.466C1204.86 340.267 1201.8 336.363 1199.61 336.363Z" fill="#B8AFA3" />
        <path d="M1190 336.363C1187.05 336.613 1188.56 342.234 1191.63 344.89C1193.84 346.812 1195.75 346.108 1195.55 343.466C1195.3 340.267 1192.24 336.363 1190 336.363Z" fill="#B8AFA3" />
        <path d="M1180.15 336.363C1177.13 336.613 1178.57 342.234 1181.65 344.89C1183.89 346.812 1185.86 346.123 1185.7 343.466C1185.51 340.282 1182.44 336.363 1180.15 336.363Z" fill="#B8AFA3" />
        <path d="M1170.05 336.363C1166.94 336.613 1168.31 342.234 1171.43 344.89C1173.69 346.812 1175.72 346.108 1175.62 343.466C1175.48 340.282 1172.42 336.363 1170.07 336.363" fill="#B8AFA3" />
        <path d="M1159.71 336.363C1156.54 336.613 1157.83 342.234 1160.97 344.89C1163.41 346.944 1165.55 346.005 1165.23 343.041C1164.87 339.856 1162 336.349 1159.71 336.363Z" fill="#B8AFA3" />
        <path d="M1149.14 336.363C1145.9 336.613 1147.12 342.234 1150.27 344.89C1152.71 346.93 1154.92 346.005 1154.66 343.041C1154.38 339.915 1151.43 336.349 1149.14 336.363Z" fill="#B8AFA3" />
        <path d="M1138.24 336.363C1134.91 336.613 1136.05 342.234 1139.24 344.89C1141.7 346.93 1143.98 346.005 1143.76 343.041C1143.52 339.856 1140.63 336.349 1138.24 336.363Z" fill="#B8AFA3" />
        <path d="M1127.2 336.363C1123.81 336.613 1124.88 342.234 1128.08 344.89C1130.56 346.944 1132.9 346.005 1132.72 343.041C1132.53 339.856 1129.64 336.349 1127.2 336.363Z" fill="#B8AFA3" />
        <path d="M1115.97 336.363C1112.51 336.613 1113.51 342.234 1116.74 344.89C1119.39 347.076 1121.86 345.873 1121.45 342.6C1121.07 339.504 1118.29 336.363 1115.97 336.363Z" fill="#B8AFA3" />
        <path d="M1104.53 336.363C1100.99 336.613 1101.93 342.234 1105.16 344.89C1107.83 347.076 1110.37 345.873 1110 342.6C1109.66 339.504 1106.89 336.363 1104.53 336.363Z" fill="#B8AFA3" />
        <path d="M1092.88 336.363C1089.28 336.613 1090.13 342.234 1093.37 344.89C1096.06 347.076 1098.66 345.873 1098.33 342.6C1098.04 339.504 1095.27 336.363 1092.86 336.363" fill="#B8AFA3" />
        <path d="M1081.02 336.363C1077.57 336.598 1078.07 341.808 1081.03 344.582C1083.63 347.003 1086.48 346.196 1086.49 343.055C1086.49 339.871 1083.63 336.363 1081.02 336.378" fill="#B8AFA3" />
        <path d="M1068.95 336.363C1065.45 336.598 1065.87 341.808 1068.85 344.582C1071.58 347.12 1074.65 346.034 1074.41 342.615C1074.21 339.519 1071.45 336.378 1068.95 336.378" fill="#B8AFA3" />
        <path d="M1056.55 336.363C1052.97 336.598 1053.33 341.808 1056.32 344.582C1059.05 347.12 1062.19 346.034 1062 342.615C1061.84 339.519 1059.09 336.378 1056.55 336.378" fill="#B8AFA3" />
        <path d="M1044.11 336.363C1040.47 336.598 1040.75 341.808 1043.74 344.582C1046.47 347.12 1049.67 346.034 1049.54 342.615C1049.42 339.519 1046.68 336.378 1044.11 336.378" fill="#B8AFA3" />
        <path d="M1031.47 336.363C1027.79 336.598 1027.98 341.808 1030.97 344.582C1033.72 347.12 1036.98 346.034 1036.89 342.615C1036.82 339.519 1034.09 336.378 1031.47 336.378" fill="#B8AFA3" />
        <path d="M1018.66 336.363C1014.9 336.598 1015.02 341.808 1018.02 344.582C1020.76 347.12 1024.09 346.034 1024.06 342.615C1024.03 339.519 1021.3 336.378 1018.66 336.378" fill="#B8AFA3" />
        <path d="M1005.66 336.363C1001.84 336.598 1001.89 341.808 1004.88 344.582C1007.63 347.12 1011.02 346.034 1011.03 342.615C1011.04 339.519 1008.33 336.378 1005.66 336.378" fill="#B8AFA3" />
        <path d="M992.481 336.363C988.621 336.598 988.606 341.808 991.585 344.582C994.535 347.326 998.087 345.932 997.822 342.145C997.617 339.166 995.019 336.363 992.481 336.363Z" fill="#B8AFA3" />
        <path d="M979.008 336.363C975.105 336.598 975.002 341.808 977.966 344.582C980.916 347.326 984.541 345.946 984.321 342.145C984.159 339.166 981.562 336.363 978.994 336.363" fill="#B8AFA3" />
        <path d="M965.507 336.363C961.53 336.598 961.339 341.808 964.333 344.582C967.283 347.311 970.966 345.932 970.819 342.145C970.702 339.166 968.119 336.363 965.522 336.363" fill="#B8AFA3" />
        <path d="M951.815 336.363C947.808 336.598 947.544 341.808 950.523 344.582C953.458 347.326 957.215 345.932 957.098 342.145C957.01 339.166 954.442 336.363 951.815 336.363Z" fill="#B8AFA3" />
        <path d="M938.005 336.363C933.955 336.598 933.617 341.808 936.581 344.582C939.502 347.311 943.318 345.932 943.259 342.145C943.215 339.166 940.661 336.363 938.005 336.363Z" fill="#B8AFA3" />
        <path d="M924.034 336.363C919.925 336.598 919.514 341.808 922.478 344.582C925.399 347.311 929.273 345.932 929.273 342.145C929.273 339.166 926.734 336.363 924.049 336.363" fill="#B8AFA3" />
        <path d="M909.916 336.363C905.763 336.598 905.279 341.808 908.214 344.582C911.12 347.311 915.053 345.932 915.111 342.145C915.155 339.166 912.631 336.363 909.916 336.363Z" fill="#B8AFA3" />
        <path d="M881.093 336.363C876.852 336.598 876.207 341.808 879.127 344.582C882.194 347.487 886.435 345.741 886.23 341.676C886.083 338.843 883.691 336.378 881.093 336.378" fill="#B8AFA3" />
        <path d="M851.919 336.363C847.604 336.598 846.797 341.808 849.688 344.582C852.726 347.487 857.084 345.741 856.996 341.676C856.923 338.843 854.56 336.378 851.919 336.378" fill="#B8AFA3" />
        <path d="M837.14 336.363C832.782 336.598 831.886 341.808 834.778 344.582C837.801 347.487 842.218 345.741 842.174 341.676C842.145 338.843 839.782 336.378 837.126 336.378" fill="#B8AFA3" />
        <path d="M822.23 336.349C817.813 336.583 816.844 341.793 819.721 344.567C822.729 347.473 827.234 345.726 827.234 341.661C827.234 338.843 824.901 336.363 822.23 336.363" fill="#B8AFA3" />
        <path d="M807.217 336.349C802.77 336.583 801.714 341.793 804.575 344.567C807.569 347.473 812.119 345.726 812.192 341.661C812.236 338.843 809.917 336.363 807.217 336.363" fill="#B8AFA3" />
        <path d="M792.072 336.349C787.596 336.583 786.48 341.793 789.313 344.567C792.277 347.473 796.885 345.726 797.003 341.661C797.091 338.829 794.787 336.363 792.072 336.363" fill="#B8AFA3" />
        <path d="M776.677 336.349C772.172 336.583 770.968 341.793 773.772 344.567C776.839 347.59 781.799 345.433 781.564 341.162C781.417 338.506 779.231 336.349 776.677 336.349Z" fill="#B8AFA3" />
        <path d="M533.783 336.349C529.058 336.613 527.076 342.747 529.909 345.154C532.947 347.737 537.907 344.141 537.379 339.724C537.144 337.699 535.691 336.349 533.783 336.349Z" fill="#B8AFA3" />
        <path d="M519.548 336.54C515.042 336.789 513.076 342.689 515.732 344.993C518.52 347.429 523.363 343.921 522.938 339.783C522.732 337.875 521.338 336.54 519.548 336.54Z" fill="#B8AFA3" />
        <path d="M505.533 336.349C500.895 336.613 498.782 342.747 501.482 345.154C504.315 347.678 509.334 344.024 508.952 339.724C508.776 337.743 507.367 336.349 505.533 336.349Z" fill="#B8AFA3" />
        <path d="M491.635 336.349C487.042 336.613 484.87 342.747 487.511 345.154C490.27 347.678 495.289 344.024 494.981 339.724C494.834 337.743 493.455 336.349 491.65 336.349" fill="#B8AFA3" />
        <path d="M477.737 336.349C473.203 336.613 470.957 342.747 473.525 345.154C476.211 347.678 481.23 344.024 480.981 339.724C480.863 337.743 479.528 336.349 477.737 336.349Z" fill="#B8AFA3" />
        <path d="M398.724 336.349C394.292 336.627 391.783 343.246 394.336 345.389C396.89 347.546 401.66 343.437 401.425 339.284C401.322 337.508 400.265 336.349 398.724 336.349Z" fill="#B8AFA3" />
        <path d="M386.221 336.349C381.848 336.627 379.279 343.246 381.759 345.389C384.24 347.546 389.009 343.422 388.833 339.284C388.76 337.508 387.732 336.349 386.221 336.349Z" fill="#B8AFA3" />
        <path d="M373.849 336.54C369.682 336.804 367.157 343.158 369.491 345.227C371.81 347.282 376.388 343.334 376.286 339.357C376.242 337.64 375.288 336.54 373.864 336.54" fill="#B8AFA3" />
        <path d="M338.173 336.349C334.064 336.627 331.261 343.246 333.448 345.389C335.634 347.531 340.345 343.422 340.433 339.284C340.477 337.508 339.582 336.349 338.173 336.349Z" fill="#B8AFA3" />
        <path d="M304.2 336.349C299.988 336.642 297.17 343.76 299.518 345.594C301.925 347.487 306.606 342.483 306.181 338.462C306.049 337.141 305.3 336.349 304.2 336.349Z" fill="#B8AFA3" />
        <path d="M293.369 336.349C289.245 336.642 286.354 343.76 288.629 345.594C290.962 347.487 295.614 342.483 295.277 338.462C295.159 337.141 294.455 336.349 293.369 336.349Z" fill="#B8AFA3" />
        <path d="M282.759 336.349C278.708 336.642 275.773 343.76 277.96 345.594C280.205 347.487 284.857 342.483 284.578 338.462C284.49 337.141 283.815 336.349 282.759 336.349Z" fill="#B8AFA3" />
        <path d="M272.383 336.349C268.421 336.642 265.412 343.76 267.525 345.594C269.683 347.487 274.32 342.483 274.129 338.462C274.071 337.141 273.41 336.349 272.383 336.349Z" fill="#B8AFA3" />
        <path d="M262.242 336.349C258.368 336.642 255.301 343.76 257.326 345.594C259.41 347.473 264.018 342.483 263.901 338.462C263.857 337.141 263.24 336.349 262.228 336.349" fill="#B8AFA3" />
        <path d="M252.234 336.349C248.447 336.642 245.321 343.76 247.273 345.594C249.269 347.473 253.862 342.483 253.818 338.462C253.818 337.141 253.217 336.349 252.234 336.349Z" fill="#B8AFA3" />
        <path d="M242.577 336.349C238.879 336.642 235.709 343.76 237.573 345.594C239.481 347.473 244.045 342.483 244.089 338.462C244.089 337.141 243.546 336.349 242.577 336.349Z" fill="#B8AFA3" />
        <path d="M233.185 336.349C229.31 336.671 226.243 344.347 228.312 345.756C230.528 347.267 235.151 341.353 234.564 337.757C234.373 336.539 233.61 336.349 233.185 336.349Z" fill="#B8AFA3" />
        <path d="M224.042 336.349C220.256 336.671 217.115 344.347 219.126 345.756C221.254 347.267 225.862 341.353 225.363 337.757C225.201 336.539 224.467 336.349 224.042 336.349Z" fill="#B8AFA3" />
        <path d="M215.134 336.349C211.45 336.671 208.266 344.347 210.159 345.756C212.199 347.267 216.807 341.368 216.396 337.757C216.264 336.539 215.545 336.349 215.134 336.349Z" fill="#B8AFA3" />
        <path d="M206.505 336.349C202.924 336.671 199.666 344.347 201.486 345.756C203.423 347.267 208.002 341.353 207.693 337.757C207.591 336.539 206.901 336.349 206.505 336.349Z" fill="#B8AFA3" />
        <path d="M198.14 336.349C194.662 336.671 191.345 344.347 193.077 345.756C194.926 347.267 199.49 341.353 199.255 337.757C199.182 336.539 198.521 336.349 198.14 336.349Z" fill="#B8AFA3" />
        <path d="M189.965 336.349C186.605 336.671 183.215 344.347 184.858 345.756C186.619 347.267 191.169 341.353 191.022 337.757C190.978 336.539 190.332 336.349 189.965 336.349Z" fill="#B8AFA3" />
        <path d="M182.143 336.349C178.885 336.671 175.451 344.347 177.007 345.756C178.651 347.253 183.185 341.353 183.127 337.757C183.112 336.539 182.51 336.349 182.143 336.349Z" fill="#B8AFA3" />
        <path d="M174.615 336.349C171.474 336.671 167.967 344.347 169.434 345.756C170.99 347.253 175.481 341.353 175.525 337.757C175.525 336.539 174.967 336.349 174.615 336.349Z" fill="#B8AFA3" />
        <path d="M167.365 336.349C164.327 336.671 160.776 344.347 162.155 345.756C163.608 347.253 168.084 341.338 168.202 337.757C168.246 336.539 167.688 336.349 167.365 336.349Z" fill="#B8AFA3" />
        <path d="M160.409 336.349C158.824 336.525 156.975 339.254 156.212 340.663C154.891 343.143 154.495 345.374 155.302 345.873C157.078 346.959 161.906 339.519 161.099 336.921C160.952 336.422 160.6 336.349 160.394 336.349" fill="#B8AFA3" />
        <path d="M120.051 336.349C117.806 336.701 113.932 345.007 114.739 345.873C115.751 346.944 120.477 339.504 120.418 336.921C120.418 336.422 120.183 336.349 120.051 336.349Z" fill="#B8AFA3" />
        <path d="M1308.52 321.424C1306.82 321.732 1311.11 329.349 1313.2 330.669C1314.02 331.183 1314.34 330.743 1314.04 329.495C1313.33 326.531 1309.82 321.409 1308.52 321.424Z" fill="#B8AFA3" />
        <path d="M1292.57 321.585C1290.69 321.864 1294.22 328.659 1296.62 330.347C1297.64 331.066 1298.17 330.684 1297.97 329.363C1297.5 326.516 1294.08 321.571 1292.58 321.585" fill="#B8AFA3" />
        <path d="M1286.64 321.585C1284.74 321.849 1287.78 328.116 1290.35 330.156C1291.55 331.11 1292.24 330.787 1292.05 329.363C1291.66 326.516 1288.22 321.571 1286.64 321.585Z" fill="#B8AFA3" />
        <path d="M1280.31 321.424C1278.24 321.688 1281.34 328.204 1284.07 330.317C1285.35 331.315 1286.12 330.978 1285.96 329.495C1285.62 326.546 1282.04 321.409 1280.33 321.424" fill="#B8AFA3" />
        <path d="M1273.77 321.424C1271.61 321.703 1274.65 328.204 1277.42 330.317C1278.84 331.403 1279.67 330.919 1279.37 329.158C1278.87 326.105 1275.47 321.409 1273.75 321.424" fill="#B8AFA3" />
        <path d="M1266.94 321.424C1264.68 321.688 1267.68 328.204 1270.51 330.317C1271.95 331.389 1272.83 330.904 1272.58 329.158C1272.14 326.105 1268.73 321.409 1266.96 321.424" fill="#B8AFA3" />
        <path d="M1259.84 321.424C1257.59 321.688 1260.16 327.705 1262.99 330.082C1264.64 331.462 1265.71 331.066 1265.47 329.158C1265.11 326.105 1261.69 321.409 1259.84 321.424Z" fill="#B8AFA3" />
        <path d="M1252.37 321.424C1250.04 321.688 1252.53 327.705 1255.42 330.082C1257.07 331.433 1258.21 331.036 1258.03 329.158C1257.73 326.105 1254.29 321.409 1252.38 321.424" fill="#B8AFA3" />
        <path d="M1244.71 321.424C1242.29 321.688 1244.71 327.705 1247.64 330.082C1249.35 331.462 1250.51 331.066 1250.36 329.158C1250.12 326.105 1246.69 321.409 1244.69 321.424" fill="#B8AFA3" />
        <path d="M1236.77 321.424C1234.24 321.688 1236.62 327.705 1239.6 330.082C1241.44 331.55 1242.7 330.978 1242.4 328.806C1241.99 325.694 1238.72 321.424 1236.77 321.438" fill="#B8AFA3" />
        <path d="M1228.57 321.424C1225.95 321.688 1228.27 327.705 1231.28 330.082C1233.14 331.55 1234.45 330.978 1234.2 328.806C1233.85 325.694 1230.58 321.424 1228.57 321.438" fill="#B8AFA3" />
        <path d="M1220.1 321.424C1217.4 321.688 1219.64 327.705 1222.7 330.082C1224.59 331.55 1225.95 330.978 1225.75 328.806C1225.45 325.694 1222.18 321.424 1220.1 321.438" fill="#B8AFA3" />
        <path d="M1211.37 321.424C1208.71 321.673 1210.53 327.206 1213.52 329.804C1215.56 331.579 1217.19 331.11 1217.02 328.791C1216.78 325.68 1213.51 321.409 1211.37 321.424Z" fill="#B8AFA3" />
        <path d="M1202.38 321.424C1199.64 321.673 1201.37 327.206 1204.41 329.804C1206.48 331.579 1208.17 331.11 1208.03 328.791C1207.86 325.68 1204.59 321.409 1202.38 321.424Z" fill="#B8AFA3" />
        <path d="M1193.04 321.424C1190.22 321.673 1191.89 327.206 1194.94 329.804C1197.03 331.579 1198.77 331.11 1198.69 328.791C1198.57 325.68 1195.3 321.409 1193.04 321.424Z" fill="#B8AFA3" />
        <path d="M1183.56 321.424C1180.66 321.673 1182.26 327.206 1185.35 329.804C1187.58 331.697 1189.44 331.007 1189.18 328.409C1188.87 325.269 1185.76 321.424 1183.56 321.438" fill="#B8AFA3" />
        <path d="M1173.84 321.424C1170.88 321.673 1172.4 327.191 1175.5 329.804C1177.76 331.697 1179.68 331.022 1179.46 328.409C1179.2 325.269 1176.1 321.424 1173.84 321.438" fill="#B8AFA3" />
        <path d="M1163.88 321.424C1160.81 321.673 1162.28 327.206 1165.4 329.804C1167.68 331.697 1169.66 331.007 1169.5 328.409C1169.29 325.269 1166.19 321.424 1163.88 321.438" fill="#B8AFA3" />
        <path d="M1153.68 321.424C1150.55 321.673 1151.94 327.206 1155.09 329.804C1157.52 331.829 1159.63 330.904 1159.25 327.984C1158.84 324.843 1155.92 321.409 1153.68 321.424Z" fill="#B8AFA3" />
        <path d="M1143.26 321.424C1140.06 321.673 1141.38 327.206 1144.55 329.804C1147 331.814 1149.16 330.904 1148.83 327.984C1148.48 324.843 1145.56 321.409 1143.26 321.424Z" fill="#B8AFA3" />
        <path d="M1132.5 321.424C1129.21 321.673 1130.46 327.206 1133.64 329.804C1136.11 331.814 1138.34 330.904 1138.06 327.984C1137.77 324.858 1134.85 321.424 1132.48 321.424" fill="#B8AFA3" />
        <path d="M1121.63 321.424C1118.29 321.673 1119.45 327.206 1122.65 329.804C1125.13 331.829 1127.42 330.904 1127.19 327.984C1126.94 324.843 1124.02 321.409 1121.61 321.424" fill="#B8AFA3" />
        <path d="M1110.54 321.424C1107.14 321.673 1108.23 327.206 1111.45 329.804C1114.11 331.961 1116.53 330.772 1116.06 327.558C1115.62 324.52 1112.83 321.424 1110.54 321.424Z" fill="#B8AFA3" />
        <path d="M1099.26 321.424C1095.99 321.659 1096.72 326.766 1099.68 329.495C1102.28 331.873 1104.95 331.095 1104.81 327.984C1104.66 324.858 1101.75 321.424 1099.26 321.424Z" fill="#B8AFA3" />
        <path d="M1087.77 321.424C1084.44 321.659 1085.08 326.766 1088.06 329.495C1090.66 331.873 1093.4 331.095 1093.3 327.984C1093.2 324.858 1090.31 321.424 1087.77 321.424Z" fill="#B8AFA3" />
        <path d="M1076.07 321.424C1072.68 321.659 1073.25 326.766 1076.23 329.495C1078.83 331.873 1081.63 331.095 1081.59 327.984C1081.55 324.858 1078.66 321.424 1076.07 321.424Z" fill="#B8AFA3" />
        <path d="M1064.17 321.424C1060.71 321.659 1061.22 326.766 1064.2 329.495C1066.93 332.005 1069.94 330.934 1069.66 327.558C1069.39 324.52 1066.64 321.424 1064.19 321.424" fill="#B8AFA3" />
        <path d="M1051.95 321.424C1048.42 321.659 1048.86 326.766 1051.83 329.495C1054.57 332.005 1057.64 330.934 1057.4 327.558C1057.2 324.52 1054.44 321.424 1051.95 321.424Z" fill="#B8AFA3" />
        <path d="M1039.66 321.424C1036.08 321.659 1036.43 326.766 1039.41 329.495C1042.16 332.005 1045.3 330.934 1045.11 327.558C1044.95 324.52 1042.19 321.424 1039.66 321.424Z" fill="#B8AFA3" />
        <path d="M1027.2 321.424C1023.58 321.659 1023.84 326.766 1026.82 329.495C1029.57 332.005 1032.76 330.934 1032.63 327.558C1032.52 324.52 1029.77 321.424 1027.2 321.424Z" fill="#B8AFA3" />
        <path d="M1014.57 321.424C1010.87 321.659 1011.06 326.766 1014.04 329.495C1016.78 332.005 1020.06 330.934 1019.97 327.558C1019.89 324.52 1017.16 321.424 1014.55 321.424" fill="#B8AFA3" />
        <path d="M1001.74 321.424C997.984 321.659 998.101 326.766 1001.08 329.495C1003.82 332.005 1007.16 330.934 1007.13 327.558C1007.1 324.52 1004.38 321.424 1001.74 321.424Z" fill="#B8AFA3" />
        <path d="M988.738 321.424C984.952 321.659 984.981 326.766 987.96 329.495C990.91 332.196 994.403 330.831 994.08 327.103C993.831 324.183 991.233 321.424 988.738 321.424Z" fill="#B8AFA3" />
        <path d="M975.457 321.424C971.612 321.659 971.568 326.766 974.532 329.495C977.467 332.196 981.034 330.831 980.784 327.103C980.579 324.183 977.996 321.424 975.472 321.424" fill="#B8AFA3" />
        <path d="M962.132 321.424C958.213 321.659 958.096 326.766 961.06 329.495C963.995 332.196 967.62 330.831 967.429 327.103C967.268 324.183 964.7 321.424 962.132 321.424Z" fill="#B8AFA3" />
        <path d="M948.645 321.424C944.697 321.659 944.506 326.766 947.456 329.495C950.391 332.196 954.075 330.831 953.913 327.103C953.796 324.183 951.228 321.424 948.645 321.424Z" fill="#B8AFA3" />
        <path d="M935.011 321.424C931.019 321.659 930.741 326.766 933.676 329.495C936.596 332.196 940.338 330.831 940.25 327.103C940.177 324.183 937.638 321.424 935.011 321.424Z" fill="#B8AFA3" />
        <path d="M921.246 321.424C917.21 321.659 916.843 326.766 919.778 329.495C922.684 332.196 926.485 330.831 926.455 327.103C926.426 324.183 923.887 321.424 921.246 321.424Z" fill="#B8AFA3" />
        <path d="M907.318 321.424C903.239 321.659 902.798 326.766 905.719 329.495C908.61 332.196 912.484 330.831 912.499 327.103C912.499 324.183 909.989 321.424 907.318 321.424Z" fill="#B8AFA3" />
        <path d="M878.892 321.424C874.724 321.659 874.123 326.766 877.014 329.495C880.051 332.357 884.234 330.64 883.999 326.634C883.838 323.86 881.446 321.424 878.892 321.424Z" fill="#B8AFA3" />
        <path d="M864.569 321.424C860.357 321.659 859.667 326.766 862.558 329.495C865.581 332.357 869.823 330.64 869.647 326.634C869.514 323.86 867.152 321.424 864.583 321.424" fill="#B8AFA3" />
        <path d="M850.113 321.424C845.858 321.659 845.094 326.766 847.956 329.495C850.965 332.357 855.265 330.64 855.147 326.634C855.059 323.86 852.711 321.424 850.113 321.424Z" fill="#B8AFA3" />
        <path d="M835.526 321.424C831.241 321.659 830.39 326.766 833.237 329.495C836.23 332.357 840.589 330.64 840.53 326.634C840.486 323.86 838.153 321.424 835.526 321.424Z" fill="#B8AFA3" />
        <path d="M820.836 321.424C816.492 321.659 815.553 326.766 818.4 329.495C821.379 332.357 825.811 330.64 825.811 326.634C825.811 323.86 823.492 321.424 820.851 321.424" fill="#B8AFA3" />
        <path d="M806.028 321.424C801.64 321.659 800.628 326.766 803.445 329.495C806.41 332.357 810.9 330.64 810.944 326.634C810.974 323.86 808.684 321.424 806.014 321.424" fill="#B8AFA3" />
        <path d="M791.089 321.424C786.686 321.659 785.585 326.766 788.388 329.495C791.324 332.357 795.858 330.64 795.976 326.634C796.049 323.86 793.76 321.424 791.089 321.424Z" fill="#B8AFA3" />
        <path d="M550.513 321.424C545.788 321.673 543.85 327.705 546.683 330.068C549.662 332.548 554.666 328.967 554.109 324.726C553.859 322.774 552.377 321.409 550.513 321.409" fill="#B8AFA3" />
        <path d="M536.351 321.424C531.699 321.688 529.689 327.705 532.448 330.068C535.339 332.548 540.343 328.967 539.873 324.726C539.653 322.745 538.244 321.409 536.351 321.409" fill="#B8AFA3" />
        <path d="M522.336 321.424C517.728 321.688 515.644 327.705 518.344 330.068C521.191 332.563 526.181 328.967 525.77 324.726C525.579 322.774 524.171 321.409 522.336 321.409" fill="#B8AFA3" />
        <path d="M508.468 321.424C503.904 321.688 501.761 327.705 504.388 330.068C507.162 332.563 512.151 328.967 511.814 324.726C511.652 322.774 510.288 321.409 508.468 321.409" fill="#B8AFA3" />
        <path d="M494.761 321.424C490.241 321.688 488.025 327.705 490.593 330.068C493.293 332.563 498.283 328.967 498.019 324.726C497.887 322.774 496.551 321.409 494.761 321.409" fill="#B8AFA3" />
        <path d="M481.054 321.424C476.578 321.688 474.303 327.705 476.798 330.068C479.425 332.563 484.415 328.967 484.209 324.726C484.121 322.774 482.815 321.409 481.039 321.409" fill="#B8AFA3" />
        <path d="M428.516 321.424C424.025 321.688 421.589 328.204 424.216 330.317C426.857 332.445 431.627 328.395 431.304 324.315C431.172 322.569 430.071 321.438 428.516 321.438" fill="#B8AFA3" />
        <path d="M415.807 321.424C411.345 321.688 408.836 328.204 411.404 330.317C413.972 332.43 418.756 328.395 418.507 324.315C418.404 322.569 417.333 321.438 415.807 321.438" fill="#B8AFA3" />
        <path d="M403.142 321.424C398.768 321.688 396.2 328.204 398.68 330.317C401.175 332.445 405.945 328.395 405.769 324.315C405.695 322.569 404.668 321.438 403.156 321.438" fill="#B8AFA3" />
        <path d="M390.8 321.424C386.485 321.688 383.843 328.204 386.265 330.317C388.686 332.445 393.441 328.395 393.338 324.315C393.294 322.569 392.297 321.438 390.8 321.438" fill="#B8AFA3" />
        <path d="M343.412 321.424C339.362 321.688 336.471 328.204 338.599 330.317C340.727 332.445 345.438 328.395 345.599 324.315C345.672 322.569 344.807 321.438 343.412 321.438" fill="#B8AFA3" />
        <path d="M332.068 321.424C327.768 321.717 324.98 328.703 327.416 330.508C329.852 332.313 334.622 327.338 334.138 323.493C333.976 322.187 333.198 321.409 332.068 321.409" fill="#B8AFA3" />
        <path d="M320.812 321.424C316.586 321.717 313.739 328.703 316.087 330.508C318.508 332.372 323.219 327.455 322.808 323.493C322.676 322.187 321.927 321.409 320.812 321.409" fill="#B8AFA3" />
        <path d="M309.908 321.424C305.755 321.717 302.835 328.703 305.109 330.508C307.384 332.313 312.154 327.338 311.816 323.493C311.699 322.187 310.994 321.409 309.908 321.409" fill="#B8AFA3" />
        <path d="M299.224 321.424C295.145 321.717 292.166 328.703 294.367 330.508C296.568 332.313 301.323 327.338 301.059 323.493C300.971 322.187 300.281 321.409 299.224 321.409" fill="#B8AFA3" />
        <path d="M288.761 321.424C284.769 321.717 281.717 328.703 283.845 330.508C285.958 332.313 290.698 327.338 290.522 323.493C290.463 322.187 289.803 321.409 288.761 321.409" fill="#B8AFA3" />
        <path d="M278.532 321.424C274.628 321.717 271.517 328.703 273.542 330.508C275.582 332.313 280.308 327.338 280.205 323.493C280.176 322.187 279.545 321.409 278.532 321.409" fill="#B8AFA3" />
        <path d="M268.523 321.424C264.693 321.717 261.523 328.703 263.49 330.508C265.442 332.313 270.152 327.338 270.138 323.493C270.138 322.187 269.536 321.409 268.538 321.409" fill="#B8AFA3" />
        <path d="M258.661 321.424C254.919 321.717 251.691 328.703 253.569 330.508C255.433 332.313 260.129 327.338 260.188 323.493C260.202 322.187 259.63 321.409 258.661 321.409" fill="#B8AFA3" />
        <path d="M249.137 321.424C245.483 321.717 242.195 328.703 243.986 330.508C245.776 332.313 250.458 327.323 250.575 323.493C250.619 322.187 250.076 321.424 249.137 321.409" fill="#B8AFA3" />
        <path d="M239.862 321.424C236.032 321.747 232.847 329.29 234.843 330.669C237 332.166 241.682 326.355 241.198 322.803C241.036 321.6 240.288 321.424 239.862 321.424Z" fill="#B8AFA3" />
        <path d="M230.837 321.424C227.094 321.732 223.836 329.275 225.759 330.669C227.828 332.152 232.51 326.34 232.099 322.803C231.967 321.6 231.248 321.424 230.822 321.424" fill="#B8AFA3" />
        <path d="M222.061 321.424C218.436 321.747 215.104 329.29 216.939 330.669C218.847 332.108 223.587 326.237 223.279 322.803C223.176 321.6 222.472 321.424 222.061 321.424Z" fill="#B8AFA3" />
        <path d="M213.549 321.424C210.027 321.747 206.622 329.29 208.383 330.669C210.32 332.196 215.251 325.782 214.664 322.495C214.591 322.099 214.356 321.424 213.564 321.424" fill="#B8AFA3" />
        <path d="M205.301 321.424C201.882 321.747 198.418 329.29 200.077 330.669C201.911 332.196 206.828 325.782 206.343 322.495C206.285 322.099 206.064 321.424 205.301 321.424Z" fill="#B8AFA3" />
        <path d="M197.23 321.424C193.913 321.747 190.391 329.29 191.961 330.669C193.605 332.108 198.286 326.223 198.228 322.803C198.213 321.6 197.582 321.424 197.215 321.424" fill="#B8AFA3" />
        <path d="M189.525 321.424C186.311 321.747 182.73 329.29 184.213 330.669C185.856 332.196 190.743 325.782 190.45 322.495C190.406 322.099 190.244 321.424 189.525 321.424Z" fill="#B8AFA3" />
        <path d="M182.099 321.424C178.988 321.747 175.349 329.29 176.757 330.669C178.254 332.152 182.833 326.34 182.965 322.803C183.009 321.6 182.437 321.424 182.099 321.424Z" fill="#B8AFA3" />
        <path d="M174.952 321.424C171.959 321.747 168.246 329.29 169.566 330.669C170.975 332.152 175.525 326.34 175.745 322.803C175.818 321.6 175.275 321.424 174.952 321.424Z" fill="#B8AFA3" />
        <path d="M168.084 321.424C166.514 321.6 164.621 324.271 163.843 325.665C162.463 328.101 162.023 330.303 162.801 330.801C164.518 331.873 169.478 324.564 168.759 322.011C168.627 321.512 168.275 321.438 168.084 321.438" fill="#B8AFA3" />
        <path d="M161.51 321.424C160.013 321.6 158.12 324.271 157.327 325.665C155.948 328.101 155.449 330.303 156.197 330.801C157.811 331.873 162.757 324.564 162.141 322.011C162.023 321.512 161.7 321.438 161.51 321.438" fill="#B8AFA3" />
        <path d="M155.228 321.424C153.79 321.6 151.897 324.271 151.105 325.665C149.71 328.101 149.182 330.303 149.872 330.801C151.383 331.873 156.329 324.55 155.815 322.011C155.713 321.527 155.405 321.438 155.228 321.438" fill="#B8AFA3" />
        <path d="M149.167 321.424C147.788 321.6 145.91 324.271 145.117 325.665C143.708 328.101 143.136 330.303 143.782 330.801C145.176 331.873 150.107 324.55 149.71 322.011C149.637 321.527 149.344 321.438 149.167 321.438" fill="#B8AFA3" />
        <path d="M143.488 321.424C140.876 321.761 137.031 329.936 138.058 330.787C139.35 331.858 144.266 324.535 143.972 321.996C143.914 321.512 143.635 321.424 143.488 321.424Z" fill="#B8AFA3" />
        <path d="M133.039 321.424C130.676 321.776 126.685 329.936 127.565 330.787C128.636 331.829 133.523 324.52 133.435 321.996C133.421 321.512 133.186 321.424 133.039 321.424Z" fill="#B8AFA3" />
        <path d="M128.284 321.424C126.054 321.776 122.003 329.936 122.781 330.787C123.75 331.843 128.607 324.52 128.636 321.996C128.636 321.512 128.416 321.424 128.284 321.424Z" fill="#B8AFA3" />
        <path d="M1300.01 306.704C1298.33 306.998 1302.79 314.497 1304.89 315.803C1305.64 316.273 1305.96 315.95 1305.76 314.937C1305.2 312.149 1301.39 306.675 1300.01 306.689" fill="#B8AFA3" />
        <path d="M1284.2 306.704C1282.23 306.998 1286.02 313.88 1288.6 315.656C1289.67 316.39 1290.2 316.008 1289.95 314.658C1289.4 311.752 1285.74 306.704 1284.2 306.719" fill="#B8AFA3" />
        <path d="M1278.34 306.704C1276.42 306.968 1279.71 313.367 1282.39 315.451C1283.57 316.361 1284.26 316.17 1284.16 314.952C1283.92 312.163 1280.08 306.689 1278.34 306.704Z" fill="#B8AFA3" />
        <path d="M1272.2 306.704C1270.16 306.968 1273.4 313.367 1276.14 315.451C1277.43 316.434 1278.18 316.096 1277.98 314.644C1277.57 311.738 1273.9 306.689 1272.2 306.704Z" fill="#B8AFA3" />
        <path d="M1265.75 306.704C1263.63 306.968 1266.81 313.367 1269.61 315.451C1270.93 316.434 1271.73 316.096 1271.56 314.644C1271.23 311.738 1267.54 306.689 1265.77 306.704" fill="#B8AFA3" />
        <path d="M1259.03 306.704C1256.92 306.954 1259.68 312.883 1262.48 315.216C1263.98 316.463 1264.98 316.229 1264.83 314.644C1264.56 311.738 1260.88 306.689 1259.03 306.704Z" fill="#B8AFA3" />
        <path d="M1252.03 306.704C1249.83 306.954 1252.52 312.883 1255.38 315.216C1256.9 316.463 1257.95 316.229 1257.84 314.644C1257.65 311.738 1253.97 306.689 1252.03 306.704Z" fill="#B8AFA3" />
        <path d="M1244.66 306.704C1242.37 306.954 1245 312.883 1247.89 315.216C1249.55 316.551 1250.67 316.155 1250.43 314.306C1250.05 311.312 1246.54 306.675 1244.65 306.689" fill="#B8AFA3" />
        <path d="M1237.11 306.704C1234.73 306.954 1237.28 312.883 1240.23 315.216C1241.93 316.566 1243.08 316.184 1242.89 314.306C1242.58 311.312 1239.06 306.689 1237.11 306.689" fill="#B8AFA3" />
        <path d="M1229.28 306.704C1226.8 306.954 1229.31 312.883 1232.29 315.216C1234.02 316.566 1235.21 316.184 1235.07 314.306C1234.82 311.312 1231.31 306.689 1229.28 306.689" fill="#B8AFA3" />
        <path d="M1221.2 306.704C1218.63 306.954 1221.07 312.883 1224.09 315.216C1225.97 316.654 1227.24 316.096 1226.94 313.954C1226.51 310.901 1223.18 306.689 1221.18 306.704" fill="#B8AFA3" />
        <path d="M1212.85 306.704C1210.32 306.939 1212.3 312.384 1215.3 314.952C1217.21 316.595 1218.7 316.302 1218.63 314.321C1218.51 311.327 1215.01 306.704 1212.85 306.704Z" fill="#B8AFA3" />
        <path d="M1204.25 306.704C1201.64 306.939 1203.56 312.384 1206.58 314.952C1208.64 316.698 1210.24 316.229 1210 313.954C1209.69 310.901 1206.36 306.689 1204.25 306.704Z" fill="#B8AFA3" />
        <path d="M1195.4 306.704C1192.7 306.939 1194.55 312.384 1197.6 314.952C1199.68 316.698 1201.34 316.229 1201.15 313.954C1200.9 310.901 1197.57 306.689 1195.4 306.704Z" fill="#B8AFA3" />
        <path d="M1186.2 306.704C1183.42 306.939 1185.21 312.384 1188.28 314.952C1190.36 316.698 1192.08 316.229 1191.95 313.954C1191.76 310.901 1188.43 306.689 1186.2 306.704Z" fill="#B8AFA3" />
        <path d="M1176.85 306.704C1174 306.939 1175.72 312.384 1178.8 314.952C1181.05 316.816 1182.87 316.14 1182.54 313.572C1182.16 310.49 1179.02 306.704 1176.83 306.704" fill="#B8AFA3" />
        <path d="M1167.27 306.704C1164.35 306.939 1165.97 312.384 1169.09 314.952C1171.35 316.816 1173.24 316.14 1172.96 313.572C1172.64 310.49 1169.48 306.704 1167.25 306.704" fill="#B8AFA3" />
        <path d="M1157.46 306.704C1154.45 306.939 1156.01 312.384 1159.15 314.952C1161.44 316.816 1163.38 316.14 1163.16 313.572C1162.89 310.49 1159.75 306.704 1157.46 306.704Z" fill="#B8AFA3" />
        <path d="M1147.4 306.704C1144.33 306.939 1145.81 312.384 1148.97 314.952C1151.27 316.816 1153.27 316.14 1153.07 313.572C1152.85 310.49 1149.71 306.704 1147.38 306.704" fill="#B8AFA3" />
        <path d="M1137.14 306.704C1134 306.939 1135.41 312.384 1138.59 314.952C1141.06 316.933 1143.17 316.038 1142.77 313.161C1142.36 310.138 1139.37 306.689 1137.14 306.704Z" fill="#B8AFA3" />
        <path d="M1126.54 306.704C1123.5 306.924 1124.55 311.973 1127.5 314.644C1129.92 316.845 1132.29 316.302 1132.21 313.572C1132.1 310.49 1128.98 306.704 1126.54 306.704Z" fill="#B8AFA3" />
        <path d="M1115.81 306.704C1112.72 306.939 1113.69 311.973 1116.65 314.644C1119.09 316.845 1121.51 316.302 1121.46 313.572C1121.4 310.49 1118.29 306.704 1115.81 306.704Z" fill="#B8AFA3" />
        <path d="M1104.89 306.704C1101.74 306.939 1102.63 311.973 1105.6 314.644C1108.2 316.992 1110.76 316.214 1110.5 313.161C1110.24 310.08 1107.3 306.689 1104.89 306.704Z" fill="#B8AFA3" />
        <path d="M1093.77 306.704C1090.54 306.939 1091.36 311.973 1094.34 314.644C1096.94 316.992 1099.57 316.214 1099.38 313.161C1099.17 310.08 1096.24 306.689 1093.79 306.704" fill="#B8AFA3" />
        <path d="M1082.44 306.704C1079.15 306.939 1079.9 311.973 1082.87 314.644C1085.46 316.992 1088.16 316.214 1088 313.161C1087.84 310.08 1084.94 306.689 1082.43 306.704" fill="#B8AFA3" />
        <path d="M1070.92 306.704C1067.58 306.939 1068.24 311.973 1071.21 314.644C1073.83 316.992 1076.57 316.214 1076.47 313.161C1076.37 310.079 1073.46 306.704 1070.91 306.704" fill="#B8AFA3" />
        <path d="M1059.2 306.704C1055.79 306.939 1056.38 311.973 1059.36 314.644C1061.97 316.992 1064.77 316.214 1064.73 313.161C1064.68 310.079 1061.78 306.704 1059.2 306.704Z" fill="#B8AFA3" />
        <path d="M1047.15 306.704C1043.68 306.939 1044.2 311.973 1047.18 314.644C1049.92 317.109 1052.93 316.052 1052.64 312.736C1052.37 309.742 1049.6 306.704 1047.15 306.704Z" fill="#B8AFA3" />
        <path d="M1035.04 306.704C1031.52 306.939 1031.94 311.973 1034.92 314.644C1037.67 317.109 1040.75 316.052 1040.5 312.736C1040.28 309.742 1037.52 306.704 1035.02 306.704" fill="#B8AFA3" />
        <path d="M1010.3 306.704C1006.66 306.924 1006.91 311.973 1009.9 314.644C1012.64 317.109 1015.86 316.052 1015.73 312.736C1015.61 309.742 1012.88 306.704 1010.31 306.704" fill="#B8AFA3" />
        <path d="M997.676 306.704C993.977 306.924 994.154 311.973 997.133 314.644C999.877 317.109 1003.15 316.052 1003.06 312.736C1002.99 309.742 1000.27 306.704 997.661 306.704" fill="#B8AFA3" />
        <path d="M984.864 306.704C981.122 306.939 981.239 311.973 984.203 314.644C986.933 317.124 990.264 316.067 990.235 312.736C990.206 309.742 987.505 306.704 984.864 306.704Z" fill="#B8AFA3" />
        <path d="M971.759 306.704C967.972 306.924 968.002 311.973 970.951 314.644C973.887 317.315 977.379 315.964 977.071 312.281C976.836 309.404 974.253 306.689 971.759 306.689" fill="#B8AFA3" />
        <path d="M958.639 306.704C954.794 306.924 954.72 311.973 957.685 314.644C960.62 317.3 964.171 315.95 963.937 312.281C963.746 309.404 961.178 306.689 958.653 306.689" fill="#B8AFA3" />
        <path d="M945.343 306.704C941.454 306.939 941.322 311.973 944.257 314.644C947.177 317.3 950.787 315.964 950.597 312.281C950.45 309.404 947.896 306.689 945.343 306.689" fill="#B8AFA3" />
        <path d="M932.238 308.245C929.625 308.392 929.479 311.767 931.43 313.558C933.368 315.333 935.818 314.438 935.73 311.987C935.657 310.065 933.969 308.245 932.238 308.245Z" fill="#B8AFA3" />
        <path d="M862.47 306.704C858.317 306.939 857.686 311.973 860.548 314.644C863.556 317.461 867.724 315.774 867.504 311.826C867.357 309.096 865.009 306.704 862.47 306.704Z" fill="#B8AFA3" />
        <path d="M848.235 306.704C844.052 306.939 843.319 311.973 846.166 314.644C849.159 317.461 853.386 315.774 853.239 311.826C853.137 309.096 850.803 306.704 848.235 306.704Z" fill="#B8AFA3" />
        <path d="M833.868 306.704C829.641 306.939 828.834 311.973 831.666 314.644C834.631 317.461 838.931 315.774 838.828 311.826C838.769 309.096 836.451 306.704 833.868 306.704Z" fill="#B8AFA3" />
        <path d="M819.383 306.704C815.098 306.924 814.203 311.973 817.02 314.644C819.985 317.461 824.329 315.774 824.299 311.826C824.285 309.096 821.981 306.704 819.383 306.704Z" fill="#B8AFA3" />
        <path d="M804.781 306.704C800.466 306.924 799.468 311.973 802.271 314.644C805.207 317.461 809.624 315.774 809.653 311.826C809.668 309.096 807.393 306.704 804.781 306.704Z" fill="#B8AFA3" />
        <path d="M790.061 306.704C785.732 306.939 784.661 311.973 787.435 314.644C790.34 317.461 794.816 315.774 794.904 311.826C794.963 309.096 792.703 306.704 790.076 306.704" fill="#B8AFA3" />
        <path d="M595.787 306.704C591.223 306.939 589.33 312.384 591.942 314.952C594.642 317.608 599.529 315.01 599.632 310.872C599.691 308.539 598.003 306.704 595.787 306.704Z" fill="#B8AFA3" />
        <path d="M581.273 306.704C576.562 306.954 574.742 312.882 577.633 315.216C580.686 317.667 585.617 314.145 584.957 309.962C584.663 308.04 583.137 306.704 581.258 306.704" fill="#B8AFA3" />
        <path d="M567.052 306.704C562.371 306.954 560.478 312.882 563.31 315.216C566.289 317.681 571.235 314.145 570.663 309.962C570.398 308.04 568.916 306.704 567.052 306.704Z" fill="#B8AFA3" />
        <path d="M552.979 306.704C548.326 306.954 546.36 312.882 549.134 315.216C552.054 317.667 557.014 314.13 556.501 309.962C556.266 308.04 554.813 306.704 552.979 306.704Z" fill="#B8AFA3" />
        <path d="M539.007 306.704C534.414 306.954 532.374 312.882 535.074 315.216C537.907 317.667 542.867 314.13 542.442 309.962C542.236 308.01 540.857 306.704 539.007 306.704Z" fill="#B8AFA3" />
        <path d="M525.198 306.704C520.648 306.954 518.535 312.882 521.177 315.216C523.95 317.667 528.911 314.13 528.544 309.962C528.382 308.04 527.003 306.704 525.198 306.704Z" fill="#B8AFA3" />
        <path d="M511.535 306.704C507.03 306.954 504.858 312.882 507.426 315.216C510.126 317.667 515.101 314.13 514.793 309.962C514.661 308.04 513.311 306.704 511.535 306.704Z" fill="#B8AFA3" />
        <path d="M498.034 306.704C493.572 306.954 491.327 312.882 493.836 315.216C496.478 317.667 501.438 314.13 501.218 309.962C501.115 308.04 499.809 306.704 498.048 306.704" fill="#B8AFA3" />
        <path d="M484.517 306.704C480.1 306.954 477.781 312.882 480.232 315.216C482.8 317.667 487.761 314.13 487.599 309.962C487.526 308.04 486.264 306.704 484.517 306.704Z" fill="#B8AFA3" />
        <path d="M420.209 306.704C415.821 306.968 413.238 313.367 415.733 315.451C418.243 317.535 423.012 313.558 422.822 309.536C422.748 307.819 421.721 306.704 420.195 306.704" fill="#B8AFA3" />
        <path d="M407.72 306.704C403.406 306.968 400.764 313.367 403.186 315.451C405.607 317.549 410.377 313.558 410.259 309.536C410.215 307.819 409.217 306.704 407.72 306.704Z" fill="#B8AFA3" />
        <path d="M360.172 306.88C356.283 307.13 353.48 313.308 355.505 315.304C357.662 317.447 362.476 313.117 362.285 309.214C362.212 307.776 361.405 306.88 360.172 306.88Z" fill="#B8AFA3" />
        <path d="M348.857 306.704C344.865 306.968 341.886 313.367 343.941 315.451C346.098 317.637 351.088 313.147 350.956 309.126C350.912 307.629 350.104 306.704 348.857 306.689" fill="#B8AFA3" />
        <path d="M337.689 306.704C333.433 306.998 330.557 313.88 332.919 315.656C335.282 317.432 340.081 312.53 339.685 308.759C339.553 307.482 338.804 306.719 337.689 306.719" fill="#B8AFA3" />
        <path d="M326.594 306.704C322.426 306.998 319.462 313.88 321.751 315.656C324.099 317.491 328.84 312.648 328.517 308.759C328.414 307.482 327.695 306.719 326.594 306.719" fill="#B8AFA3" />
        <path d="M315.852 306.704C311.757 306.998 308.734 313.88 310.936 315.656C313.137 317.432 317.936 312.53 317.686 308.759C317.598 307.482 316.908 306.719 315.837 306.719" fill="#B8AFA3" />
        <path d="M305.315 306.704C301.294 306.998 298.212 313.88 300.325 315.656C302.453 317.432 307.237 312.53 307.076 308.759C307.017 307.482 306.357 306.719 305.315 306.719" fill="#B8AFA3" />
        <path d="M295.013 306.704C291.08 306.998 287.924 313.88 289.964 315.656C292.004 317.432 296.788 312.53 296.7 308.759C296.671 307.482 296.04 306.719 295.013 306.719" fill="#B8AFA3" />
        <path d="M284.931 306.704C281.071 306.998 277.857 313.88 279.823 315.656C281.893 317.535 286.912 312.105 286.53 308.392C286.427 307.32 285.84 306.704 284.945 306.704" fill="#B8AFA3" />
        <path d="M275.069 306.704C271.297 306.998 268.01 313.88 269.888 315.656C271.869 317.52 276.874 312.105 276.58 308.392C276.492 307.32 275.934 306.704 275.054 306.704" fill="#B8AFA3" />
        <path d="M265.339 306.704C261.655 306.998 258.294 313.88 260.1 315.656C261.905 317.432 266.645 312.53 266.777 308.759C266.821 307.482 266.278 306.719 265.324 306.719" fill="#B8AFA3" />
        <path d="M255.961 306.704C252.351 306.998 248.946 313.88 250.678 315.656C252.395 317.432 257.12 312.53 257.341 308.759C257.414 307.482 256.9 306.719 255.976 306.719" fill="#B8AFA3" />
        <path d="M246.818 306.704C243.047 307.012 239.715 314.438 241.652 315.803C243.81 317.314 248.829 311.004 248.051 307.761C247.963 307.365 247.669 306.704 246.818 306.704Z" fill="#B8AFA3" />
        <path d="M237.925 306.704C234.227 307.012 230.822 314.438 232.7 315.803C234.755 317.314 239.789 310.989 239.099 307.761C239.011 307.365 238.747 306.704 237.925 306.704Z" fill="#B8AFA3" />
        <path d="M229.266 306.704C225.686 307.012 222.207 314.438 223.983 315.803C225.964 317.329 230.983 311.004 230.382 307.761C230.308 307.365 230.059 306.704 229.252 306.704" fill="#B8AFA3" />
        <path d="M220.887 306.704C217.409 307.012 213.857 314.438 215.559 315.803C217.423 317.314 222.442 310.989 221.958 307.761C221.899 307.365 221.679 306.704 220.901 306.704" fill="#B8AFA3" />
        <path d="M212.756 306.704C209.366 307.012 205.756 314.438 207.371 315.803C209.146 317.314 214.151 310.989 213.754 307.761C213.71 307.365 213.505 306.704 212.756 306.704Z" fill="#B8AFA3" />
        <path d="M204.802 306.704C201.515 307.012 197.846 314.438 199.372 315.803C201.06 317.314 206.064 311.004 205.756 307.761C205.712 307.365 205.551 306.704 204.802 306.704Z" fill="#B8AFA3" />
        <path d="M197.215 306.704C194.03 307.012 190.303 314.438 191.741 315.803C193.311 317.3 198.316 310.989 198.096 307.761C198.066 307.365 197.92 306.704 197.215 306.704Z" fill="#B8AFA3" />
        <path d="M189.892 306.704C186.825 307.012 183.024 314.438 184.374 315.803C185.856 317.3 190.831 310.989 190.714 307.761C190.714 307.365 190.567 306.704 189.892 306.704Z" fill="#B8AFA3" />
        <path d="M182.848 306.704C181.233 306.88 179.296 309.507 178.489 310.872C177.08 313.264 176.625 315.436 177.432 315.92C179.208 316.977 184.286 309.771 183.537 307.262C183.391 306.777 183.039 306.704 182.848 306.704Z" fill="#B8AFA3" />
        <path d="M176.082 306.704C174.527 306.88 172.59 309.507 171.782 310.872C170.359 313.264 169.86 315.436 170.623 315.92C172.296 316.977 177.374 309.771 176.743 307.262C176.625 306.777 176.288 306.704 176.097 306.704" fill="#B8AFA3" />
        <path d="M169.596 306.704C168.114 306.88 166.176 309.507 165.355 310.872C163.916 313.264 163.373 315.436 164.092 315.92C165.648 316.977 170.74 309.771 170.197 307.262C170.095 306.777 169.772 306.704 169.596 306.704Z" fill="#B8AFA3" />
        <path d="M163.403 306.704C161.979 306.88 160.042 309.507 159.22 310.872C157.782 313.264 157.195 315.436 157.855 315.92C159.308 316.977 164.386 309.771 163.96 307.262C163.872 306.777 163.579 306.704 163.403 306.704Z" fill="#B8AFA3" />
        <path d="M157.43 306.704C156.065 306.88 154.142 309.507 153.321 310.872C151.868 313.264 151.237 315.436 151.853 315.92C153.203 316.977 158.266 309.771 157.943 307.262C157.885 306.777 157.591 306.704 157.43 306.704Z" fill="#B8AFA3" />
        <path d="M146.541 306.704C144.075 307.042 139.981 315.084 140.89 315.92C142.021 316.962 147.069 309.757 146.951 307.262C146.937 306.777 146.687 306.704 146.526 306.704" fill="#B8AFA3" />
        <path d="M141.536 306.704C139.188 307.042 135.02 315.084 135.857 315.92C136.884 316.948 141.918 309.742 141.903 307.262C141.903 306.777 141.668 306.704 141.536 306.704Z" fill="#B8AFA3" />
        <path d="M136.84 306.704C135.96 306.836 134.345 308.671 132.716 311.356C131.498 313.381 130.603 315.73 131.234 316.008C132.496 316.566 137.735 308.495 137.119 306.924C137.075 306.792 136.957 306.719 136.825 306.719" fill="#B8AFA3" />
        <path d="M132.364 306.88C131.572 307.012 130.045 308.759 128.475 311.342C127.286 313.294 126.391 315.568 126.934 315.832C128.049 316.375 133.083 308.597 132.614 307.086C132.569 306.968 132.481 306.88 132.364 306.88Z" fill="#B8AFA3" />
        <path d="M1295.74 292.22C1294.21 292.513 1298.88 299.895 1300.9 301.186C1301.55 301.597 1301.84 301.392 1301.69 300.599C1301.24 298.075 1297.06 292.19 1295.74 292.22Z" fill="#B8AFA3" />
        <path d="M1286.3 292.22C1284.66 292.498 1288.71 299.337 1291.07 301.025C1292.01 301.685 1292.45 301.421 1292.23 300.335C1291.67 297.591 1287.74 292.205 1286.3 292.22Z" fill="#B8AFA3" />
        <path d="M1275.6 292.22C1273.82 292.484 1277.3 298.779 1279.94 300.834C1281.09 301.729 1281.73 301.538 1281.56 300.335C1281.16 297.591 1277.21 292.205 1275.6 292.22Z" fill="#B8AFA3" />
        <path d="M1269.85 292.22C1267.95 292.484 1271.39 298.779 1274.09 300.834C1275.26 301.729 1275.94 301.538 1275.81 300.335C1275.5 297.591 1271.54 292.205 1269.85 292.22Z" fill="#B8AFA3" />
        <path d="M1263.79 292.22C1261.79 292.484 1265.17 298.779 1267.93 300.834C1269.22 301.803 1269.95 301.465 1269.72 300.042C1269.23 297.18 1265.46 292.205 1263.79 292.22Z" fill="#B8AFA3" />
        <path d="M1257.45 292.22C1255.36 292.484 1258.68 298.779 1261.5 300.834C1262.82 301.803 1263.6 301.465 1263.39 300.042C1262.98 297.18 1259.21 292.205 1257.45 292.22Z" fill="#B8AFA3" />
        <path d="M1250.83 292.22C1248.76 292.469 1251.64 298.31 1254.47 300.599C1255.98 301.832 1256.95 301.597 1256.77 300.042C1256.43 297.18 1252.66 292.205 1250.83 292.22Z" fill="#B8AFA3" />
        <path d="M1243.93 292.22C1241.77 292.469 1244.59 298.31 1247.47 300.599C1249.01 301.832 1250.02 301.597 1249.87 300.042C1249.61 297.18 1245.84 292.205 1243.93 292.22Z" fill="#B8AFA3" />
        <path d="M1236.68 292.22C1234.42 292.469 1237.18 298.31 1240.1 300.599C1241.77 301.92 1242.86 301.524 1242.58 299.704C1242.13 296.754 1238.53 292.205 1236.68 292.22Z" fill="#B8AFA3" />
        <path d="M1229.24 292.22C1226.89 292.469 1229.58 298.31 1232.54 300.599C1234.26 301.935 1235.37 301.553 1235.14 299.704C1234.76 296.754 1231.16 292.205 1229.24 292.22Z" fill="#B8AFA3" />
        <path d="M1221.54 292.22C1219.22 292.454 1221.46 297.811 1224.4 300.335C1226.29 301.949 1227.64 301.671 1227.44 299.704C1227.11 296.754 1223.53 292.205 1221.54 292.22Z" fill="#B8AFA3" />
        <path d="M1213.57 292.22C1211.16 292.454 1213.33 297.811 1216.31 300.335C1218.22 301.949 1219.63 301.671 1219.47 299.704C1219.22 296.754 1215.64 292.205 1213.57 292.22Z" fill="#B8AFA3" />
        <path d="M1205.35 292.22C1202.87 292.454 1204.97 297.811 1207.98 300.335C1209.9 301.949 1211.37 301.671 1211.25 299.704C1211.06 296.754 1207.48 292.205 1205.36 292.22" fill="#B8AFA3" />
        <path d="M1196.88 292.22C1194.31 292.454 1196.35 297.811 1199.39 300.335C1201.46 302.052 1203.03 301.597 1202.74 299.352C1202.35 296.343 1198.96 292.205 1196.88 292.22Z" fill="#B8AFA3" />
        <path d="M1188.16 292.22C1185.51 292.454 1187.46 297.811 1190.53 300.335C1192.61 302.052 1194.24 301.597 1194 299.352C1193.68 296.343 1190.29 292.205 1188.16 292.22Z" fill="#B8AFA3" />
        <path d="M1179.09 292.22C1176.38 292.454 1178.26 297.811 1181.34 300.335C1183.44 302.052 1185.11 301.597 1184.92 299.352C1184.66 296.343 1181.28 292.205 1179.08 292.22" fill="#B8AFA3" />
        <path d="M1169.89 292.22C1167.09 292.454 1168.91 297.811 1172.02 300.335C1174.13 302.052 1175.87 301.597 1175.72 299.352C1175.53 296.343 1172.15 292.205 1169.89 292.22Z" fill="#B8AFA3" />
        <path d="M1160.46 292.219C1157.58 292.454 1159.33 297.811 1162.45 300.335C1164.73 302.169 1166.56 301.509 1166.24 298.985C1165.84 295.947 1162.66 292.219 1160.46 292.219Z" fill="#B8AFA3" />
        <path d="M1150.8 292.219C1148.01 292.44 1149.38 297.4 1152.31 300.042C1154.57 302.081 1156.66 301.744 1156.6 299.366C1156.52 296.358 1153.16 292.219 1150.8 292.234" fill="#B8AFA3" />
        <path d="M1140.89 292.219C1138.05 292.44 1139.34 297.4 1142.29 300.042C1144.71 302.213 1146.91 301.671 1146.66 298.985C1146.37 295.947 1143.2 292.219 1140.91 292.219" fill="#B8AFA3" />
        <path d="M1130.78 292.219C1127.88 292.44 1129.08 297.4 1132.03 300.042C1134.45 302.199 1136.71 301.671 1136.52 298.985C1136.3 295.947 1133.13 292.219 1130.78 292.219Z" fill="#B8AFA3" />
        <path d="M1120.35 292.219C1117.35 292.44 1118.48 297.4 1121.45 300.042C1123.88 302.213 1126.22 301.671 1126.07 298.985C1125.91 295.947 1122.75 292.219 1120.35 292.219Z" fill="#B8AFA3" />
        <path d="M1109.78 292.219C1106.74 292.44 1107.8 297.4 1110.76 300.042C1113.2 302.213 1115.59 301.671 1115.49 298.985C1115.37 295.947 1112.23 292.219 1109.78 292.219Z" fill="#B8AFA3" />
        <path d="M1099.04 292.219C1095.93 292.44 1096.91 297.4 1099.89 300.042C1102.33 302.199 1104.76 301.671 1104.72 298.985C1104.66 295.947 1101.53 292.219 1099.04 292.219Z" fill="#B8AFA3" />
        <path d="M1088.08 292.219C1084.91 292.44 1085.82 297.4 1088.8 300.042C1091.41 302.36 1093.98 301.582 1093.73 298.574C1093.46 295.536 1090.51 292.219 1088.09 292.219" fill="#B8AFA3" />
        <path d="M1076.92 292.219C1073.69 292.44 1074.52 297.4 1077.5 300.042C1080.11 302.36 1082.75 301.582 1082.53 298.574C1082.32 295.536 1079.37 292.219 1076.91 292.219" fill="#B8AFA3" />
        <path d="M1065.58 292.219C1062.29 292.44 1063.04 297.4 1066.02 300.042C1068.63 302.36 1071.33 301.582 1071.17 298.574C1071.01 295.536 1068.09 292.219 1065.58 292.219Z" fill="#B8AFA3" />
        <path d="M1054.03 292.219C1050.68 292.44 1051.34 297.4 1054.32 300.042C1056.94 302.36 1059.69 301.582 1059.59 298.574C1059.49 295.536 1056.57 292.219 1054.03 292.219Z" fill="#B8AFA3" />
        <path d="M1042.16 292.219C1038.75 292.44 1039.34 297.4 1042.32 300.042C1044.93 302.36 1047.75 301.582 1047.69 298.574C1047.65 295.536 1044.74 292.219 1042.16 292.219Z" fill="#B8AFA3" />
        <path d="M1030.24 292.219C1026.78 292.44 1027.28 297.4 1030.26 300.042C1033 302.463 1036.01 301.436 1035.73 298.163C1035.46 295.213 1032.71 292.219 1030.24 292.234" fill="#B8AFA3" />
        <path d="M1018.15 292.219C1014.63 292.44 1015.05 297.4 1018.03 300.042C1020.77 302.463 1023.84 301.436 1023.61 298.163C1023.4 295.213 1020.64 292.219 1018.15 292.234" fill="#B8AFA3" />
        <path d="M1005.88 292.219C1002.3 292.44 1002.62 297.4 1005.6 300.042C1008.34 302.463 1011.49 301.436 1011.31 298.163C1011.15 295.228 1008.4 292.219 1005.88 292.234" fill="#B8AFA3" />
        <path d="M993.449 292.219C989.81 292.44 990.059 297.4 993.038 300.042C995.768 302.463 998.982 301.436 998.85 298.163C998.732 295.228 996.017 292.219 993.449 292.234" fill="#B8AFA3" />
        <path d="M981.268 293.76C978.832 293.907 978.95 297.209 980.916 298.97C982.736 300.599 984.893 299.895 984.849 297.708C984.805 295.742 983 293.76 981.268 293.76Z" fill="#B8AFA3" />
        <path d="M967.928 292.219C964.201 292.44 964.289 297.4 967.239 300.042C970.159 302.668 973.593 301.348 973.241 297.723C972.977 294.89 970.394 292.219 967.928 292.234" fill="#B8AFA3" />
        <path d="M832.136 292.219C827.968 292.44 827.205 297.4 830.008 300.042C832.958 302.815 837.17 301.157 837.052 297.268C836.979 294.582 834.675 292.234 832.136 292.234" fill="#B8AFA3" />
        <path d="M817.871 292.219C813.66 292.44 812.794 297.4 815.582 300.042C818.517 302.815 822.802 301.157 822.744 297.268C822.714 294.582 820.425 292.234 817.871 292.234" fill="#B8AFA3" />
        <path d="M611.945 292.219C607.425 292.454 605.59 297.811 608.203 300.335C610.918 302.947 615.746 300.394 615.804 296.329C615.834 294.025 614.146 292.219 611.945 292.219Z" fill="#B8AFA3" />
        <path d="M597.695 292.219C593.204 292.454 591.296 297.811 593.85 300.335C596.491 302.947 601.334 300.394 601.452 296.329C601.525 294.025 599.867 292.219 597.695 292.219Z" fill="#B8AFA3" />
        <path d="M583.386 292.219C578.749 292.469 576.914 298.31 579.747 300.599C582.726 303.021 587.613 299.543 586.996 295.433C586.718 293.54 585.235 292.219 583.386 292.219Z" fill="#B8AFA3" />
        <path d="M569.386 292.219C564.778 292.469 562.87 298.31 565.629 300.599C568.549 303.021 573.451 299.543 572.908 295.433C572.659 293.54 571.206 292.219 569.386 292.219Z" fill="#B8AFA3" />
        <path d="M555.517 292.219C550.924 292.469 548.943 298.31 551.658 300.599C554.505 303.006 559.421 299.528 558.966 295.433C558.746 293.54 557.337 292.219 555.532 292.219" fill="#B8AFA3" />
        <path d="M541.767 292.219C537.246 292.469 535.177 298.31 537.819 300.599C540.592 303.006 545.509 299.528 545.127 295.433C544.951 293.511 543.601 292.219 541.767 292.219Z" fill="#B8AFA3" />
        <path d="M528.177 292.219C523.686 292.469 521.558 298.31 524.127 300.599C526.842 303.021 531.758 299.543 531.435 295.433C531.288 293.54 529.953 292.219 528.162 292.219" fill="#B8AFA3" />
        <path d="M514.72 292.219C510.273 292.469 508.072 298.31 510.581 300.599C513.223 303.021 518.154 299.543 517.904 295.433C517.787 293.54 516.481 292.219 514.734 292.219" fill="#B8AFA3" />
        <path d="M501.409 292.219C497.006 292.469 494.732 298.31 497.168 300.599C499.736 303.021 504.667 299.543 504.491 295.433C504.417 293.54 503.141 292.219 501.409 292.219Z" fill="#B8AFA3" />
        <path d="M488.113 292.219C483.769 292.469 481.406 298.31 483.784 300.599C486.278 303.021 491.209 299.528 491.107 295.433C491.063 293.54 489.83 292.219 488.113 292.219Z" fill="#B8AFA3" />
        <path d="M424.788 292.219C420.459 292.484 417.817 298.779 420.253 300.834C422.792 302.977 427.811 298.559 427.298 294.612C427.107 293.144 426.153 292.219 424.788 292.219Z" fill="#B8AFA3" />
        <path d="M412.49 292.219C408.234 292.484 405.534 298.779 407.867 300.834C410.333 302.991 415.337 298.574 414.911 294.612C414.75 293.144 413.826 292.219 412.49 292.219Z" fill="#B8AFA3" />
        <path d="M400.515 292.219C396.318 292.484 393.544 298.779 395.819 300.834C398.211 302.991 403.215 298.574 402.863 294.612C402.731 293.144 401.836 292.219 400.515 292.219Z" fill="#B8AFA3" />
        <path d="M365.719 292.219C361.713 292.484 358.719 298.779 360.774 300.834C362.99 303.05 367.935 298.691 367.818 294.612C367.774 293.144 366.967 292.219 365.705 292.219" fill="#B8AFA3" />
        <path d="M343.515 292.219C339.318 292.498 336.354 299.278 338.643 301.025C340.932 302.771 345.761 297.958 345.438 294.23C345.335 292.968 344.616 292.219 343.515 292.219Z" fill="#B8AFA3" />
        <path d="M332.597 292.219C328.473 292.498 325.435 299.278 327.636 301.025C329.955 302.859 335.018 297.517 334.402 293.878C334.226 292.821 333.565 292.219 332.597 292.219Z" fill="#B8AFA3" />
        <path d="M322.016 292.219C317.98 292.498 314.854 299.278 316.982 301.025C319.227 302.874 324.29 297.532 323.747 293.878C323.586 292.821 322.955 292.219 322.016 292.219Z" fill="#B8AFA3" />
        <path d="M311.64 292.219C307.678 292.498 304.478 299.278 306.533 301.025C308.705 302.874 313.768 297.532 313.298 293.878C313.166 292.821 312.565 292.219 311.625 292.219" fill="#B8AFA3" />
        <path d="M301.485 292.219C297.596 292.498 294.338 299.278 296.319 301.025C298.403 302.874 303.466 297.532 303.084 293.878C302.981 292.821 302.394 292.219 301.485 292.219Z" fill="#B8AFA3" />
        <path d="M291.564 292.219C287.763 292.498 284.432 299.278 286.325 301.025C288.321 302.859 293.384 297.532 293.09 293.878C293.002 292.821 292.444 292.219 291.564 292.219Z" fill="#B8AFA3" />
        <path d="M281.849 292.219C278.121 292.498 274.731 299.278 276.536 301.025C278.444 302.859 283.507 297.517 283.302 293.878C283.243 292.821 282.715 292.219 281.849 292.219Z" fill="#B8AFA3" />
        <path d="M272.266 292.219C268.626 292.498 265.163 299.278 266.894 301.025C268.714 302.859 273.762 297.517 273.645 293.878C273.616 292.821 273.102 292.219 272.266 292.219Z" fill="#B8AFA3" />
        <path d="M263.035 292.219C259.219 292.528 255.829 299.836 257.781 301.186C259.953 302.683 265.045 296.461 264.267 293.261C264.179 292.88 263.886 292.219 263.02 292.219" fill="#B8AFA3" />
        <path d="M254.024 292.219C250.296 292.528 246.833 299.836 248.711 301.186C250.795 302.683 255.902 296.461 255.213 293.261C255.125 292.88 254.86 292.219 254.024 292.219Z" fill="#B8AFA3" />
        <path d="M245.277 292.219C241.638 292.528 238.086 299.836 239.891 301.186C241.887 302.668 246.994 296.461 246.407 293.261C246.334 292.88 246.099 292.219 245.277 292.219Z" fill="#B8AFA3" />
        <path d="M236.751 292.219C233.214 292.528 229.604 299.836 231.321 301.186C233.229 302.683 238.351 296.461 237.837 293.261C237.778 292.88 237.558 292.219 236.751 292.219Z" fill="#B8AFA3" />
        <path d="M228.503 292.219C225.069 292.528 221.386 299.836 223.015 301.186C224.82 302.668 229.927 296.461 229.531 293.261C229.487 292.88 229.281 292.219 228.518 292.219" fill="#B8AFA3" />
        <path d="M220.49 292.219C217.144 292.528 213.402 299.836 214.943 301.186C216.645 302.668 221.753 296.461 221.444 293.261C221.4 292.88 221.239 292.219 220.49 292.219Z" fill="#B8AFA3" />
        <path d="M212.654 292.219C209.41 292.528 205.595 299.836 207.062 301.186C208.677 302.683 213.784 296.461 213.564 293.261C213.534 292.88 213.387 292.219 212.654 292.219Z" fill="#B8AFA3" />
        <path d="M205.184 292.219C202.043 292.528 198.169 299.836 199.534 301.186C201.045 302.668 206.138 296.446 206.02 293.261C206.02 292.88 205.874 292.219 205.184 292.219Z" fill="#B8AFA3" />
        <path d="M197.978 292.219C194.94 292.528 190.993 299.836 192.284 301.186C193.708 302.668 198.771 296.446 198.756 293.261C198.756 292.88 198.653 292.219 197.978 292.219Z" fill="#B8AFA3" />
        <path d="M191.037 292.219C189.452 292.381 187.456 294.978 186.619 296.329C185.167 298.691 184.653 300.819 185.431 301.304C187.148 302.346 192.358 295.257 191.697 292.777C191.565 292.308 191.227 292.234 191.037 292.219Z" fill="#B8AFA3" />
        <path d="M184.374 292.219C182.848 292.381 180.852 294.978 180.015 296.329C178.548 298.691 177.99 300.819 178.724 301.304C180.338 302.346 185.548 295.257 184.99 292.777C184.888 292.308 184.55 292.234 184.374 292.219Z" fill="#B8AFA3" />
        <path d="M177.99 292.219C176.523 292.381 174.541 294.978 173.69 296.329C172.208 298.691 171.606 300.819 172.296 301.304C173.808 302.346 179.017 295.257 178.563 292.777C178.474 292.308 178.166 292.234 177.99 292.219Z" fill="#B8AFA3" />
        <path d="M171.885 292.219C170.476 292.381 168.495 294.978 167.644 296.329C166.147 298.691 165.516 300.819 166.147 301.304C167.556 302.346 172.766 295.257 172.413 292.777C172.34 292.308 172.047 292.234 171.885 292.219Z" fill="#B8AFA3" />
        <path d="M166.015 292.219C164.665 292.381 162.698 294.978 161.832 296.329C160.336 298.691 159.646 300.819 160.233 301.304C161.524 302.346 166.734 295.257 166.499 292.777C166.455 292.308 166.176 292.234 166.015 292.219Z" fill="#B8AFA3" />
        <path d="M160.497 292.22C157.943 292.557 153.732 300.467 154.685 301.289C155.874 302.316 161.069 295.228 160.937 292.763C160.908 292.293 160.644 292.22 160.497 292.205" fill="#B8AFA3" />
        <path d="M155.272 292.22C152.836 292.557 148.551 300.467 149.432 301.289C150.518 302.316 155.698 295.228 155.669 292.763C155.669 292.293 155.419 292.22 155.272 292.205" fill="#B8AFA3" />
        <path d="M150.356 292.22C148.037 292.557 143.679 300.467 144.486 301.289C145.469 302.302 150.635 295.213 150.708 292.763C150.708 292.293 150.503 292.22 150.356 292.205" fill="#B8AFA3" />
        <path d="M145.733 292.219C144.853 292.352 143.209 294.142 141.536 296.798C140.274 298.794 139.32 301.098 139.937 301.377C141.169 301.92 146.57 293.981 146.012 292.44C145.968 292.322 145.865 292.234 145.733 292.234" fill="#B8AFA3" />
        <path d="M141.433 292.219C140.612 292.352 138.997 294.142 137.31 296.798C136.033 298.794 135.05 301.098 135.607 301.377C136.723 301.92 142.123 293.981 141.698 292.44C141.668 292.322 141.566 292.234 141.448 292.234" fill="#B8AFA3" />
        <path d="M1290.69 277.97C1289.32 278.263 1294.18 285.527 1296.13 286.804C1296.76 287.215 1297 286.995 1296.81 286.232C1296.19 283.737 1291.89 277.94 1290.67 277.97" fill="#B8AFA3" />
        <path d="M1286.5 277.97C1285.01 278.263 1289.85 285.527 1291.88 286.804C1292.52 287.215 1292.8 286.995 1292.64 286.232C1292.11 283.737 1287.8 277.94 1286.5 277.97Z" fill="#B8AFA3" />
        <path d="M1282.03 277.97C1280.53 278.234 1284.79 284.984 1287.11 286.643C1287.93 287.23 1288.34 287.083 1288.18 286.232C1287.74 283.737 1283.42 277.955 1282.03 277.97Z" fill="#B8AFA3" />
        <path d="M1277.35 278.146C1275.79 278.41 1279.84 284.882 1282.15 286.481C1282.97 287.054 1283.39 286.907 1283.28 286.085C1282.94 283.693 1278.79 278.131 1277.36 278.146" fill="#B8AFA3" />
        <path d="M1272.09 277.97C1270.38 278.234 1274.54 284.984 1276.99 286.643C1277.96 287.303 1278.42 287.039 1278.21 285.968C1277.68 283.326 1273.56 277.955 1272.09 277.97Z" fill="#B8AFA3" />
        <path d="M1266.71 277.97C1264.96 278.234 1268.59 284.441 1271.26 286.452C1272.42 287.332 1273.03 287.142 1272.83 285.968C1272.36 283.253 1268.29 277.955 1266.71 277.97Z" fill="#B8AFA3" />
        <path d="M1261.04 277.97C1259.19 278.234 1262.76 284.441 1265.49 286.452C1266.68 287.332 1267.34 287.142 1267.18 285.968C1266.79 283.253 1262.73 277.955 1261.06 277.97" fill="#B8AFA3" />
        <path d="M1255.08 277.97C1253.12 278.234 1256.64 284.441 1259.43 286.452C1260.65 287.332 1261.34 287.142 1261.2 285.968C1260.9 283.267 1256.83 277.955 1255.08 277.97Z" fill="#B8AFA3" />
        <path d="M1248.83 277.97C1246.9 278.219 1249.96 283.972 1252.78 286.232C1254.16 287.347 1255.07 287.244 1254.97 285.968C1254.75 283.253 1250.68 277.955 1248.83 277.97Z" fill="#B8AFA3" />
        <path d="M1242.32 277.97C1240.29 278.219 1243.3 283.972 1246.16 286.232C1247.69 287.435 1248.63 287.2 1248.41 285.674C1247.98 282.856 1244.12 277.955 1242.32 277.97Z" fill="#B8AFA3" />
        <path d="M1235.54 277.97C1233.41 278.219 1236.36 283.972 1239.26 286.232C1240.82 287.435 1241.8 287.2 1241.61 285.674C1241.26 282.856 1237.4 277.955 1235.52 277.97" fill="#B8AFA3" />
        <path d="M1228.4 277.97C1226.19 278.219 1229.06 283.972 1232.01 286.232C1233.6 287.45 1234.63 287.215 1234.48 285.674C1234.2 282.856 1230.34 277.955 1228.4 277.97Z" fill="#B8AFA3" />
        <path d="M1221.08 277.97C1218.88 278.204 1221.32 283.487 1224.25 285.968C1226.01 287.465 1227.26 287.332 1227.14 285.674C1226.94 282.856 1223.09 277.955 1221.07 277.97" fill="#B8AFA3" />
        <path d="M1213.49 277.97C1211.22 278.204 1213.57 283.487 1216.55 285.968C1218.34 287.465 1219.63 287.332 1219.55 285.674C1219.42 282.856 1215.58 277.955 1213.49 277.97Z" fill="#B8AFA3" />
        <path d="M1205.66 277.97C1203.29 278.204 1205.58 283.488 1208.59 285.968C1210.51 287.553 1211.89 287.274 1211.67 285.351C1211.35 282.446 1207.68 277.955 1205.66 277.97Z" fill="#B8AFA3" />
        <path d="M1197.57 277.97C1195.13 278.204 1197.35 283.488 1200.37 285.968C1202.31 287.553 1203.75 287.274 1203.57 285.351C1203.31 282.446 1199.65 277.955 1197.56 277.97" fill="#B8AFA3" />
        <path d="M1189.24 277.97C1186.71 278.204 1188.87 283.488 1191.92 285.968C1193.87 287.553 1195.35 287.274 1195.24 285.351C1195.05 282.446 1191.41 277.955 1189.24 277.97Z" fill="#B8AFA3" />
        <path d="M1180.66 277.97C1178.05 278.204 1180.12 283.487 1183.22 285.968C1185.32 287.655 1186.9 287.215 1186.62 284.999C1186.23 282.035 1182.78 277.955 1180.68 277.955" fill="#B8AFA3" />
        <path d="M1171.74 277.97C1169.07 278.204 1171.07 283.487 1174.18 285.968C1176.29 287.655 1177.93 287.215 1177.69 284.999C1177.35 282.035 1173.91 277.955 1171.74 277.955" fill="#B8AFA3" />
        <path d="M1162.69 277.97C1160.09 278.19 1161.7 283.077 1164.64 285.674C1166.88 287.67 1168.82 287.347 1168.6 284.999C1168.34 282.035 1164.9 277.955 1162.69 277.955" fill="#B8AFA3" />
        <path d="M1153.41 277.97C1150.76 278.19 1152.3 283.077 1155.23 285.674C1157.49 287.685 1159.49 287.347 1159.31 284.999C1159.11 282.035 1155.69 277.955 1153.41 277.955" fill="#B8AFA3" />
        <path d="M1143.9 277.97C1141.16 278.19 1142.63 283.077 1145.58 285.674C1147.85 287.67 1149.89 287.347 1149.79 284.999C1149.64 282.035 1146.24 277.955 1143.9 277.955" fill="#B8AFA3" />
        <path d="M1134.16 277.97C1131.35 278.19 1132.75 283.077 1135.71 285.674C1138 287.685 1140.09 287.347 1140.03 284.999C1139.94 282.035 1136.55 277.955 1134.16 277.955" fill="#B8AFA3" />
        <path d="M1124.21 277.97C1121.35 278.19 1122.65 283.077 1125.63 285.674C1128.07 287.802 1130.28 287.274 1130.02 284.632C1129.73 281.638 1126.53 277.955 1124.21 277.97Z" fill="#B8AFA3" />
        <path d="M1113.94 277.97C1111 278.19 1112.22 283.077 1115.21 285.674C1117.66 287.802 1119.94 287.274 1119.73 284.632C1119.5 281.638 1116.31 277.955 1113.94 277.97Z" fill="#B8AFA3" />
        <path d="M1103.54 277.97C1100.55 278.19 1101.71 283.077 1104.69 285.674C1107.14 287.817 1109.47 287.288 1109.31 284.632C1109.14 281.638 1105.95 277.955 1103.54 277.97Z" fill="#B8AFA3" />
        <path d="M1092.96 277.97C1089.91 278.19 1090.98 283.077 1093.98 285.674C1096.43 287.802 1098.8 287.274 1098.72 284.632C1098.6 281.638 1095.44 277.955 1092.98 277.97" fill="#B8AFA3" />
        <path d="M1082.19 277.97C1079.08 278.19 1080.06 283.077 1083.06 285.674C1085.67 287.949 1088.19 287.2 1087.87 284.236C1087.55 281.301 1084.53 277.955 1082.19 277.97Z" fill="#B8AFA3" />
        <path d="M1071.21 277.97C1068.03 278.19 1068.95 283.077 1071.95 285.674C1074.56 287.949 1077.14 287.2 1076.88 284.236C1076.62 281.301 1073.61 277.955 1071.21 277.97Z" fill="#B8AFA3" />
        <path d="M1060.03 277.97C1056.79 278.19 1057.63 283.077 1060.62 285.674C1063.23 287.949 1065.87 287.2 1065.67 284.236C1065.46 281.301 1062.45 277.955 1060.03 277.97Z" fill="#B8AFA3" />
        <path d="M1048.67 277.97C1045.37 278.19 1046.13 283.077 1049.11 285.674C1051.73 287.949 1054.43 287.2 1054.26 284.236C1054.1 281.301 1051.12 277.955 1048.66 277.97" fill="#B8AFA3" />
        <path d="M1037.01 277.97C1033.65 278.19 1034.32 283.077 1037.31 285.674C1039.93 287.949 1042.69 287.2 1042.58 284.236C1042.48 281.301 1039.52 277.955 1037.01 277.97Z" fill="#B8AFA3" />
        <path d="M1025.28 277.969C1021.88 278.19 1022.46 283.077 1025.44 285.674C1028.19 288.066 1031.14 287.039 1030.8 283.825C1030.49 280.919 1027.72 277.969 1025.29 277.969" fill="#B8AFA3" />
        <path d="M1013.38 277.969C1009.91 278.19 1010.41 283.077 1013.39 285.674C1016.12 288.066 1019.15 287.039 1018.85 283.825C1018.6 280.919 1015.83 277.969 1013.38 277.969Z" fill="#B8AFA3" />
        <path d="M989.061 277.969C985.48 278.19 985.803 283.077 988.768 285.674C991.497 288.066 994.638 287.039 994.462 283.825C994.3 280.919 991.571 277.969 989.046 277.969" fill="#B8AFA3" />
        <path d="M938.357 277.97C934.586 278.19 934.571 283.077 937.491 285.674C940.382 288.257 943.86 286.951 943.582 283.385C943.362 280.596 940.823 277.955 938.342 277.955" fill="#B8AFA3" />
        <path d="M925.619 279.158C922.801 279.32 922.713 282.93 924.87 284.867C926.998 286.775 929.625 285.806 929.464 283.179C929.346 281.11 927.468 279.173 925.619 279.173" fill="#B8AFA3" />
        <path d="M613.486 279.481C610.507 279.643 609.289 283.15 611.006 284.794C612.767 286.496 615.937 284.823 615.995 282.167C616.025 280.626 614.953 279.467 613.486 279.467" fill="#B8AFA3" />
        <path d="M599.647 277.969C595.215 278.204 593.307 283.487 595.802 285.968C598.385 288.536 603.169 286.026 603.316 282.02C603.404 279.716 601.833 277.969 599.647 277.969Z" fill="#B8AFA3" />
        <path d="M585.588 277.969C581.009 278.219 579.16 283.972 581.933 286.232C584.839 288.609 589.682 285.175 589.11 281.139C588.846 279.276 587.393 277.969 585.573 277.969" fill="#B8AFA3" />
        <path d="M571.807 277.969C567.258 278.219 565.335 283.972 568.036 286.232C570.883 288.609 575.74 285.19 575.256 281.139C575.036 279.276 573.612 277.969 571.807 277.969Z" fill="#B8AFA3" />
        <path d="M558.159 277.969C553.639 278.219 551.614 283.972 554.27 286.232C557.044 288.595 561.916 285.175 561.505 281.139C561.314 279.276 559.935 277.969 558.144 277.969" fill="#B8AFA3" />
        <path d="M544.628 277.969C540.167 278.219 538.068 283.972 540.651 286.232C543.351 288.595 548.224 285.175 547.886 281.139C547.725 279.246 546.419 277.969 544.614 277.969" fill="#B8AFA3" />
        <path d="M531.244 277.969C526.812 278.219 524.655 283.972 527.164 286.232C529.806 288.609 534.678 285.175 534.414 281.139C534.297 279.276 532.991 277.969 531.244 277.969Z" fill="#B8AFA3" />
        <path d="M518.007 277.969C513.619 278.219 511.374 283.972 513.824 286.232C516.393 288.609 521.279 285.175 521.089 281.139C521.001 279.276 519.739 277.969 518.007 277.969Z" fill="#B8AFA3" />
        <path d="M504.916 277.969C500.572 278.219 498.254 283.972 500.631 286.232C503.126 288.609 508.027 285.175 507.91 281.139C507.851 279.276 506.619 277.969 504.916 277.969Z" fill="#B8AFA3" />
        <path d="M429.514 277.97C425.243 278.234 422.528 284.441 424.891 286.452C427.43 288.624 432.375 284.324 431.935 280.318C431.774 278.865 430.849 277.97 429.514 277.955" fill="#B8AFA3" />
        <path d="M417.421 277.97C413.224 278.234 410.45 284.441 412.725 286.452C415.117 288.565 420.107 284.207 419.769 280.318C419.637 278.865 418.742 277.97 417.421 277.955" fill="#B8AFA3" />
        <path d="M405.651 277.97C401.513 278.234 398.666 284.441 400.867 286.452C403.171 288.565 408.19 284.207 407.911 280.318C407.808 278.865 406.943 277.97 405.651 277.955" fill="#B8AFA3" />
        <path d="M382.64 277.97C378.604 278.234 375.596 284.441 377.68 286.452C379.91 288.624 384.856 284.324 384.753 280.318C384.709 278.865 383.902 277.97 382.655 277.955" fill="#B8AFA3" />
        <path d="M371.413 277.97C367.451 278.234 364.384 284.441 366.38 286.452C368.508 288.624 373.468 284.324 373.439 280.318C373.439 278.865 372.661 277.97 371.413 277.955" fill="#B8AFA3" />
        <path d="M349.561 277.97C345.423 278.248 342.356 284.926 344.572 286.643C346.905 288.448 351.983 283.194 351.367 279.598C351.19 278.557 350.53 277.97 349.561 277.955" fill="#B8AFA3" />
        <path d="M338.804 277.97C334.739 278.248 331.584 284.926 333.727 286.643C336.045 288.507 341.094 283.311 340.551 279.598C340.404 278.557 339.758 277.97 338.804 277.955" fill="#B8AFA3" />
        <path d="M328.399 277.97C324.408 278.248 321.179 284.926 323.248 286.643C325.42 288.448 330.513 283.194 330.072 279.598C329.94 278.557 329.339 277.97 328.399 277.955" fill="#B8AFA3" />
        <path d="M308.191 277.97C304.346 278.248 300.986 284.926 302.893 286.643C304.889 288.448 310.011 283.179 309.732 279.598C309.659 278.557 309.086 277.97 308.191 277.955" fill="#B8AFA3" />
        <path d="M298.432 277.97C294.675 278.248 291.226 284.926 293.061 286.643C294.983 288.448 300.09 283.179 299.9 279.598C299.841 278.557 299.313 277.97 298.432 277.955" fill="#B8AFA3" />
        <path d="M288.878 277.97C285.195 278.248 281.687 284.926 283.434 286.643C285.268 288.448 290.375 283.179 290.272 279.598C290.243 278.557 289.729 277.97 288.878 277.955" fill="#B8AFA3" />
        <path d="M279.442 277.97C275.846 278.248 272.266 284.926 273.924 286.643C275.67 288.448 280.777 283.179 280.748 279.598C280.748 278.557 280.264 277.97 279.427 277.955" fill="#B8AFA3" />
        <path d="M270.358 277.969C266.586 278.278 263.049 285.469 264.957 286.804C267.056 288.272 272.236 282.137 271.561 278.997C271.473 278.615 271.209 277.969 270.358 277.969Z" fill="#B8AFA3" />
        <path d="M261.494 277.969C257.81 278.278 254.2 285.469 256.02 286.804C258.03 288.272 263.211 282.137 262.624 278.997C262.55 278.615 262.316 277.969 261.479 277.969" fill="#B8AFA3" />
        <path d="M252.879 277.969C249.269 278.278 245.586 285.469 247.347 286.804C249.269 288.257 254.464 282.137 253.965 278.997C253.907 278.615 253.686 277.969 252.879 277.969Z" fill="#B8AFA3" />
        <path d="M244.5 277.969C241.007 278.278 237.25 285.469 238.908 286.804C240.743 288.272 245.952 282.152 245.541 278.997C245.497 278.615 245.292 277.969 244.514 277.969" fill="#B8AFA3" />
        <path d="M236.369 277.969C232.965 278.278 229.134 285.469 230.705 286.804C232.436 288.257 237.631 282.137 237.338 278.997C237.294 278.615 237.132 277.969 236.369 277.969Z" fill="#B8AFA3" />
        <path d="M228.503 277.969C225.201 278.278 221.298 285.469 222.794 286.804C224.438 288.257 229.633 282.137 229.413 278.997C229.384 278.615 229.237 277.969 228.503 277.969Z" fill="#B8AFA3" />
        <path d="M220.799 277.969C217.599 278.278 213.622 285.469 215.031 286.804C216.587 288.272 221.782 282.137 221.664 278.997C221.65 278.615 221.518 277.969 220.799 277.969Z" fill="#B8AFA3" />
        <path d="M213.432 277.969C210.32 278.278 206.285 285.469 207.605 286.804C209.044 288.257 214.239 282.123 214.224 278.997C214.224 278.615 214.121 277.969 213.432 277.969Z" fill="#B8AFA3" />
        <path d="M206.343 277.969C203.335 278.278 199.24 285.469 200.473 286.804C201.823 288.257 207.004 282.123 207.077 278.997C207.077 278.615 207.004 277.969 206.343 277.969Z" fill="#B8AFA3" />
        <path d="M199.519 277.969C197.949 278.131 195.909 280.684 195.043 282.02C193.546 284.339 192.974 286.437 193.722 286.907C195.381 287.934 200.723 280.949 200.15 278.512C200.033 278.043 199.695 277.969 199.504 277.969" fill="#B8AFA3" />
        <path d="M192.959 277.969C191.448 278.131 189.408 280.684 188.542 282.02C187.03 284.339 186.414 286.437 187.118 286.907C188.674 287.934 194.016 280.949 193.546 278.512C193.458 278.043 193.135 277.969 192.945 277.969" fill="#B8AFA3" />
        <path d="M186.678 277.969C185.225 278.131 183.185 280.684 182.319 282.02C180.793 284.339 180.133 286.437 180.808 286.907C182.261 287.934 187.617 280.949 187.25 278.512C187.177 278.043 186.869 277.969 186.693 277.969" fill="#B8AFA3" />
        <path d="M180.676 277.969C179.282 278.131 177.256 280.684 176.361 282.02C174.82 284.339 174.131 286.452 174.747 286.907C176.097 287.934 181.454 280.949 181.189 278.512C181.131 278.043 180.852 277.969 180.676 277.969Z" fill="#B8AFA3" />
        <path d="M174.894 277.969C173.558 278.131 171.533 280.684 170.652 282.02C169.097 284.339 168.363 286.452 168.935 286.907C170.183 287.919 175.525 280.934 175.363 278.512C175.334 278.043 175.055 277.969 174.908 277.969" fill="#B8AFA3" />
        <path d="M169.464 277.969C166.925 278.292 162.537 286.1 163.461 286.907C164.606 287.919 169.948 280.934 169.889 278.512C169.889 278.043 169.625 277.969 169.478 277.969" fill="#B8AFA3" />
        <path d="M164.327 277.969C161.92 278.292 157.444 286.1 158.281 286.907C159.323 287.919 164.65 280.934 164.694 278.512C164.694 278.043 164.459 277.969 164.327 277.969Z" fill="#B8AFA3" />
        <path d="M159.484 277.969C157.18 278.292 152.646 286.1 153.409 286.907C154.333 287.905 159.66 280.919 159.807 278.512C159.837 278.043 159.616 277.969 159.484 277.969Z" fill="#B8AFA3" />
        <path d="M154.935 277.969C154.069 278.102 152.381 279.877 150.65 282.49C149.344 284.441 148.346 286.716 148.933 286.98C150.121 287.523 155.698 279.701 155.214 278.175C155.17 278.058 155.067 277.969 154.95 277.969" fill="#B8AFA3" />
        <path d="M150.708 277.969C149.901 278.102 148.243 279.877 146.482 282.49C145.161 284.441 144.119 286.716 144.647 286.98C145.733 287.523 151.31 279.701 150.929 278.175C150.899 278.058 150.811 277.969 150.694 277.969" fill="#B8AFA3" />
        <path d="M1285.01 264.145C1283.79 264.424 1288.84 271.586 1290.72 272.818C1291.02 273.024 1291.52 273.259 1291.35 272.481C1290.85 270.265 1286.17 264.101 1285.01 264.145Z" fill="#B8AFA3" />
        <path d="M1281.21 264.145C1279.87 264.424 1284.89 271.586 1286.86 272.819C1287.18 273.024 1287.71 273.259 1287.56 272.481C1287.16 270.265 1282.47 264.116 1281.21 264.145Z" fill="#B8AFA3" />
        <path d="M1277.1 264.145C1275.64 264.424 1280.63 271.586 1282.67 272.819C1283.33 273.215 1283.6 273.009 1283.41 272.261C1282.81 269.81 1278.39 264.116 1277.1 264.145Z" fill="#B8AFA3" />
        <path d="M1272.68 264.145C1271.21 264.41 1275.62 271.043 1277.95 272.672C1278.78 273.259 1279.17 273.097 1278.99 272.261C1278.48 269.81 1274.04 264.116 1272.68 264.145Z" fill="#B8AFA3" />
        <path d="M1267.98 264.145C1266.41 264.41 1270.76 271.043 1273.16 272.672C1274.03 273.259 1274.44 273.097 1274.29 272.261C1273.87 269.81 1269.44 264.116 1267.98 264.145Z" fill="#B8AFA3" />
        <path d="M1262.92 264.145C1261.31 264.395 1265.14 270.5 1267.75 272.481C1268.78 273.259 1269.36 273.171 1269.23 272.261C1268.89 269.81 1264.46 264.116 1262.92 264.145Z" fill="#B8AFA3" />
        <path d="M1257.62 264.145C1255.92 264.395 1259.68 270.5 1262.36 272.481C1263.42 273.259 1264.04 273.171 1263.93 272.261C1263.68 269.81 1259.25 264.116 1257.62 264.145Z" fill="#B8AFA3" />
        <path d="M1252.05 264.145C1250.24 264.395 1253.94 270.5 1256.68 272.481C1257.89 273.347 1258.52 273.156 1258.33 271.997C1257.86 269.34 1253.7 264.116 1252.06 264.131" fill="#B8AFA3" />
        <path d="M1246.19 264.145C1244.37 264.38 1247.63 270.045 1250.43 272.261C1251.81 273.362 1252.65 273.244 1252.47 271.997C1252.09 269.34 1247.92 264.116 1246.21 264.131" fill="#B8AFA3" />
        <path d="M1240.06 264.145C1238.16 264.38 1241.35 270.045 1244.19 272.261C1245.59 273.362 1246.47 273.259 1246.34 271.997C1246.04 269.34 1241.88 264.116 1240.07 264.131" fill="#B8AFA3" />
        <path d="M1233.64 264.145C1231.66 264.38 1234.79 270.045 1237.66 272.261C1239.09 273.362 1240 273.244 1239.89 271.997C1239.67 269.34 1235.52 264.116 1233.64 264.131" fill="#B8AFA3" />
        <path d="M1226.97 264.145C1224.88 264.38 1227.95 270.045 1230.87 272.261C1232.44 273.45 1233.39 273.215 1233.17 271.718C1232.75 268.944 1228.8 264.131 1226.97 264.145Z" fill="#B8AFA3" />
        <path d="M1219.95 264.145C1217.88 264.38 1220.49 269.561 1223.41 272.011C1225.16 273.464 1226.35 273.332 1226.14 271.718C1225.79 268.944 1221.84 264.131 1219.94 264.145" fill="#B8AFA3" />
        <path d="M1212.76 264.145C1210.62 264.38 1213.14 269.561 1216.11 272.011C1217.85 273.45 1219.1 273.332 1218.94 271.718C1218.66 268.944 1214.73 264.131 1212.75 264.145" fill="#B8AFA3" />
        <path d="M1205.3 264.145C1203.07 264.38 1205.54 269.561 1208.53 272.011C1210.31 273.464 1211.6 273.332 1211.48 271.718C1211.28 268.944 1207.36 264.131 1205.3 264.145Z" fill="#B8AFA3" />
        <path d="M1197.6 264.145C1195.3 264.38 1197.69 269.561 1200.71 272.011C1202.65 273.582 1204 273.303 1203.73 271.41C1203.32 268.548 1199.61 264.145 1197.61 264.16" fill="#B8AFA3" />
        <path d="M1189.65 264.145C1187.25 264.38 1189.59 269.561 1192.62 272.011C1194.58 273.582 1195.99 273.303 1195.75 271.41C1195.41 268.548 1191.7 264.145 1189.65 264.16" fill="#B8AFA3" />
        <path d="M1181.44 264.145C1178.98 264.38 1181.22 269.561 1184.3 272.011C1186.27 273.582 1187.72 273.303 1187.55 271.41C1187.27 268.548 1183.57 264.145 1181.46 264.16" fill="#B8AFA3" />
        <path d="M1173.02 264.145C1170.61 264.365 1172.46 269.164 1175.4 271.718C1177.51 273.567 1179.24 273.42 1179.09 271.395C1178.89 268.533 1175.21 264.131 1173.02 264.145Z" fill="#B8AFA3" />
        <path d="M1164.24 264.145C1161.78 264.365 1163.57 269.164 1166.49 271.718C1168.62 273.567 1170.39 273.42 1170.29 271.395C1170.16 268.533 1166.47 264.131 1164.24 264.145Z" fill="#B8AFA3" />
        <path d="M1155.33 264.145C1152.8 264.365 1154.51 269.164 1157.45 271.718C1159.58 273.567 1161.41 273.42 1161.35 271.395C1161.28 268.533 1157.62 264.131 1155.32 264.145" fill="#B8AFA3" />
        <path d="M1146.21 264.145C1143.61 264.365 1145.24 269.164 1148.19 271.718C1150.46 273.699 1152.41 273.376 1152.19 271.057C1151.92 268.137 1148.45 264.131 1146.22 264.145" fill="#B8AFA3" />
        <path d="M1136.86 264.145C1134.17 264.365 1135.73 269.164 1138.69 271.718C1140.98 273.684 1142.98 273.376 1142.82 271.057C1142.6 268.137 1139.15 264.145 1136.86 264.145Z" fill="#B8AFA3" />
        <path d="M1127.27 264.145C1124.53 264.365 1126.01 269.164 1128.99 271.718C1131.3 273.699 1133.34 273.376 1133.22 271.057C1133.06 268.137 1129.62 264.131 1127.29 264.145" fill="#B8AFA3" />
        <path d="M1117.49 264.145C1114.68 264.365 1116.08 269.164 1119.06 271.718C1121.35 273.684 1123.46 273.361 1123.39 271.057C1123.3 268.137 1119.88 264.145 1117.49 264.145Z" fill="#B8AFA3" />
        <path d="M1107.39 264.145C1104.51 264.365 1105.82 269.164 1108.81 271.718C1111.26 273.816 1113.49 273.303 1113.23 270.691C1112.94 267.755 1109.71 264.145 1107.39 264.145Z" fill="#B8AFA3" />
        <path d="M1097.18 264.145C1094.24 264.365 1095.49 269.164 1098.47 271.718C1100.93 273.831 1103.21 273.303 1102.99 270.691C1102.74 267.755 1099.54 264.145 1097.18 264.145Z" fill="#B8AFA3" />
        <path d="M1086.77 264.145C1083.78 264.365 1084.94 269.164 1087.93 271.718C1090.38 273.816 1092.73 273.303 1092.57 270.691C1092.39 267.755 1089.19 264.145 1086.79 264.145" fill="#B8AFA3" />
        <path d="M1076.17 264.145C1073.12 264.365 1074.19 269.164 1077.19 271.718C1079.64 273.816 1082.03 273.303 1081.93 270.691C1081.81 267.755 1078.64 264.145 1076.17 264.145Z" fill="#B8AFA3" />
        <path d="M1065.37 264.145C1062.26 264.365 1063.26 269.164 1066.24 271.718C1068.87 273.963 1071.39 273.215 1071.05 270.294C1070.73 267.359 1067.75 264.131 1065.36 264.145" fill="#B8AFA3" />
        <path d="M1054.4 264.145C1051.23 264.365 1052.14 269.164 1055.12 271.718C1057.74 273.963 1060.33 273.215 1060.05 270.294C1059.77 267.359 1056.82 264.131 1054.38 264.145" fill="#B8AFA3" />
        <path d="M1043.21 264.145C1039.99 264.365 1040.81 269.164 1043.8 271.718C1046.43 273.963 1049.05 273.215 1048.85 270.294C1048.63 267.359 1045.69 264.131 1043.23 264.145" fill="#B8AFA3" />
        <path d="M1031.74 264.145C1028.45 264.365 1029.2 269.164 1032.18 271.718C1034.79 273.963 1037.49 273.215 1037.33 270.294C1037.17 267.359 1034.25 264.131 1031.74 264.145Z" fill="#B8AFA3" />
        <path d="M1020.2 264.145C1016.86 264.365 1017.52 269.164 1020.5 271.718C1023.11 273.963 1025.87 273.215 1025.76 270.294C1025.66 267.359 1022.76 264.131 1020.22 264.145" fill="#B8AFA3" />
        <path d="M1008.51 264.145C1005.12 264.365 1005.69 269.164 1008.65 271.718C1011.38 274.081 1014.33 273.068 1013.99 269.883C1013.69 267.036 1010.93 264.131 1008.51 264.145Z" fill="#B8AFA3" />
        <path d="M996.634 264.145C993.17 264.365 993.655 269.164 996.619 271.718C999.349 274.081 1002.37 273.068 1002.08 269.883C1001.83 267.036 999.07 264.131 996.634 264.145Z" fill="#B8AFA3" />
        <path d="M984.6 264.145C981.092 264.365 981.474 269.164 984.438 271.718C987.168 274.081 990.235 273.068 990.015 269.883C989.81 267.036 987.08 264.131 984.6 264.145Z" fill="#B8AFA3" />
        <path d="M921.935 264.145C918.193 264.365 918.149 269.164 921.04 271.718C923.902 274.257 927.365 272.965 927.116 269.458C926.91 266.728 924.401 264.145 921.95 264.145" fill="#B8AFA3" />
        <path d="M615.452 264.145C611.064 264.38 609.23 269.561 611.725 272.011C614.322 274.55 619.033 272.07 619.136 268.122C619.195 265.906 617.58 264.16 615.452 264.16" fill="#B8AFA3" />
        <path d="M601.657 264.145C597.313 264.38 595.391 269.561 597.812 272.011C600.336 274.55 605.062 272.07 605.238 268.122C605.341 265.906 603.771 264.16 601.657 264.16" fill="#B8AFA3" />
        <path d="M587.818 264.145C583.313 264.38 581.464 270.045 584.164 272.261C587.026 274.609 591.81 271.234 591.267 267.242C591.017 265.422 589.609 264.145 587.818 264.145Z" fill="#B8AFA3" />
        <path d="M574.273 264.145C569.811 264.38 567.86 270.045 570.501 272.261C573.29 274.609 578.103 271.234 577.648 267.242C577.443 265.422 576.063 264.145 574.287 264.145" fill="#B8AFA3" />
        <path d="M560.859 264.145C556.413 264.38 554.373 270.045 556.97 272.261C559.685 274.594 564.514 271.219 564.132 267.242C563.956 265.422 562.62 264.145 560.859 264.145Z" fill="#B8AFA3" />
        <path d="M547.549 264.145C543.161 264.38 541.047 270.045 543.557 272.261C546.199 274.594 551.027 271.219 550.733 267.242C550.601 265.393 549.324 264.145 547.549 264.145Z" fill="#B8AFA3" />
        <path d="M534.385 264.145C530.041 264.38 527.84 270.045 530.29 272.261C532.873 274.609 537.701 271.234 537.481 267.242C537.379 265.422 536.102 264.145 534.385 264.145Z" fill="#B8AFA3" />
        <path d="M521.368 264.145C517.068 264.38 514.778 270.045 517.156 272.261C519.665 274.609 524.508 271.234 524.361 267.242C524.288 265.422 523.055 264.145 521.368 264.145Z" fill="#B8AFA3" />
        <path d="M508.497 264.145C504.241 264.38 501.879 270.045 504.183 272.261C506.619 274.609 511.476 271.234 511.403 267.242C511.374 265.422 510.17 264.145 508.497 264.145Z" fill="#B8AFA3" />
        <path d="M495.627 264.145C491.415 264.38 488.979 270.045 491.209 272.261C493.572 274.609 498.43 271.234 498.444 267.242C498.444 265.422 497.285 264.145 495.627 264.145Z" fill="#B8AFA3" />
        <path d="M422.455 264.145C418.331 264.395 415.484 270.5 417.685 272.481C420.004 274.58 425.008 270.294 424.715 266.449C424.612 265.026 423.746 264.145 422.44 264.145" fill="#B8AFA3" />
        <path d="M410.876 264.145C406.796 264.395 403.89 270.5 406.018 272.481C408.263 274.58 413.268 270.294 413.062 266.449C412.989 265.026 412.152 264.145 410.876 264.145Z" fill="#B8AFA3" />
        <path d="M399.473 264.145C395.452 264.395 392.458 270.5 394.513 272.481C396.684 274.58 401.703 270.294 401.571 266.449C401.527 265.026 400.72 264.145 399.458 264.145" fill="#B8AFA3" />
        <path d="M388.246 264.145C384.269 264.395 381.202 270.5 383.198 272.481C385.282 274.565 390.315 270.28 390.271 266.449C390.257 265.026 389.479 264.145 388.246 264.145Z" fill="#B8AFA3" />
        <path d="M377.21 264.145C372.998 264.424 370.004 270.984 372.294 272.672C374.715 274.462 379.793 269.282 379.089 265.745C378.883 264.732 378.193 264.145 377.195 264.145" fill="#B8AFA3" />
        <path d="M355.637 264.307C351.719 264.571 348.681 270.881 350.75 272.51C352.937 274.242 357.868 269.267 357.339 265.848C357.193 264.864 356.576 264.307 355.652 264.307" fill="#B8AFA3" />
        <path d="M334.504 264.952C331.305 265.173 328.605 270.529 330.219 271.909C331.921 273.361 336.119 269.15 335.825 266.273C335.737 265.437 335.268 264.967 334.504 264.967" fill="#B8AFA3" />
        <path d="M314.472 265.275C311.669 265.481 309.101 270.338 310.466 271.586C311.904 272.907 315.72 269.076 315.573 266.464C315.529 265.716 315.133 265.275 314.472 265.275Z" fill="#B8AFA3" />
        <path d="M305.432 264.145C301.734 264.424 298.183 270.984 299.944 272.672C301.793 274.462 306.944 269.282 306.841 265.745C306.812 264.732 306.298 264.145 305.447 264.145" fill="#B8AFA3" />
        <path d="M277.74 264.307C274.144 264.585 270.637 271.395 272.412 272.657C274.364 274.036 279.413 268.254 278.855 265.275C278.782 264.908 278.547 264.307 277.754 264.307" fill="#B8AFA3" />
        <path d="M269.125 264.145C265.5 264.439 261.758 271.527 263.519 272.819C265.471 274.271 270.725 268.24 270.226 265.143C270.167 264.762 269.947 264.145 269.125 264.131" fill="#B8AFA3" />
        <path d="M260.657 264.145C257.106 264.439 253.29 271.527 254.978 272.819C256.827 274.257 262.11 268.24 261.699 265.143C261.655 264.762 261.45 264.145 260.657 264.131" fill="#B8AFA3" />
        <path d="M252.41 264.145C248.961 264.439 245.072 271.527 246.657 272.819C248.433 274.271 253.716 268.24 253.393 265.143C253.349 264.762 253.173 264.145 252.41 264.131" fill="#B8AFA3" />
        <path d="M244.411 264.145C241.065 264.439 237.088 271.527 238.6 272.819C240.273 274.257 245.556 268.24 245.336 265.143C245.307 264.762 245.16 264.145 244.411 264.131" fill="#B8AFA3" />
        <path d="M236.677 264.145C233.42 264.439 229.384 271.527 230.807 272.819C232.378 274.257 237.675 268.24 237.543 265.143C237.529 264.762 237.397 264.145 236.677 264.131" fill="#B8AFA3" />
        <path d="M229.09 264.145C225.935 264.439 221.826 271.527 223.161 272.819C224.644 274.271 229.941 268.24 229.897 265.143C229.897 264.762 229.78 264.145 229.076 264.131" fill="#B8AFA3" />
        <path d="M221.855 264.145C218.788 264.439 214.62 271.527 215.868 272.819C217.247 274.257 222.53 268.225 222.604 265.143C222.604 264.762 222.53 264.145 221.855 264.131" fill="#B8AFA3" />
        <path d="M214.884 264.145C213.285 264.307 211.201 266.816 210.335 268.108C208.794 270.397 208.222 272.466 208.985 272.936C210.687 273.948 216.132 267.08 215.545 264.674C215.427 264.219 215.09 264.145 214.884 264.145Z" fill="#B8AFA3" />
        <path d="M208.163 264.145C206.607 264.307 204.538 266.816 203.658 268.108C202.102 270.397 201.486 272.466 202.205 272.936C203.804 273.948 209.264 267.08 208.779 264.674C208.691 264.219 208.354 264.145 208.163 264.145Z" fill="#B8AFA3" />
        <path d="M201.72 264.145C200.224 264.307 198.154 266.816 197.259 268.108C195.689 270.397 195.028 272.466 195.704 272.936C197.2 273.948 202.674 267.08 202.278 264.674C202.205 264.219 201.882 264.145 201.706 264.145" fill="#B8AFA3" />
        <path d="M195.542 264.145C194.104 264.307 192.035 266.816 191.139 268.108C189.554 270.397 188.85 272.466 189.481 272.936C190.875 273.948 196.364 267.08 196.07 264.674C196.012 264.219 195.718 264.145 195.542 264.145Z" fill="#B8AFA3" />
        <path d="M189.643 264.145C188.263 264.307 186.194 266.816 185.299 268.108C183.714 270.397 182.95 272.466 183.537 272.936C184.844 273.948 190.318 267.08 190.127 264.674C190.083 264.219 189.804 264.145 189.643 264.145Z" fill="#B8AFA3" />
        <path d="M183.948 264.145C182.628 264.307 180.558 266.816 179.649 268.108C178.049 270.397 177.242 272.481 177.785 272.936C178.988 273.948 184.462 267.08 184.374 264.674C184.359 264.219 184.095 264.145 183.934 264.145" fill="#B8AFA3" />
        <path d="M178.621 264.145C176.126 264.468 171.548 272.129 172.428 272.936C173.529 273.934 179.003 267.066 179.017 264.674C179.017 264.219 178.768 264.145 178.621 264.145Z" fill="#B8AFA3" />
        <path d="M173.573 264.145C171.195 264.468 166.543 272.129 167.35 272.936C168.334 273.934 173.808 267.066 173.925 264.674C173.954 264.219 173.72 264.145 173.573 264.145Z" fill="#B8AFA3" />
        <path d="M168.803 264.145C166.529 264.468 161.818 272.129 162.537 272.936C163.417 273.919 168.877 267.051 169.097 264.674C169.141 264.233 168.95 264.145 168.789 264.145" fill="#B8AFA3" />
        <path d="M164.342 264.145C163.491 264.277 161.774 266.009 159.983 268.563C158.633 270.5 157.562 272.745 158.134 273.009C159.294 273.538 165.032 265.848 164.591 264.351C164.562 264.233 164.459 264.16 164.342 264.145Z" fill="#B8AFA3" />
        <path d="M1278.49 250.409C1277.26 250.732 1283.14 258.231 1284.63 259.024C1285.01 259.229 1285.14 259.068 1284.99 258.583C1284.36 256.485 1279.5 250.38 1278.49 250.409Z" fill="#B8AFA3" />
        <path d="M1275.06 250.409C1273.87 250.688 1279.06 257.688 1280.96 258.921C1281.27 259.126 1281.76 259.346 1281.57 258.583C1281.02 256.411 1276.2 250.38 1275.07 250.409" fill="#B8AFA3" />
        <path d="M1271.32 250.409C1270.01 250.688 1275.17 257.688 1277.14 258.921C1277.46 259.126 1277.99 259.346 1277.83 258.583C1277.36 256.411 1272.56 250.38 1271.32 250.409Z" fill="#B8AFA3" />
        <path d="M1267.28 250.409C1265.96 250.673 1270.54 257.16 1272.81 258.759C1273.53 259.273 1273.9 259.2 1273.8 258.569C1273.43 256.397 1268.61 250.365 1267.28 250.394" fill="#B8AFA3" />
        <path d="M1262.95 250.409C1261.53 250.673 1266.06 257.16 1268.39 258.759C1269.14 259.273 1269.52 259.2 1269.45 258.569C1269.17 256.397 1264.37 250.365 1262.95 250.394" fill="#B8AFA3" />
        <path d="M1258.31 250.409C1256.77 250.673 1261.26 257.16 1263.67 258.759C1264.53 259.332 1264.95 259.185 1264.77 258.363C1264.27 255.956 1259.74 250.394 1258.31 250.409Z" fill="#B8AFA3" />
        <path d="M1253.35 250.409C1251.78 250.658 1255.73 256.631 1258.36 258.583C1259.4 259.346 1259.96 259.258 1259.81 258.363C1259.4 255.956 1254.86 250.394 1253.35 250.409Z" fill="#B8AFA3" />
        <path d="M1248.14 250.409C1246.47 250.658 1250.36 256.631 1253.06 258.583C1254.12 259.346 1254.72 259.258 1254.6 258.363C1254.28 255.971 1249.76 250.394 1248.14 250.409Z" fill="#B8AFA3" />
        <path d="M1242.67 250.409C1241 250.644 1244.41 256.176 1247.19 258.363C1248.45 259.361 1249.21 259.361 1249.11 258.363C1248.88 255.971 1244.36 250.394 1242.67 250.409Z" fill="#B8AFA3" />
        <path d="M1236.92 250.409C1235.14 250.644 1238.5 256.176 1241.32 258.363C1242.71 259.434 1243.52 259.332 1243.31 258.114C1242.86 255.501 1238.6 250.394 1236.92 250.409Z" fill="#B8AFA3" />
        <path d="M1230.88 250.409C1229.02 250.644 1232.34 256.176 1235.18 258.363C1236.59 259.434 1237.44 259.332 1237.28 258.114C1236.92 255.501 1232.66 250.394 1230.88 250.409Z" fill="#B8AFA3" />
        <path d="M1224.59 250.409C1222.64 250.644 1225.88 256.176 1228.79 258.363C1230.21 259.434 1231.1 259.332 1230.97 258.114C1230.68 255.501 1226.44 250.394 1224.59 250.409Z" fill="#B8AFA3" />
        <path d="M1218.04 250.409C1216.11 250.629 1218.88 255.721 1221.8 258.114C1223.41 259.434 1224.51 259.434 1224.4 258.114C1224.18 255.501 1219.97 250.394 1218.04 250.409Z" fill="#B8AFA3" />
        <path d="M1211.15 250.409C1209.12 250.629 1211.84 255.721 1214.78 258.114C1216.43 259.449 1217.56 259.449 1217.5 258.114C1217.37 255.501 1213.16 250.394 1211.16 250.409" fill="#B8AFA3" />
        <path d="M1204.07 250.409C1201.96 250.629 1204.6 255.721 1207.59 258.114C1209.38 259.552 1210.59 259.434 1210.38 257.835C1210.03 255.12 1206.02 250.409 1204.09 250.409" fill="#B8AFA3" />
        <path d="M1196.75 250.409C1194.56 250.629 1197.13 255.721 1200.14 258.114C1201.91 259.522 1203.19 259.405 1203.03 257.835C1202.75 255.12 1198.76 250.409 1196.75 250.409Z" fill="#B8AFA3" />
        <path d="M1189.18 250.409C1186.92 250.629 1189.41 255.721 1192.45 258.114C1194.24 259.522 1195.56 259.405 1195.44 257.835C1195.24 255.12 1191.26 250.409 1189.19 250.409" fill="#B8AFA3" />
        <path d="M1181.37 250.409C1179.17 250.614 1181.27 255.325 1184.17 257.835C1186.15 259.537 1187.69 259.537 1187.61 257.835C1187.47 255.12 1183.51 250.409 1181.37 250.409Z" fill="#B8AFA3" />
        <path d="M1173.31 250.409C1171.04 250.614 1173.06 255.325 1175.98 257.835C1178.1 259.654 1179.74 259.508 1179.49 257.527C1179.15 254.724 1175.4 250.409 1173.31 250.424" fill="#B8AFA3" />
        <path d="M1165.02 250.409C1162.66 250.614 1164.61 255.325 1167.54 257.835C1169.67 259.654 1171.38 259.508 1171.17 257.527C1170.89 254.724 1167.15 250.409 1165.01 250.424" fill="#B8AFA3" />
        <path d="M1156.41 250.409C1153.98 250.614 1155.86 255.325 1158.81 257.835C1160.94 259.654 1162.69 259.508 1162.54 257.527C1162.33 254.724 1158.61 250.409 1156.41 250.424" fill="#B8AFA3" />
        <path d="M1147.66 250.409C1145.16 250.614 1146.97 255.325 1149.93 257.835C1152.08 259.654 1153.87 259.508 1153.76 257.527C1153.63 254.724 1149.92 250.409 1147.66 250.424" fill="#B8AFA3" />
        <path d="M1138.69 250.409C1136.14 250.614 1137.86 255.325 1140.82 257.835C1143.11 259.772 1145.02 259.449 1144.74 257.189C1144.39 254.327 1140.89 250.409 1138.69 250.409Z" fill="#B8AFA3" />
        <path d="M1129.51 250.409C1126.86 250.614 1128.51 255.325 1131.49 257.835C1133.78 259.772 1135.74 259.449 1135.52 257.189C1135.24 254.327 1131.75 250.409 1129.51 250.409Z" fill="#B8AFA3" />
        <path d="M1120.1 250.409C1117.41 250.614 1118.98 255.325 1121.96 257.835C1124.27 259.772 1126.28 259.464 1126.1 257.189C1125.88 254.327 1122.4 250.409 1120.11 250.409" fill="#B8AFA3" />
        <path d="M1110.49 250.409C1107.73 250.614 1109.22 255.325 1112.2 257.835C1114.51 259.772 1116.56 259.449 1116.44 257.189C1116.3 254.327 1112.83 250.409 1110.49 250.409Z" fill="#B8AFA3" />
        <path d="M1100.57 250.409C1097.73 250.614 1099.14 255.325 1102.14 257.835C1104.6 259.889 1106.77 259.39 1106.47 256.822C1106.11 253.946 1102.85 250.409 1100.58 250.409" fill="#B8AFA3" />
        <path d="M1090.53 250.409C1087.65 250.614 1088.97 255.325 1091.97 257.835C1094.43 259.904 1096.66 259.39 1096.4 256.822C1096.09 253.946 1092.86 250.409 1090.54 250.409" fill="#B8AFA3" />
        <path d="M1080.31 250.409C1077.38 250.614 1078.61 255.325 1081.6 257.835C1084.06 259.889 1086.35 259.39 1086.14 256.822C1085.9 253.946 1082.69 250.409 1080.31 250.409Z" fill="#B8AFA3" />
        <path d="M1069.89 250.409C1066.9 250.614 1068.04 255.325 1071.04 257.835C1073.49 259.889 1075.84 259.39 1075.68 256.822C1075.5 253.946 1072.3 250.409 1069.89 250.409Z" fill="#B8AFA3" />
        <path d="M1059.28 250.409C1056.23 250.614 1057.3 255.325 1060.28 257.835C1062.73 259.889 1065.12 259.39 1065.02 256.822C1064.9 253.946 1061.73 250.409 1059.27 250.409" fill="#B8AFA3" />
        <path d="M1048.5 250.409C1045.39 250.614 1046.37 255.325 1049.36 257.835C1051.97 260.036 1054.5 259.302 1054.19 256.441C1053.87 253.564 1050.89 250.409 1048.51 250.409" fill="#B8AFA3" />
        <path d="M1037.52 250.409C1034.35 250.614 1035.25 255.325 1038.24 257.835C1040.85 260.036 1043.43 259.302 1043.17 256.441C1042.91 253.564 1039.96 250.409 1037.52 250.409Z" fill="#B8AFA3" />
        <path d="M1026.25 250.409C1023.02 250.614 1023.84 255.325 1026.81 257.835C1029.42 260.036 1032.06 259.302 1031.84 256.441C1031.63 253.564 1028.7 250.409 1026.23 250.409" fill="#B8AFA3" />
        <path d="M1014.92 250.409C1011.63 250.614 1012.37 255.325 1015.33 257.835C1017.93 260.036 1020.63 259.302 1020.48 256.441C1020.33 253.564 1017.41 250.409 1014.92 250.409Z" fill="#B8AFA3" />
        <path d="M1003.43 250.409C1000.1 250.614 1000.74 255.325 1003.69 257.835C1006.42 260.139 1009.3 259.156 1008.92 256.044C1008.56 253.256 1005.81 250.409 1003.43 250.409Z" fill="#B8AFA3" />
        <path d="M992.055 251.201C989.296 251.378 989.751 255.208 992.143 257.248C994.359 259.126 996.751 258.319 996.487 255.795C996.252 253.52 994.007 251.201 992.055 251.201Z" fill="#B8AFA3" />
        <path d="M979.933 250.409C976.484 250.614 976.939 255.325 979.889 257.835C982.604 260.139 985.613 259.156 985.348 256.044C985.114 253.256 982.384 250.409 979.948 250.409" fill="#B8AFA3" />
        <path d="M918.413 250.556C914.876 250.761 914.891 255.296 917.65 257.703C920.336 260.051 923.652 258.818 923.373 255.589C923.153 253.006 920.747 250.556 918.399 250.556" fill="#B8AFA3" />
        <path d="M617.301 250.409C612.987 250.629 611.152 255.721 613.588 258.114C616.127 260.594 620.765 258.172 620.897 254.298C620.97 252.082 619.429 250.409 617.301 250.409Z" fill="#B8AFA3" />
        <path d="M603.741 250.409C599.456 250.629 597.533 255.721 599.911 258.114C602.479 260.711 607.41 257.849 607.234 253.872C607.146 251.876 605.678 250.424 603.741 250.409Z" fill="#B8AFA3" />
        <path d="M590.166 250.409C585.734 250.644 583.871 256.191 586.512 258.363C589.3 260.652 594.026 257.35 593.527 253.447C593.307 251.656 591.913 250.409 590.166 250.409Z" fill="#B8AFA3" />
        <path d="M576.856 250.409C572.468 250.644 570.501 256.176 573.069 258.363C575.784 260.667 580.539 257.35 580.128 253.447C579.938 251.656 578.587 250.409 576.856 250.409Z" fill="#B8AFA3" />
        <path d="M563.662 250.409C559.289 250.644 557.235 256.176 559.759 258.363C562.4 260.652 567.17 257.336 566.847 253.447C566.7 251.627 565.409 250.409 563.662 250.409Z" fill="#B8AFA3" />
        <path d="M550.587 250.409C546.272 250.644 544.144 256.191 546.58 258.363C549.148 260.652 553.918 257.336 553.683 253.447C553.566 251.627 552.318 250.409 550.587 250.409Z" fill="#B8AFA3" />
        <path d="M537.672 250.409C533.401 250.644 531.185 256.191 533.548 258.363C536.043 260.652 540.842 257.35 540.666 253.447C540.592 251.627 539.374 250.409 537.657 250.409" fill="#B8AFA3" />
        <path d="M524.875 250.409C520.634 250.644 518.344 256.191 520.648 258.363C523.085 260.652 527.884 257.35 527.795 253.447C527.751 251.627 526.577 250.409 524.89 250.409" fill="#B8AFA3" />
        <path d="M512.239 250.409C508.042 250.644 505.665 256.191 507.91 258.363C510.273 260.652 515.086 257.35 515.072 253.447C515.072 251.627 513.927 250.409 512.254 250.409" fill="#B8AFA3" />
        <path d="M499.589 250.409C495.436 250.644 492.97 256.191 495.142 258.363C497.432 260.652 502.245 257.35 502.319 253.447C502.348 251.627 501.247 250.409 499.589 250.409Z" fill="#B8AFA3" />
        <path d="M427.708 250.409C423.643 250.658 420.752 256.631 422.88 258.583C425.126 260.638 430.101 256.426 429.895 252.669C429.822 251.275 428.985 250.409 427.708 250.409Z" fill="#B8AFA3" />
        <path d="M416.335 250.409C412.329 250.658 409.349 256.631 411.404 258.583C413.561 260.638 418.566 256.426 418.434 252.669C418.39 251.275 417.582 250.409 416.32 250.409" fill="#B8AFA3" />
        <path d="M405.123 250.409C401.175 250.658 398.108 256.631 400.104 258.583C402.188 260.638 407.207 256.426 407.163 252.669C407.148 251.275 406.37 250.409 405.138 250.409" fill="#B8AFA3" />
        <path d="M394.043 250.556C390.271 250.79 387.263 256.558 389.112 258.436C391.108 260.447 395.863 256.455 395.907 252.742C395.921 251.392 395.202 250.556 394.043 250.556Z" fill="#B8AFA3" />
        <path d="M383.256 250.409C379.118 250.673 376.036 257.101 378.267 258.759C380.615 260.506 385.707 255.443 385.091 251.965C384.915 250.967 384.254 250.394 383.271 250.394" fill="#B8AFA3" />
        <path d="M362.138 250.409C358.132 250.673 354.889 257.101 356.958 258.759C359.145 260.52 364.281 255.443 363.826 251.965C363.694 250.967 363.078 250.394 362.138 250.394" fill="#B8AFA3" />
        <path d="M331.848 250.409C328.047 250.673 324.569 257.101 326.403 258.759C328.341 260.52 333.521 255.443 333.33 251.965C333.272 250.967 332.729 250.394 331.848 250.394" fill="#B8AFA3" />
        <path d="M322.192 250.409C318.464 250.673 314.898 257.101 316.659 258.759C318.523 260.506 323.703 255.443 323.6 251.965C323.571 250.967 323.058 250.394 322.192 250.394" fill="#B8AFA3" />
        <path d="M312.755 250.409C309.116 250.673 305.462 257.101 307.149 258.759C308.925 260.506 314.12 255.443 314.091 251.965C314.091 250.967 313.592 250.394 312.755 250.394" fill="#B8AFA3" />
        <path d="M303.524 250.409C299.958 250.673 296.245 257.101 297.845 258.759C299.533 260.506 304.728 255.428 304.801 251.965C304.816 250.967 304.361 250.394 303.524 250.394" fill="#B8AFA3" />
        <path d="M285.635 250.409C281.981 250.702 278.209 257.629 279.97 258.921C281.937 260.344 287.249 254.445 286.736 251.392C286.677 251.025 286.442 250.409 285.635 250.409Z" fill="#B8AFA3" />
        <path d="M277.079 250.409C273.498 250.702 269.653 257.629 271.341 258.921C273.219 260.344 278.547 254.445 278.136 251.392C278.092 251.025 277.886 250.409 277.079 250.409Z" fill="#B8AFA3" />
        <path d="M268.758 250.409C265.265 250.702 261.332 257.629 262.947 258.921C264.737 260.344 270.079 254.43 269.756 251.392C269.712 251.025 269.536 250.409 268.758 250.409Z" fill="#B8AFA3" />
        <path d="M260.657 250.409C257.267 250.702 253.246 257.629 254.772 258.921C256.475 260.344 261.846 254.445 261.596 251.392C261.567 251.025 261.406 250.409 260.643 250.409" fill="#B8AFA3" />
        <path d="M252.806 250.409C249.504 250.702 245.409 257.629 246.862 258.921C248.462 260.344 253.833 254.43 253.701 251.392C253.686 251.025 253.554 250.409 252.821 250.409" fill="#B8AFA3" />
        <path d="M245.204 250.409C241.99 250.702 237.822 257.629 239.187 258.921C240.699 260.344 246.07 254.43 246.026 251.392C246.026 251.025 245.908 250.409 245.204 250.409Z" fill="#B8AFA3" />
        <path d="M237.749 250.409C234.638 250.702 230.396 257.629 231.673 258.921C233.097 260.344 238.468 254.445 238.512 251.392C238.512 251.025 238.424 250.409 237.734 250.409" fill="#B8AFA3" />
        <path d="M230.646 250.409C227.637 250.702 223.323 257.629 224.512 258.921C225.832 260.33 231.204 254.43 231.35 251.392C231.365 251.025 231.306 250.409 230.631 250.409" fill="#B8AFA3" />
        <path d="M223.792 250.409C222.207 250.57 220.094 253.021 219.199 254.298C217.629 256.543 216.998 258.569 217.746 259.023C219.39 260.021 224.952 253.3 224.423 250.923C224.321 250.468 223.983 250.409 223.792 250.409Z" fill="#B8AFA3" />
        <path d="M217.203 250.409C215.677 250.57 213.564 253.021 212.654 254.298C211.069 256.543 210.394 258.569 211.098 259.023C212.654 260.021 218.23 253.3 217.805 250.923C217.731 250.468 217.409 250.409 217.218 250.409" fill="#B8AFA3" />
        <path d="M210.863 250.409C209.396 250.57 207.268 253.021 206.358 254.298C204.758 256.543 204.039 258.569 204.7 259.023C206.152 260.021 211.744 253.3 211.406 250.923C211.348 250.468 211.039 250.409 210.863 250.409Z" fill="#B8AFA3" />
        <path d="M204.802 250.409C203.393 250.57 201.266 253.021 200.356 254.298C198.741 256.543 197.978 258.569 198.595 259.023C199.945 260.021 205.536 253.285 205.316 250.923C205.272 250.482 204.978 250.409 204.817 250.409" fill="#B8AFA3" />
        <path d="M199.005 250.409C197.655 250.57 195.527 253.021 194.603 254.298C192.974 256.543 192.167 258.569 192.739 259.023C193.986 260.021 199.593 253.285 199.475 250.923C199.446 250.482 199.182 250.409 199.02 250.409" fill="#B8AFA3" />
        <path d="M193.414 250.409C192.123 250.57 190.009 253.021 189.07 254.298C187.427 256.543 186.575 258.569 187.104 259.023C188.248 260.021 193.854 253.285 193.84 250.923C193.84 250.482 193.576 250.409 193.429 250.409" fill="#B8AFA3" />
        <path d="M188.175 250.409C185.709 250.717 180.984 258.231 181.82 259.023C182.862 260.007 188.468 253.285 188.557 250.923C188.571 250.482 188.336 250.409 188.19 250.409" fill="#B8AFA3" />
        <path d="M183.215 250.409C180.867 250.717 176.068 258.231 176.816 259.023C177.755 260.007 183.347 253.271 183.537 250.923C183.567 250.482 183.347 250.409 183.215 250.409Z" fill="#B8AFA3" />
        <path d="M166.22 250.409C165.487 250.541 163.799 252.243 161.935 254.753C160.526 256.646 159.323 258.833 159.778 259.097C160.717 259.625 166.954 251.524 166.397 250.512C166.367 250.468 166.294 250.424 166.235 250.424" fill="#B8AFA3" />
        <path d="M1264.77 236.908C1263.63 237.186 1268.97 244.055 1270.86 245.258C1271.33 245.551 1271.55 245.507 1271.49 245.111C1271.21 243.306 1265.93 236.878 1264.77 236.908Z" fill="#B8AFA3" />
        <path d="M1261.1 236.907C1259.84 237.186 1265.15 244.054 1267.12 245.258C1267.44 245.449 1267.97 245.683 1267.78 244.935C1267.25 242.807 1262.32 236.878 1261.1 236.922" fill="#B8AFA3" />
        <path d="M1257.14 236.907C1255.85 237.157 1260.57 243.541 1262.86 245.111C1263.58 245.61 1263.95 245.537 1263.82 244.935C1263.38 242.807 1258.44 236.893 1257.14 236.922" fill="#B8AFA3" />
        <path d="M1252.9 236.907C1251.5 237.157 1256.18 243.541 1258.53 245.111C1259.28 245.61 1259.66 245.537 1259.56 244.935C1259.21 242.807 1254.29 236.893 1252.88 236.922" fill="#B8AFA3" />
        <path d="M1248.35 236.908C1246.91 237.157 1251.05 243.013 1253.63 244.92C1254.57 245.61 1255.08 245.61 1255 244.92C1254.75 242.792 1249.83 236.878 1248.33 236.908" fill="#B8AFA3" />
        <path d="M1243.48 236.908C1241.95 237.157 1246.01 243.013 1248.67 244.92C1249.71 245.669 1250.27 245.581 1250.09 244.7C1249.61 242.337 1244.97 236.878 1243.48 236.893" fill="#B8AFA3" />
        <path d="M1238.37 236.908C1236.74 237.157 1240.76 243.013 1243.46 244.92C1244.53 245.669 1245.12 245.581 1244.97 244.7C1244.58 242.352 1239.94 236.878 1238.37 236.893" fill="#B8AFA3" />
        <path d="M1233 236.908C1231.35 237.142 1234.92 242.572 1237.69 244.715C1238.97 245.698 1239.72 245.698 1239.59 244.715C1239.28 242.367 1234.66 236.893 1233 236.908Z" fill="#B8AFA3" />
        <path d="M1227.35 236.908C1225.62 237.142 1229.11 242.572 1231.94 244.715C1233.25 245.698 1234.02 245.698 1233.92 244.715C1233.7 242.367 1229.08 236.893 1227.35 236.908Z" fill="#B8AFA3" />
        <path d="M1221.42 236.908C1219.6 237.142 1223.03 242.572 1225.91 244.715C1227.33 245.772 1228.17 245.669 1227.95 244.465C1227.49 241.912 1223.16 236.893 1221.42 236.908Z" fill="#B8AFA3" />
        <path d="M1215.25 236.908C1213.43 237.128 1216.4 242.117 1219.31 244.465C1220.92 245.772 1221.95 245.772 1221.76 244.465C1221.37 241.912 1217.06 236.893 1215.24 236.908" fill="#B8AFA3" />
        <path d="M1208.81 236.908C1206.92 237.128 1209.81 242.117 1212.75 244.465C1214.37 245.772 1215.46 245.772 1215.3 244.465C1215.01 241.912 1210.69 236.893 1208.81 236.908Z" fill="#B8AFA3" />
        <path d="M1202.05 236.908C1200.07 237.128 1202.88 242.117 1205.86 244.465C1207.52 245.772 1208.64 245.772 1208.52 244.465C1208.3 241.912 1204.01 236.893 1202.05 236.908Z" fill="#B8AFA3" />
        <path d="M1195.11 236.908C1193.05 237.128 1195.79 242.117 1198.79 244.465C1200.56 245.86 1201.75 245.727 1201.5 244.187C1201.08 241.516 1197 236.893 1195.09 236.908" fill="#B8AFA3" />
        <path d="M1187.91 236.908C1185.77 237.128 1188.46 242.117 1191.48 244.465C1193.27 245.86 1194.52 245.727 1194.31 244.187C1193.96 241.516 1189.9 236.893 1187.93 236.908" fill="#B8AFA3" />
        <path d="M1180.49 236.908C1178.4 237.113 1180.68 241.736 1183.58 244.187C1185.57 245.86 1187.03 245.86 1186.86 244.187C1186.58 241.516 1182.53 236.893 1180.49 236.908Z" fill="#B8AFA3" />
        <path d="M1172.83 236.908C1170.67 237.113 1172.87 241.736 1175.79 244.187C1177.79 245.86 1179.3 245.86 1179.17 244.187C1178.96 241.516 1174.93 236.893 1172.83 236.908Z" fill="#B8AFA3" />
        <path d="M1164.92 236.908C1162.69 237.113 1164.82 241.736 1167.75 244.187C1169.75 245.86 1171.3 245.86 1171.23 244.187C1171.1 241.516 1167.09 236.893 1164.92 236.908Z" fill="#B8AFA3" />
        <path d="M1156.79 236.908C1154.48 237.113 1156.52 241.736 1159.47 244.187C1161.62 245.962 1163.27 245.83 1163.02 243.878C1162.67 241.134 1158.89 236.893 1156.77 236.908" fill="#B8AFA3" />
        <path d="M1148.33 236.908C1145.97 237.113 1147.94 241.736 1150.9 244.187C1153.05 245.962 1154.75 245.83 1154.56 243.878C1154.28 241.134 1150.49 236.893 1148.33 236.908Z" fill="#B8AFA3" />
        <path d="M1139.75 236.908C1137.31 237.113 1139.21 241.736 1142.19 244.187C1144.34 245.962 1146.09 245.83 1145.94 243.878C1145.74 241.134 1141.97 236.893 1139.75 236.908Z" fill="#B8AFA3" />
        <path d="M1130.94 236.908C1128.45 237.113 1130.25 241.736 1133.23 244.187C1135.39 245.977 1137.2 245.83 1137.09 243.878C1136.95 241.134 1133.22 236.893 1130.94 236.908Z" fill="#B8AFA3" />
        <path d="M1121.93 236.907C1119.35 237.113 1121.08 241.736 1124.08 244.187C1126.38 246.08 1128.3 245.771 1128.02 243.555C1127.67 240.752 1124.15 236.907 1121.93 236.907Z" fill="#B8AFA3" />
        <path d="M1112.69 236.907C1110.06 237.113 1111.72 241.736 1114.7 244.187C1117 246.094 1118.97 245.786 1118.73 243.555C1118.44 240.752 1114.93 236.907 1112.67 236.907" fill="#B8AFA3" />
        <path d="M1103.25 236.907C1100.55 237.113 1102.14 241.736 1105.13 244.187C1107.43 246.08 1109.44 245.771 1109.27 243.555C1109.05 240.752 1105.56 236.907 1103.25 236.907Z" fill="#B8AFA3" />
        <path d="M1093.52 236.907C1090.75 237.113 1092.24 241.736 1095.24 244.187C1097.56 246.08 1099.63 245.771 1099.49 243.555C1099.33 240.752 1095.87 236.907 1093.52 236.907Z" fill="#B8AFA3" />
        <path d="M1083.67 236.907C1080.86 237.113 1082.27 241.736 1085.26 244.187C1087.72 246.212 1089.91 245.713 1089.59 243.203C1089.22 240.371 1085.96 236.907 1083.69 236.907" fill="#B8AFA3" />
        <path d="M1073.64 236.907C1070.76 237.113 1072.08 241.736 1075.07 244.187C1077.54 246.212 1079.77 245.713 1079.51 243.203C1079.21 240.371 1075.97 236.907 1073.64 236.907Z" fill="#B8AFA3" />
        <path d="M1063.42 236.907C1060.49 237.113 1061.72 241.736 1064.71 244.187C1067.16 246.212 1069.45 245.713 1069.25 243.203C1069.01 240.371 1065.8 236.907 1063.42 236.907Z" fill="#B8AFA3" />
        <path d="M1053 236.907C1050.01 237.113 1051.17 241.736 1054.15 244.187C1056.6 246.212 1058.95 245.713 1058.78 243.203C1058.61 240.371 1055.42 236.907 1053 236.907Z" fill="#B8AFA3" />
        <path d="M1042.42 236.908C1039.37 237.113 1040.44 241.736 1043.42 244.187C1046.03 246.344 1048.5 245.625 1048.13 242.822C1047.76 240.048 1044.73 236.893 1042.42 236.908Z" fill="#B8AFA3" />
        <path d="M1031.65 236.908C1028.54 237.113 1029.52 241.736 1032.5 244.187C1035.11 246.344 1037.64 245.625 1037.31 242.822C1036.99 239.989 1034.03 236.893 1031.65 236.908Z" fill="#B8AFA3" />
        <path d="M1020.57 236.908C1017.41 237.113 1018.29 241.736 1021.27 244.187C1023.87 246.344 1026.45 245.625 1026.19 242.822C1025.93 239.989 1022.99 236.893 1020.57 236.908Z" fill="#B8AFA3" />
        <path d="M1009.46 236.908C1006.25 237.113 1007.05 241.736 1010 244.187C1012.6 246.344 1015.23 245.625 1015.04 242.822C1014.83 239.989 1011.91 236.893 1009.46 236.908Z" fill="#B8AFA3" />
        <path d="M914.7 236.907C911.105 237.113 911.163 241.736 914.01 244.187C916.828 246.623 920.145 245.39 919.822 242.029C919.573 239.402 917.078 236.907 914.7 236.907Z" fill="#B8AFA3" />
        <path d="M632.608 236.907C628.367 237.128 626.62 242.117 629.056 244.465C631.595 246.916 636.145 244.539 636.233 240.723C636.277 238.58 634.692 236.907 632.622 236.907" fill="#B8AFA3" />
        <path d="M619.209 236.907C614.983 237.128 613.134 242.117 615.511 244.465C617.991 246.901 622.555 244.524 622.717 240.723C622.805 238.58 621.264 236.907 619.209 236.907Z" fill="#B8AFA3" />
        <path d="M605.913 236.907C601.51 237.142 599.72 242.572 602.376 244.715C605.165 246.96 609.817 243.717 609.288 239.901C609.039 238.14 607.659 236.907 605.913 236.907Z" fill="#B8AFA3" />
        <path d="M592.573 236.907C588.229 237.142 586.351 242.572 588.919 244.715C591.634 246.975 596.301 243.732 595.846 239.901C595.64 238.14 594.29 236.907 592.573 236.907Z" fill="#B8AFA3" />
        <path d="M579.512 236.907C575.197 237.142 573.216 242.572 575.726 244.715C578.382 246.975 583.063 243.732 582.697 239.901C582.52 238.14 581.214 236.907 579.512 236.907Z" fill="#B8AFA3" />
        <path d="M566.568 236.907C562.268 237.142 560.199 242.572 562.65 244.715C565.233 246.96 569.943 243.717 569.665 239.901C569.533 238.14 568.256 236.907 566.568 236.907Z" fill="#B8AFA3" />
        <path d="M553.727 236.907C549.486 237.142 547.329 242.572 549.706 244.715C552.201 246.96 556.926 243.717 556.736 239.901C556.647 238.111 555.429 236.907 553.727 236.907Z" fill="#B8AFA3" />
        <path d="M541.047 236.907C536.85 237.142 534.605 242.572 536.909 244.715C539.345 246.975 544.085 243.732 543.953 239.901C543.894 238.14 542.691 236.907 541.033 236.907" fill="#B8AFA3" />
        <path d="M528.5 236.907C524.347 237.142 522.013 242.572 524.244 244.715C526.607 246.975 531.362 243.732 531.318 239.901C531.288 238.14 530.129 236.907 528.5 236.907Z" fill="#B8AFA3" />
        <path d="M516.084 236.907C511.961 237.142 509.554 242.572 511.726 244.715C514.015 246.975 518.785 243.732 518.814 239.901C518.814 238.14 517.713 236.907 516.084 236.907Z" fill="#B8AFA3" />
        <path d="M503.669 236.907C499.589 237.142 497.094 242.572 499.193 244.715C501.409 246.96 506.193 243.732 506.296 239.901C506.34 238.14 505.269 236.907 503.669 236.907Z" fill="#B8AFA3" />
        <path d="M421.897 237.054C418.081 237.289 415.161 242.939 417.083 244.788C419.153 246.769 423.893 242.851 423.849 239.211C423.834 237.891 423.086 237.069 421.912 237.069" fill="#B8AFA3" />
        <path d="M410.905 237.054C407.148 237.289 404.14 242.939 405.989 244.788C407.97 246.769 412.725 242.851 412.769 239.211C412.769 237.891 412.064 237.069 410.905 237.069" fill="#B8AFA3" />
        <path d="M389.42 237.054C385.502 237.304 382.464 243.379 384.518 244.95C386.705 246.608 391.621 241.809 391.108 238.536C390.961 237.597 390.345 237.054 389.42 237.04" fill="#B8AFA3" />
        <path d="M368.772 236.907C364.839 237.172 361.493 243.482 363.489 245.111C365.587 246.828 370.753 241.853 370.386 238.463C370.283 237.48 369.696 236.922 368.772 236.922" fill="#B8AFA3" />
        <path d="M358.587 236.907C354.713 237.172 351.293 243.482 353.216 245.111C355.226 246.828 360.407 241.853 360.143 238.463C360.069 237.48 359.497 236.922 358.587 236.922" fill="#B8AFA3" />
        <path d="M329.559 236.907C325.905 237.172 322.236 243.482 323.923 245.111C325.699 246.828 330.909 241.853 330.894 238.463C330.894 237.48 330.395 236.922 329.559 236.922" fill="#B8AFA3" />
        <path d="M320.21 237.054C316.747 237.304 313.137 243.379 314.692 244.95C316.38 246.637 321.355 241.912 321.429 238.536C321.458 237.597 321.003 237.054 320.21 237.04" fill="#B8AFA3" />
        <path d="M302.306 236.907C298.623 237.186 294.822 243.996 296.583 245.258C298.549 246.652 303.906 240.855 303.407 237.876C303.348 237.509 303.128 236.907 302.292 236.907" fill="#B8AFA3" />
        <path d="M285.283 236.907C281.775 237.186 277.784 243.996 279.413 245.258C281.203 246.652 286.604 240.855 286.295 237.876C286.251 237.509 286.075 236.907 285.297 236.907" fill="#B8AFA3" />
        <path d="M277.123 236.907C273.689 237.186 269.624 243.996 271.165 245.258C272.867 246.637 278.283 240.855 278.062 237.876C278.033 237.509 277.872 236.907 277.123 236.907Z" fill="#B8AFA3" />
        <path d="M269.169 236.907C265.838 237.186 261.685 243.996 263.152 245.258C264.781 246.652 270.211 240.855 270.079 237.876C270.064 237.509 269.918 236.907 269.184 236.907" fill="#B8AFA3" />
        <path d="M261.464 236.907C258.221 237.186 253.995 243.996 255.374 245.258C256.9 246.637 262.33 240.855 262.301 237.876C262.301 237.509 262.184 236.907 261.464 236.907Z" fill="#B8AFA3" />
        <path d="M253.995 236.907C250.839 237.186 246.539 243.996 247.831 245.258C249.269 246.637 254.714 240.855 254.772 237.876C254.772 237.509 254.684 236.907 253.995 236.907Z" fill="#B8AFA3" />
        <path d="M246.686 236.907C243.619 237.186 239.246 243.996 240.464 245.258C241.814 246.652 247.273 240.855 247.405 237.876C247.42 237.509 247.347 236.907 246.686 236.907Z" fill="#B8AFA3" />
        <path d="M239.715 236.907C236.751 237.201 232.304 243.996 233.434 245.258C234.682 246.637 240.126 240.841 240.376 237.876C240.405 237.509 240.361 236.907 239.715 236.907Z" fill="#B8AFA3" />
        <path d="M232.994 236.907C231.438 237.069 229.281 239.476 228.357 240.723C226.742 242.924 226.067 244.906 226.772 245.361C228.342 246.344 234.021 239.74 233.581 237.421C233.493 236.981 233.17 236.907 232.979 236.907" fill="#B8AFA3" />
        <path d="M226.522 236.907C225.01 237.069 222.853 239.476 221.929 240.723C220.3 242.924 219.581 244.906 220.241 245.361C221.723 246.329 227.403 239.74 227.08 237.421C227.021 236.981 226.698 236.907 226.522 236.907Z" fill="#B8AFA3" />
        <path d="M220.3 236.907C218.847 237.069 216.689 239.476 215.75 240.723C214.107 242.924 213.329 244.906 213.96 245.361C215.339 246.329 221.048 239.725 220.813 237.421C220.769 236.981 220.476 236.907 220.3 236.907Z" fill="#B8AFA3" />
        <path d="M214.341 236.907C212.947 237.069 210.79 239.476 209.836 240.723C208.178 242.924 207.371 244.906 207.943 245.361C209.234 246.329 214.943 239.725 214.811 237.421C214.782 236.981 214.503 236.907 214.341 236.907Z" fill="#B8AFA3" />
        <path d="M208.662 236.907C207.326 237.069 205.169 239.476 204.215 240.723C202.542 242.924 201.691 244.906 202.219 245.361C203.511 246.417 209.528 239.285 209.073 237.245C208.999 236.922 208.75 236.907 208.662 236.907Z" fill="#B8AFA3" />
        <path d="M203.173 236.907C201.897 237.069 199.739 239.476 198.771 240.723C197.083 242.924 196.188 244.906 196.687 245.361C197.875 246.417 203.907 239.285 203.555 237.245C203.511 236.952 203.32 236.907 203.173 236.907Z" fill="#B8AFA3" />
        <path d="M198.022 236.907C195.586 237.216 190.699 244.583 191.492 245.361C192.563 246.403 198.609 239.27 198.374 237.245C198.345 236.952 198.169 236.907 198.037 236.907" fill="#B8AFA3" />
        <path d="M193.15 236.907C190.831 237.216 185.856 244.583 186.575 245.361C187.544 246.403 193.59 239.27 193.458 237.245C193.443 236.952 193.267 236.907 193.15 236.907Z" fill="#B8AFA3" />
        <path d="M188.571 236.907C186.355 237.216 181.307 244.583 181.953 245.361C182.804 246.388 188.865 239.256 188.835 237.245C188.835 236.952 188.674 236.907 188.557 236.907" fill="#B8AFA3" />
        <path d="M184.257 236.907C183.42 237.04 181.659 238.698 179.751 241.163C178.328 243.012 177.154 245.17 177.682 245.419C178.768 245.933 184.8 238.551 184.477 237.098C184.447 236.981 184.359 236.907 184.242 236.907" fill="#B8AFA3" />
        <path d="M1250.59 223.67C1249.36 223.934 1254.82 230.685 1256.8 231.859C1257.12 232.05 1257.65 232.27 1257.43 231.536C1256.85 229.526 1251.74 223.641 1250.59 223.67Z" fill="#B8AFA3" />
        <path d="M1246.72 223.67C1245.47 223.92 1250.33 230.172 1252.63 231.712C1253.37 232.197 1253.7 232.138 1253.56 231.536C1253.04 229.452 1248 223.641 1246.72 223.67Z" fill="#B8AFA3" />
        <path d="M1242.55 223.67C1241.2 223.92 1246.01 230.172 1248.38 231.712C1249.13 232.197 1249.51 232.138 1249.39 231.536C1248.98 229.452 1243.93 223.641 1242.55 223.67Z" fill="#B8AFA3" />
        <path d="M1238.09 223.67C1236.7 223.905 1240.95 229.658 1243.56 231.536C1244.52 232.211 1245.02 232.211 1244.91 231.536C1244.59 229.452 1239.56 223.641 1238.09 223.67Z" fill="#B8AFA3" />
        <path d="M1233.31 223.67C1231.81 223.905 1236.02 229.658 1238.69 231.536C1239.66 232.211 1240.19 232.211 1240.11 231.536C1239.88 229.452 1234.86 223.641 1233.31 223.67Z" fill="#B8AFA3" />
        <path d="M1228.3 223.67C1226.79 223.89 1230.53 229.232 1233.29 231.331C1234.45 232.211 1235.14 232.285 1235.08 231.536C1234.95 229.452 1229.93 223.656 1228.3 223.67Z" fill="#B8AFA3" />
        <path d="M1223.03 223.67C1221.43 223.89 1225.12 229.232 1227.92 231.331C1229.21 232.299 1229.94 232.299 1229.78 231.331C1229.4 229.027 1224.68 223.656 1223.05 223.67" fill="#B8AFA3" />
        <path d="M1217.5 223.67C1215.81 223.89 1219.42 229.232 1222.27 231.331C1223.58 232.299 1224.34 232.299 1224.22 231.331C1223.91 229.027 1219.2 223.656 1217.5 223.67Z" fill="#B8AFA3" />
        <path d="M1211.69 223.67C1210 223.89 1213.13 228.777 1216.03 231.081C1217.51 232.255 1218.48 232.358 1218.4 231.331C1218.19 229.027 1213.48 223.656 1211.69 223.67Z" fill="#B8AFA3" />
        <path d="M1205.63 223.67C1203.85 223.89 1206.92 228.777 1209.85 231.081C1211.35 232.255 1212.35 232.358 1212.29 231.331C1212.16 229.027 1207.48 223.656 1205.61 223.67" fill="#B8AFA3" />
        <path d="M1199.33 223.67C1197.48 223.89 1200.48 228.777 1203.44 231.081C1205.08 232.358 1206.14 232.358 1205.95 231.081C1205.58 228.572 1201.18 223.656 1199.33 223.67Z" fill="#B8AFA3" />
        <path d="M1192.68 223.67C1190.75 223.89 1193.68 228.777 1196.68 231.081C1198.33 232.358 1199.43 232.358 1199.29 231.081C1198.99 228.572 1194.62 223.656 1192.7 223.67" fill="#B8AFA3" />
        <path d="M1185.89 223.67C1184 223.876 1186.51 228.396 1189.41 230.802C1191.26 232.343 1192.57 232.461 1192.45 231.081C1192.23 228.572 1187.88 223.656 1185.89 223.67Z" fill="#B8AFA3" />
        <path d="M1178.83 223.67C1176.86 223.876 1179.31 228.396 1182.22 230.802C1184.08 232.343 1185.43 232.461 1185.36 231.081C1185.23 228.572 1180.9 223.656 1178.83 223.67Z" fill="#B8AFA3" />
        <path d="M1171.55 223.67C1169.51 223.876 1171.89 228.396 1174.81 230.802C1176.8 232.446 1178.24 232.446 1178.02 230.802C1177.66 228.19 1173.55 223.656 1171.55 223.67Z" fill="#B8AFA3" />
        <path d="M1164.04 223.67C1161.92 223.876 1164.23 228.396 1167.16 230.802C1169.17 232.446 1170.66 232.446 1170.47 230.802C1170.19 228.19 1166.09 223.656 1164.02 223.67" fill="#B8AFA3" />
        <path d="M1156.29 223.67C1154.12 223.876 1156.33 228.396 1159.28 230.802C1161.29 232.446 1162.82 232.446 1162.69 230.802C1162.48 228.19 1158.4 223.656 1156.27 223.67" fill="#B8AFA3" />
        <path d="M1148.31 223.67C1146.05 223.876 1148.19 228.396 1151.17 230.802C1153.19 232.446 1154.76 232.446 1154.67 230.802C1154.54 228.19 1150.49 223.656 1148.31 223.67Z" fill="#B8AFA3" />
        <path d="M1140.01 223.67C1137.69 223.876 1139.76 228.396 1142.74 230.802C1144.9 232.549 1146.57 232.402 1146.32 230.509C1145.97 227.809 1142.14 223.656 1140.01 223.67Z" fill="#B8AFA3" />
        <path d="M1131.6 223.67C1129.23 223.876 1131.21 228.396 1134.2 230.802C1136.36 232.549 1138.08 232.402 1137.89 230.509C1137.61 227.809 1133.79 223.656 1131.62 223.67" fill="#B8AFA3" />
        <path d="M1122.96 223.67C1120.51 223.876 1122.42 228.396 1125.41 230.802C1127.58 232.549 1129.34 232.417 1129.2 230.509C1128.98 227.809 1125.19 223.656 1122.98 223.67" fill="#B8AFA3" />
        <path d="M1114.13 223.67C1111.68 223.876 1113.22 227.985 1116.08 230.509C1118.37 232.534 1120.42 232.534 1120.32 230.509C1120.17 227.823 1116.42 223.656 1114.13 223.67Z" fill="#B8AFA3" />
        <path d="M1105.07 223.67C1102.62 223.861 1104.1 228.044 1106.89 230.509C1109.18 232.534 1111.28 232.534 1111.22 230.509C1111.13 227.809 1107.4 223.656 1105.07 223.67Z" fill="#B8AFA3" />
        <path d="M1095.81 223.67C1093.3 223.861 1094.7 228.044 1097.48 230.509C1099.91 232.666 1102.14 232.505 1101.89 230.186C1101.59 227.442 1098.07 223.656 1095.81 223.67Z" fill="#B8AFA3" />
        <path d="M1086.27 223.67C1083.63 223.876 1084.94 227.985 1087.78 230.509C1090.2 232.666 1092.49 232.505 1092.3 230.186C1092.08 227.442 1088.59 223.67 1086.27 223.67Z" fill="#B8AFA3" />
        <path d="M1076.62 223.67C1073.99 223.861 1075.24 228.044 1077.99 230.509C1080.42 232.666 1082.73 232.505 1082.6 230.186C1082.44 227.442 1078.96 223.656 1076.62 223.67Z" fill="#B8AFA3" />
        <path d="M1066.77 223.67C1064.08 223.861 1065.24 228.044 1068 230.509C1070.41 232.666 1072.78 232.505 1072.7 230.186C1072.61 227.442 1069.16 223.656 1066.77 223.67Z" fill="#B8AFA3" />
        <path d="M1056.74 223.67C1054 223.861 1055.09 228.043 1057.83 230.509C1060.22 232.666 1062.64 232.505 1062.63 230.186C1062.6 227.442 1059.2 223.67 1056.74 223.67Z" fill="#B8AFA3" />
        <path d="M1046.54 223.67C1043.76 223.861 1044.75 228.044 1047.48 230.509C1050.04 232.813 1052.59 232.461 1052.36 229.834C1052.12 227.06 1048.91 223.656 1046.54 223.67Z" fill="#B8AFA3" />
        <path d="M1036.15 223.67C1033.31 223.861 1034.22 228.044 1036.95 230.509C1039.49 232.813 1042.08 232.461 1041.92 229.834C1041.75 227.06 1038.56 223.656 1036.15 223.67Z" fill="#B8AFA3" />
        <path d="M1025.6 223.67C1022.7 223.861 1023.53 228.044 1026.25 230.509C1028.77 232.813 1031.43 232.461 1031.33 229.834C1031.21 227.06 1028.07 223.656 1025.62 223.67" fill="#B8AFA3" />
        <path d="M1014.74 223.67C1011.79 223.861 1012.54 228.044 1015.23 230.509C1017.74 232.813 1020.45 232.461 1020.39 229.834C1020.35 227.06 1017.22 223.656 1014.73 223.67" fill="#B8AFA3" />
        <path d="M1003.84 223.67C1000.83 223.861 1001.49 228.044 1004.18 230.509C1006.67 232.813 1009.43 232.461 1009.45 229.834C1009.45 227.06 1006.36 223.656 1003.84 223.67Z" fill="#B8AFA3" />
        <path d="M923.212 224.272C920.248 224.448 920.453 228.308 922.86 230.362C925.091 232.27 927.718 231.463 927.63 228.895C927.541 226.605 925.311 224.272 923.212 224.272Z" fill="#B8AFA3" />
        <path d="M910.929 223.67C907.392 223.876 907.524 228.396 910.342 230.802C913.145 233.195 916.373 231.991 916.006 228.675C915.728 226.092 913.247 223.656 910.914 223.656" fill="#B8AFA3" />
        <path d="M634.237 224.272C630.685 224.463 629.203 228.631 631.228 230.597C633.327 232.637 637.143 230.641 637.231 227.471C637.275 225.681 635.969 224.272 634.237 224.272Z" fill="#B8AFA3" />
        <path d="M621.161 223.67C617.008 223.89 615.173 228.777 617.492 231.081C620.016 233.576 624.786 230.832 624.58 227.002C624.478 225.079 623.039 223.67 621.161 223.67Z" fill="#B8AFA3" />
        <path d="M608.129 223.67C603.815 223.89 602.01 229.232 604.592 231.331C607.322 233.532 611.901 230.362 611.402 226.605C611.182 224.888 609.832 223.67 608.115 223.67" fill="#B8AFA3" />
        <path d="M595.053 223.67C590.783 223.905 588.89 229.232 591.399 231.331C594.041 233.547 598.649 230.362 598.238 226.605C598.047 224.888 596.741 223.67 595.053 223.67Z" fill="#B8AFA3" />
        <path d="M582.241 223.67C578.015 223.89 576.019 229.232 578.455 231.331C581.038 233.547 585.676 230.377 585.338 226.605C585.191 224.888 583.914 223.67 582.241 223.67Z" fill="#B8AFA3" />
        <path d="M569.547 223.67C565.335 223.89 563.251 229.232 565.629 231.331C568.138 233.532 572.791 230.362 572.556 226.605C572.438 224.888 571.206 223.67 569.547 223.67Z" fill="#B8AFA3" />
        <path d="M556.97 223.67C552.817 223.905 550.631 229.232 552.935 231.331C555.356 233.532 560.038 230.362 559.876 226.605C559.803 224.859 558.629 223.67 556.956 223.67" fill="#B8AFA3" />
        <path d="M544.525 223.67C540.402 223.905 538.142 229.232 540.372 231.331C542.735 233.547 547.431 230.362 547.343 226.605C547.299 224.888 546.14 223.67 544.525 223.67Z" fill="#B8AFA3" />
        <path d="M532.227 223.67C528.148 223.905 525.785 229.232 527.957 231.331C530.246 233.547 534.957 230.362 534.957 226.605C534.957 224.888 533.842 223.67 532.227 223.67Z" fill="#B8AFA3" />
        <path d="M520.047 223.67C516.011 223.905 513.56 229.232 515.659 231.331C517.875 233.547 522.6 230.362 522.674 226.605C522.718 224.888 521.632 223.67 520.047 223.67Z" fill="#B8AFA3" />
        <path d="M507.881 223.67C503.669 223.905 501.218 229.658 503.61 231.536C506.149 233.517 510.948 229.482 510.376 225.857C510.17 224.507 509.202 223.67 507.881 223.67Z" fill="#B8AFA3" />
        <path d="M406.37 223.67C402.291 223.934 399.135 230.113 401.293 231.712C403.553 233.385 408.66 228.513 408.117 225.182C407.955 224.213 407.324 223.67 406.37 223.67Z" fill="#B8AFA3" />
        <path d="M385.663 223.67C381.73 223.934 378.399 230.113 380.395 231.712C382.493 233.4 387.644 228.528 387.277 225.182C387.175 224.213 386.588 223.67 385.663 223.67Z" fill="#B8AFA3" />
        <path d="M375.61 223.67C371.736 223.934 368.317 230.113 370.239 231.712C372.264 233.4 377.43 228.513 377.166 225.182C377.093 224.213 376.52 223.67 375.625 223.67" fill="#B8AFA3" />
        <path d="M365.616 223.67C361.816 223.934 358.308 230.113 360.143 231.712C362.08 233.385 367.275 228.513 367.099 225.182C367.04 224.213 366.512 223.67 365.616 223.67Z" fill="#B8AFA3" />
        <path d="M346.436 223.67C342.767 223.934 339.083 230.113 340.771 231.712C342.547 233.4 347.786 228.513 347.771 225.182C347.771 224.228 347.272 223.67 346.436 223.67Z" fill="#B8AFA3" />
        <path d="M337.146 223.67C333.55 223.934 329.794 230.113 331.393 231.712C333.096 233.4 338.335 228.513 338.408 225.182C338.423 224.228 337.968 223.67 337.131 223.67" fill="#B8AFA3" />
        <path d="M328.062 223.67C324.54 223.934 320.695 230.113 322.221 231.712C323.835 233.4 329.089 228.513 329.265 225.182C329.309 224.228 328.869 223.67 328.062 223.67Z" fill="#B8AFA3" />
        <path d="M319.095 223.832C315.514 224.096 311.816 230.524 313.548 231.713C315.456 233.019 320.651 227.545 320.166 224.742C320.108 224.404 319.888 223.832 319.095 223.832Z" fill="#B8AFA3" />
        <path d="M310.319 223.832C306.826 224.096 303.04 230.524 304.684 231.713C306.518 233.033 311.743 227.559 311.332 224.742C311.288 224.404 311.082 223.832 310.304 223.832" fill="#B8AFA3" />
        <path d="M277.93 223.67C274.643 223.949 270.372 230.626 271.767 231.859C273.322 233.224 278.826 227.545 278.781 224.624C278.781 224.272 278.664 223.67 277.93 223.67Z" fill="#B8AFA3" />
        <path d="M270.372 223.67C267.173 223.949 262.815 230.626 264.135 231.859C265.588 233.209 271.106 227.53 271.165 224.624C271.165 224.272 271.077 223.67 270.372 223.67Z" fill="#B8AFA3" />
        <path d="M263.064 223.67C259.953 223.949 255.521 230.626 256.754 231.859C258.118 233.209 263.636 227.53 263.783 224.624C263.798 224.272 263.724 223.67 263.049 223.67" fill="#B8AFA3" />
        <path d="M255.888 223.67C252.879 223.949 248.359 230.626 249.519 231.859C250.795 233.224 256.328 227.545 256.578 224.624C256.607 224.272 256.563 223.67 255.902 223.67" fill="#B8AFA3" />
        <path d="M249.049 223.67C247.464 223.817 245.277 226.18 244.338 227.412C242.694 229.57 242.019 231.522 242.738 231.962C244.353 232.916 250.106 226.444 249.665 224.184C249.577 223.744 249.24 223.685 249.049 223.685" fill="#B8AFA3" />
        <path d="M242.46 223.67C240.919 223.817 238.732 226.18 237.778 227.412C236.12 229.57 235.386 231.522 236.076 231.962C237.587 232.916 243.37 226.444 243.017 224.184C242.959 223.744 242.636 223.685 242.445 223.685" fill="#B8AFA3" />
        <path d="M236.105 223.67C234.623 223.817 232.422 226.18 231.468 227.412C229.795 229.57 229.017 231.522 229.663 231.962C231.086 232.916 236.883 226.444 236.633 224.184C236.589 223.744 236.281 223.685 236.105 223.685" fill="#B8AFA3" />
        <path d="M230.015 223.67C228.591 223.817 226.39 226.194 225.421 227.412C223.734 229.57 222.912 231.522 223.514 231.962C224.952 233.004 231.071 226.004 230.47 224.008C230.367 223.685 230.103 223.685 230.015 223.685" fill="#B8AFA3" />
        <path d="M224.174 223.67C222.795 223.817 220.593 226.194 219.625 227.412C217.922 229.57 217.056 231.522 217.614 231.962C218.95 233.004 225.084 226.004 224.6 224.008C224.526 223.685 224.262 223.685 224.174 223.685" fill="#B8AFA3" />
        <path d="M218.597 223.67C217.276 223.817 215.075 226.194 214.092 227.412C212.375 229.57 211.465 231.522 211.979 231.962C213.211 233.004 219.36 226.004 218.979 224.008C218.92 223.714 218.729 223.685 218.583 223.685" fill="#B8AFA3" />
        <path d="M213.211 223.67C210.702 223.978 205.727 231.199 206.549 231.962C207.679 232.989 213.842 226.004 213.564 224.008C213.52 223.714 213.343 223.685 213.211 223.685" fill="#B8AFA3" />
        <path d="M208.163 223.67C205.771 223.978 200.708 231.199 201.456 231.962C202.469 232.989 208.647 225.989 208.486 224.008C208.457 223.714 208.295 223.685 208.163 223.685" fill="#B8AFA3" />
        <path d="M198.888 223.67C198.008 223.788 196.188 225.431 194.251 227.838C192.798 229.658 191.609 231.771 192.167 232.021C193.297 232.519 199.475 225.27 199.123 223.861C199.094 223.744 199.005 223.67 198.873 223.67" fill="#B8AFA3" />
        <path d="M1239.81 210.697C1238.69 210.947 1243.75 217.081 1246 218.593C1246.65 219.018 1246.95 219.018 1246.88 218.593C1246.57 216.861 1241.02 210.668 1239.81 210.697Z" fill="#B8AFA3" />
        <path d="M1235.99 210.697C1234.77 210.947 1239.79 217.081 1242.1 218.593C1242.76 219.033 1243.09 219.033 1243.04 218.593C1242.83 216.861 1237.28 210.668 1235.98 210.697" fill="#B8AFA3" />
        <path d="M1231.91 210.697C1230.65 210.932 1235.11 216.582 1237.68 218.416C1238.5 219.003 1238.97 219.077 1238.94 218.593C1238.82 216.861 1233.31 210.668 1231.91 210.697Z" fill="#B8AFA3" />
        <path d="M1227.55 210.697C1226.19 210.932 1230.59 216.582 1233.23 218.416C1234.19 219.077 1234.69 219.077 1234.55 218.416C1234.16 216.377 1228.99 210.668 1227.57 210.697" fill="#B8AFA3" />
        <path d="M1222.86 210.697C1221.48 210.917 1225.41 216.156 1228.14 218.211C1229.28 219.077 1229.93 219.15 1229.83 218.416C1229.52 216.377 1224.38 210.668 1222.86 210.697Z" fill="#B8AFA3" />
        <path d="M1217.95 210.697C1216.49 210.917 1220.35 216.156 1223.14 218.211C1224.28 219.062 1224.97 219.136 1224.9 218.416C1224.69 216.377 1219.55 210.668 1217.94 210.697" fill="#B8AFA3" />
        <path d="M1212.79 210.697C1211.23 210.917 1215.03 216.156 1217.87 218.211C1219.17 219.15 1219.88 219.15 1219.69 218.211C1219.22 215.936 1214.39 210.682 1212.79 210.697Z" fill="#B8AFA3" />
        <path d="M1207.37 210.697C1205.8 210.903 1209.12 215.716 1212.01 217.976C1213.49 219.135 1214.4 219.224 1214.24 218.211C1213.86 215.951 1209.05 210.682 1207.37 210.697Z" fill="#B8AFA3" />
        <path d="M1201.68 210.697C1200.04 210.903 1203.28 215.716 1206.21 217.976C1207.71 219.135 1208.67 219.224 1208.53 218.211C1208.24 215.951 1203.44 210.682 1201.68 210.697Z" fill="#B8AFA3" />
        <path d="M1195.75 210.697C1194.02 210.903 1197.2 215.716 1200.17 217.976C1201.68 219.135 1202.66 219.224 1202.57 218.211C1202.37 215.951 1197.59 210.682 1195.75 210.697Z" fill="#B8AFA3" />
        <path d="M1189.57 210.697C1187.87 210.903 1190.64 215.335 1193.53 217.712C1195.24 219.106 1196.43 219.312 1196.37 218.211C1196.24 215.951 1191.48 210.682 1189.59 210.697" fill="#B8AFA3" />
        <path d="M1183.07 210.697C1181.3 210.903 1184 215.335 1186.9 217.712C1188.74 219.209 1190.01 219.326 1189.81 217.976C1189.43 215.511 1184.96 210.682 1183.09 210.697" fill="#B8AFA3" />
        <path d="M1176.41 210.697C1174.56 210.903 1177.19 215.335 1180.11 217.712C1181.94 219.194 1183.26 219.312 1183.1 217.976C1182.81 215.511 1178.36 210.682 1176.41 210.697Z" fill="#B8AFA3" />
        <path d="M1169.5 210.697C1167.57 210.903 1170.13 215.335 1173.06 217.712C1174.91 219.194 1176.26 219.312 1176.14 217.976C1175.92 215.511 1171.51 210.682 1169.48 210.697" fill="#B8AFA3" />
        <path d="M1162.36 210.697C1160.38 210.903 1162.85 215.335 1165.81 217.712C1167.66 219.194 1169.07 219.312 1168.98 217.976C1168.85 215.511 1164.45 210.682 1162.36 210.697Z" fill="#B8AFA3" />
        <path d="M1155 210.697C1152.94 210.902 1155.33 215.334 1158.3 217.712C1160.32 219.326 1161.78 219.326 1161.54 217.712C1161.18 215.144 1157.01 210.697 1155 210.697Z" fill="#B8AFA3" />
        <path d="M1147.41 210.697C1145.28 210.902 1147.62 215.334 1150.58 217.712C1152.6 219.326 1154.1 219.326 1153.93 217.712C1153.63 215.144 1149.49 210.697 1147.41 210.697Z" fill="#B8AFA3" />
        <path d="M1139.59 210.697C1137.3 210.902 1139.65 215.158 1142.26 217.418C1144.43 219.297 1146.21 219.429 1146.06 217.712C1145.84 215.144 1141.73 210.697 1139.59 210.697Z" fill="#B8AFA3" />
        <path d="M1131.57 210.844C1129.3 211.049 1131.5 215.129 1134.01 217.301C1136.09 219.106 1137.84 219.238 1137.75 217.58C1137.61 215.114 1133.69 210.829 1131.57 210.844Z" fill="#B8AFA3" />
        <path d="M1123.22 210.697C1120.96 210.888 1122.75 214.924 1125.63 217.418C1127.8 219.297 1129.65 219.429 1129.61 217.712C1129.53 215.144 1125.48 210.697 1123.22 210.697Z" fill="#B8AFA3" />
        <path d="M1114.77 210.697C1112.45 210.888 1114.16 214.924 1117.03 217.418C1119.34 219.414 1121.3 219.414 1121.08 217.418C1120.79 214.777 1116.96 210.697 1114.77 210.697Z" fill="#B8AFA3" />
        <path d="M1106.11 210.697C1103.72 210.888 1105.35 214.924 1108.23 217.418C1110.53 219.414 1112.56 219.414 1112.38 217.418C1112.16 214.777 1108.34 210.697 1106.11 210.697Z" fill="#B8AFA3" />
        <path d="M1097.23 210.697C1094.78 210.888 1096.35 214.924 1099.22 217.418C1101.52 219.414 1103.57 219.414 1103.46 217.418C1103.3 214.777 1099.52 210.697 1097.23 210.697Z" fill="#B8AFA3" />
        <path d="M1088.16 210.697C1085.66 210.888 1087.14 214.924 1090 217.418C1092.29 219.414 1094.4 219.414 1094.33 217.418C1094.24 214.777 1090.5 210.697 1088.16 210.697Z" fill="#B8AFA3" />
        <path d="M1078.82 210.697C1076.23 210.888 1077.63 214.924 1080.49 217.418C1082.93 219.546 1085.16 219.385 1084.91 217.096C1084.61 214.395 1081.08 210.697 1078.82 210.697Z" fill="#B8AFA3" />
        <path d="M1069.35 210.697C1066.72 210.888 1068.04 214.924 1070.89 217.418C1073.33 219.546 1075.6 219.385 1075.4 217.096C1075.16 214.395 1071.65 210.697 1069.35 210.697Z" fill="#B8AFA3" />
        <path d="M1059.72 210.697C1057.04 210.888 1058.29 214.924 1061.12 217.418C1063.54 219.546 1065.86 219.385 1065.71 217.096C1065.55 214.395 1062.07 210.697 1059.72 210.697Z" fill="#B8AFA3" />
        <path d="M1049.91 210.697C1047.18 210.888 1048.32 214.924 1051.14 217.418C1053.55 219.546 1055.91 219.385 1055.83 217.096C1055.73 214.395 1052.3 210.697 1049.91 210.697Z" fill="#B8AFA3" />
        <path d="M1039.9 210.697C1037.11 210.888 1038.18 214.924 1040.98 217.418C1043.38 219.546 1045.8 219.385 1045.77 217.096C1045.74 214.395 1042.33 210.697 1039.9 210.697Z" fill="#B8AFA3" />
        <path d="M1029.73 210.697C1026.88 210.888 1027.88 214.924 1030.67 217.418C1033.21 219.678 1035.76 219.341 1035.52 216.758C1035.29 214.028 1032.09 210.697 1029.73 210.697Z" fill="#B8AFA3" />
        <path d="M1019.38 210.697C1016.49 210.888 1017.38 214.924 1020.16 217.418C1022.68 219.678 1025.28 219.341 1025.12 216.758C1024.94 214.043 1021.77 210.697 1019.38 210.697Z" fill="#B8AFA3" />
        <path d="M1008.74 210.697C1005.79 210.888 1006.61 214.924 1009.37 217.418C1011.88 219.678 1014.54 219.341 1014.42 216.758C1014.3 214.043 1011.18 210.697 1008.74 210.697Z" fill="#B8AFA3" />
        <path d="M998.072 210.697C995.078 210.888 995.812 214.924 998.541 217.418C1001.04 219.678 1003.74 219.341 1003.69 216.758C1003.65 214.043 1000.55 210.697 998.072 210.697Z" fill="#B8AFA3" />
        <path d="M918.897 210.697C915.493 210.902 915.772 215.334 918.589 217.712C921.201 219.899 924.21 218.974 924.049 216.024C923.902 213.383 921.304 210.712 918.897 210.712" fill="#B8AFA3" />
        <path d="M755.5 210.697C751.597 210.902 750.57 215.334 753.02 217.712C755.706 220.309 759.991 218.446 759.756 214.791C759.61 212.531 757.702 210.697 755.5 210.697Z" fill="#B8AFA3" />
        <path d="M636.071 210.697C631.992 210.917 630.245 215.716 632.564 217.976C634.971 220.339 639.388 218.035 639.505 214.366C639.564 212.311 638.067 210.697 636.086 210.697" fill="#B8AFA3" />
        <path d="M623.186 210.697C619.121 210.902 617.272 215.716 619.532 217.976C621.983 220.442 626.679 217.741 626.503 213.97C626.415 212.077 625.021 210.712 623.186 210.712" fill="#B8AFA3" />
        <path d="M610.404 210.697C606.177 210.917 604.357 216.156 606.882 218.211C609.538 220.383 614.058 217.257 613.603 213.573C613.398 211.886 612.077 210.697 610.418 210.697" fill="#B8AFA3" />
        <path d="M597.592 210.697C593.41 210.917 591.502 216.156 593.938 218.211C596.521 220.383 601.056 217.257 600.689 213.573C600.513 211.886 599.25 210.697 597.592 210.697Z" fill="#B8AFA3" />
        <path d="M585.045 210.697C580.891 210.917 578.881 216.156 581.258 218.211C583.768 220.398 588.347 217.272 588.053 213.573C587.921 211.886 586.688 210.697 585.045 210.697Z" fill="#B8AFA3" />
        <path d="M572.614 210.697C568.476 210.917 566.377 216.156 568.681 218.211C571.118 220.383 575.726 217.257 575.52 213.573C575.432 211.886 574.229 210.712 572.614 210.697Z" fill="#B8AFA3" />
        <path d="M560.287 210.697C556.207 210.917 554.006 216.156 556.237 218.211C558.585 220.383 563.207 217.257 563.105 213.573C563.061 211.856 561.916 210.697 560.287 210.697Z" fill="#B8AFA3" />
        <path d="M548.106 210.697C544.071 210.917 541.766 216.156 543.938 218.211C546.228 220.383 550.865 217.257 550.836 213.573C550.836 211.886 549.706 210.697 548.106 210.697Z" fill="#B8AFA3" />
        <path d="M536.058 210.697C532.051 210.917 529.674 216.156 531.758 218.211C533.974 220.383 538.626 217.257 538.685 213.573C538.714 211.886 537.628 210.712 536.058 210.697Z" fill="#B8AFA3" />
        <path d="M524.127 210.697C520.164 210.917 517.684 216.156 519.709 218.211C521.852 220.383 526.533 217.257 526.665 213.573C526.724 211.886 525.682 210.712 524.127 210.697Z" fill="#B8AFA3" />
        <path d="M512.21 210.697C508.072 210.932 505.577 216.582 507.895 218.416C510.346 220.354 515.13 216.391 514.617 212.825C514.426 211.504 513.501 210.682 512.21 210.682" fill="#B8AFA3" />
        <path d="M433.711 210.697C429.91 210.932 426.755 216.582 428.574 218.416C430.497 220.354 435.457 216.391 435.56 212.825C435.604 211.504 434.885 210.697 433.711 210.682" fill="#B8AFA3" />
        <path d="M423.071 210.844C419.461 211.064 416.335 216.494 418.023 218.27C419.798 220.119 424.597 216.303 424.773 212.898C424.832 211.636 424.186 210.844 423.071 210.844Z" fill="#B8AFA3" />
        <path d="M392.399 210.844C388.686 211.093 385.399 216.919 387.233 218.431C389.185 220.031 394.16 215.423 393.896 212.267C393.823 211.357 393.28 210.844 392.399 210.844Z" fill="#B8AFA3" />
        <path d="M382.537 210.844C378.883 211.093 375.508 216.919 377.269 218.431C379.147 220.031 384.152 215.423 383.961 212.267C383.902 211.357 383.388 210.844 382.537 210.844Z" fill="#B8AFA3" />
        <path d="M354.052 210.697C350.442 210.947 346.67 217.022 348.285 218.592C349.987 220.251 355.256 215.452 355.329 212.179C355.358 211.24 354.889 210.697 354.052 210.697Z" fill="#B8AFA3" />
        <path d="M336.045 210.697C332.582 210.947 328.634 217.022 330.087 218.592C331.628 220.236 336.926 215.452 337.175 212.179C337.249 211.24 336.838 210.697 336.045 210.697Z" fill="#B8AFA3" />
        <path d="M327.357 210.697C323.718 210.976 319.756 217.521 321.473 218.739C323.38 220.075 328.84 214.498 328.429 211.636C328.385 211.284 328.179 210.712 327.357 210.697Z" fill="#B8AFA3" />
        <path d="M310.378 210.844C307.017 211.108 303.025 217.404 304.537 218.563C306.195 219.84 311.508 214.483 311.288 211.739C311.258 211.401 311.112 210.844 310.363 210.844" fill="#B8AFA3" />
        <path d="M258.529 210.844C257.032 210.991 254.89 213.221 253.965 214.366C252.351 216.406 251.632 218.255 252.307 218.666C253.804 219.576 259.454 213.471 259.102 211.313C259.028 210.902 258.72 210.844 258.544 210.844" fill="#B8AFA3" />
        <path d="M252.175 210.697C250.663 210.844 248.433 213.163 247.464 214.366C245.762 216.479 244.969 218.402 245.63 218.827C247.082 219.767 252.982 213.412 252.718 211.181C252.674 210.756 252.351 210.697 252.175 210.682" fill="#B8AFA3" />
        <path d="M245.967 210.697C244.514 210.844 242.269 213.163 241.286 214.366C239.569 216.479 238.732 218.402 239.348 218.827C240.831 219.855 247.053 212.986 246.437 211.005C246.334 210.682 246.055 210.682 245.967 210.682" fill="#B8AFA3" />
        <path d="M239.994 210.697C238.585 210.844 236.34 213.163 235.357 214.366C233.61 216.479 232.744 218.402 233.317 218.827C234.696 219.855 240.948 212.986 240.434 211.005C240.346 210.682 240.082 210.682 239.994 210.682" fill="#B8AFA3" />
        <path d="M234.271 210.697C232.921 210.844 230.675 213.163 229.677 214.366C227.916 216.479 227.006 218.402 227.535 218.827C228.811 219.855 235.078 212.986 234.682 211.005C234.623 210.726 234.417 210.682 234.271 210.682" fill="#B8AFA3" />
        <path d="M228.811 210.697C227.52 210.844 225.275 213.163 224.262 214.366C222.486 216.494 221.532 218.402 222.017 218.827C223.191 219.84 229.486 212.972 229.178 211.005C229.134 210.726 228.943 210.682 228.811 210.682" fill="#B8AFA3" />
        <path d="M223.543 210.697C221.077 210.991 215.912 218.093 216.704 218.827C217.775 219.84 224.086 212.972 223.895 211.005C223.866 210.726 223.69 210.682 223.558 210.682" fill="#B8AFA3" />
        <path d="M218.597 210.697C216.235 210.991 210.995 218.093 211.7 218.827C212.654 219.84 218.994 212.972 218.905 211.005C218.905 210.726 218.729 210.682 218.597 210.682" fill="#B8AFA3" />
        <path d="M1235.35 198.003C1234.41 198.267 1240.22 204.724 1242.07 205.854C1242.46 206.089 1242.65 206.089 1242.62 205.854C1242.46 204.489 1236.4 197.959 1235.35 198.003Z" fill="#B8AFA3" />
        <path d="M1232.18 198.003C1231.12 198.267 1236.92 204.724 1238.82 205.854C1239.29 206.133 1239.5 206.089 1239.4 205.722C1238.93 204.02 1233.25 197.973 1232.16 198.017" fill="#B8AFA3" />
        <path d="M1228.73 198.003C1227.64 198.237 1232.84 204.24 1235.08 205.707C1235.73 206.133 1236.04 206.133 1235.93 205.707C1235.57 204.02 1229.9 197.959 1228.71 198.003" fill="#B8AFA3" />
        <path d="M1225.01 198.003C1223.83 198.237 1228.98 204.24 1231.29 205.707C1231.96 206.133 1232.29 206.133 1232.22 205.707C1231.94 204.02 1226.29 197.959 1225.01 198.003Z" fill="#B8AFA3" />
        <path d="M1221.01 198.003C1219.79 198.237 1224.35 203.755 1226.94 205.546C1227.77 206.118 1228.23 206.192 1228.18 205.722C1228.01 204.034 1222.37 197.973 1221.01 198.017" fill="#B8AFA3" />
        <path d="M1216.74 198.003C1215.42 198.238 1219.94 203.741 1222.58 205.546C1223.53 206.192 1224.02 206.192 1223.87 205.546C1223.41 203.55 1218.15 197.973 1216.74 198.003Z" fill="#B8AFA3" />
        <path d="M1212.16 198.003C1210.82 198.223 1214.86 203.33 1217.62 205.341C1218.78 206.177 1219.41 206.265 1219.28 205.546C1218.91 203.55 1213.66 197.973 1212.17 198.003" fill="#B8AFA3" />
        <path d="M1207.36 198.003C1205.94 198.223 1209.91 203.33 1212.7 205.341C1213.88 206.177 1214.54 206.265 1214.43 205.546C1214.15 203.55 1208.91 197.973 1207.34 198.003" fill="#B8AFA3" />
        <path d="M1202.3 198.003C1200.86 198.208 1204.34 202.904 1207.21 205.106C1208.58 206.162 1209.43 206.324 1209.34 205.546C1209.15 203.55 1203.94 197.988 1202.28 198.003" fill="#B8AFA3" />
        <path d="M1197 198.003C1195.47 198.208 1198.88 202.904 1201.8 205.106C1203.19 206.162 1204.06 206.324 1204.01 205.546C1203.91 203.55 1198.73 197.988 1196.98 198.003" fill="#B8AFA3" />
        <path d="M1191.42 198.003C1189.82 198.208 1193.17 202.904 1196.12 205.106C1197.63 206.236 1198.55 206.324 1198.39 205.34C1198.03 203.124 1193.14 197.988 1191.42 198.003Z" fill="#B8AFA3" />
        <path d="M1185.62 198.003C1184.04 198.193 1186.98 202.537 1189.87 204.842C1191.57 206.206 1192.7 206.412 1192.57 205.34C1192.29 203.124 1187.42 197.988 1185.62 198.003Z" fill="#B8AFA3" />
        <path d="M1179.58 198.003C1177.92 198.193 1180.78 202.537 1183.69 204.842C1185.4 206.206 1186.58 206.412 1186.48 205.34C1186.27 203.124 1181.44 197.988 1179.58 198.003Z" fill="#B8AFA3" />
        <path d="M1173.21 198.003C1171.48 198.193 1174.27 202.537 1177.2 204.842C1178.93 206.206 1180.14 206.412 1180.08 205.34C1179.96 203.124 1175.15 197.988 1173.21 198.003Z" fill="#B8AFA3" />
        <path d="M1166.68 198.003C1164.87 198.194 1167.59 202.537 1170.54 204.842C1172.42 206.324 1173.68 206.426 1173.47 205.106C1173.11 202.699 1168.6 197.988 1166.68 198.003Z" fill="#B8AFA3" />
        <path d="M1159.93 198.003C1158.06 198.194 1160.71 202.537 1163.66 204.842C1165.55 206.324 1166.84 206.426 1166.68 205.106C1166.39 202.699 1161.91 197.988 1159.93 198.003Z" fill="#B8AFA3" />
        <path d="M1152.94 198.003C1151.09 198.194 1153.37 202.185 1156.19 204.563C1158.23 206.28 1159.78 206.529 1159.66 205.106C1159.44 202.699 1155 197.988 1152.96 198.003" fill="#B8AFA3" />
        <path d="M1145.74 198.003C1143.83 198.194 1146.02 202.185 1148.85 204.563C1150.89 206.28 1152.49 206.529 1152.41 205.106C1152.28 202.699 1147.85 197.988 1145.75 198.003" fill="#B8AFA3" />
        <path d="M1138.31 198.003C1136.33 198.194 1138.46 202.185 1141.28 204.563C1143.32 206.28 1144.96 206.529 1144.93 205.106C1144.87 202.699 1140.48 197.988 1138.31 198.003Z" fill="#B8AFA3" />
        <path d="M1114.64 198.003C1112.48 198.193 1114.38 202.185 1117.19 204.563C1119.36 206.382 1121.18 206.529 1121.1 204.856C1120.95 202.347 1116.86 198.003 1114.64 198.017" fill="#B8AFA3" />
        <path d="M1106.36 198.003C1103.94 198.208 1106.16 202.361 1108.77 204.563C1110.94 206.397 1112.8 206.529 1112.76 204.856C1112.69 202.347 1108.62 198.003 1106.36 198.017" fill="#B8AFA3" />
        <path d="M1097.98 198.15C1095.78 198.326 1097.44 202.185 1100.15 204.475C1102.37 206.339 1104.28 206.339 1104.06 204.475C1103.78 201.98 1100.08 198.15 1097.97 198.15" fill="#B8AFA3" />
        <path d="M1089.19 198.003C1086.84 198.194 1088.5 202.185 1091.31 204.563C1093.61 206.515 1095.63 206.515 1095.46 204.563C1095.22 201.98 1091.42 197.988 1089.18 198.003" fill="#B8AFA3" />
        <path d="M1080.33 198.003C1077.94 198.193 1079.51 202.185 1082.29 204.563C1084.58 206.5 1086.65 206.5 1086.54 204.563C1086.39 201.98 1082.6 198.003 1080.31 198.003" fill="#B8AFA3" />
        <path d="M1071.17 198.003C1068.65 198.193 1070.13 202.127 1072.99 204.563C1075.28 206.514 1077.39 206.514 1077.33 204.563C1077.26 201.98 1073.52 198.003 1071.17 198.003Z" fill="#B8AFA3" />
        <path d="M1062 198.15C1059.58 198.326 1060.94 202.185 1063.61 204.475C1065.95 206.471 1068.09 206.324 1067.85 204.181C1067.58 201.642 1064.19 198.15 1062 198.164" fill="#B8AFA3" />
        <path d="M1052.49 198.003C1049.92 198.193 1051.24 202.185 1054.01 204.563C1056.44 206.632 1058.7 206.47 1058.51 204.254C1058.29 201.613 1054.79 198.003 1052.49 198.003Z" fill="#B8AFA3" />
        <path d="M1042.88 198.003C1040.26 198.193 1041.5 202.185 1044.26 204.563C1046.66 206.632 1048.98 206.47 1048.85 204.254C1048.69 201.628 1045.24 198.003 1042.89 198.003" fill="#B8AFA3" />
        <path d="M1033.09 198.003C1030.42 198.193 1031.58 202.185 1034.31 204.563C1036.7 206.632 1039.06 206.47 1038.99 204.254C1038.9 201.628 1035.48 198.003 1033.09 198.003Z" fill="#B8AFA3" />
        <path d="M1023.14 198.003C1020.42 198.194 1021.48 202.185 1024.21 204.563C1026.75 206.779 1029.23 206.441 1028.95 203.917C1028.66 201.261 1025.46 197.988 1023.14 198.003Z" fill="#B8AFA3" />
        <path d="M1013.01 198.003C1010.24 198.194 1011.22 202.185 1013.92 204.563C1016.45 206.779 1018.98 206.441 1018.76 203.917C1018.53 201.261 1015.36 197.988 1013.01 198.003Z" fill="#B8AFA3" />
        <path d="M1002.59 198.003C999.774 198.194 1000.65 202.185 1003.36 204.563C1005.86 206.779 1008.45 206.441 1008.29 203.917C1008.12 201.261 1004.98 197.988 1002.59 198.003Z" fill="#B8AFA3" />
        <path d="M926.147 198.003C922.992 198.193 923.242 202.185 925.78 204.563C928.261 206.881 931.342 206.338 931.357 203.565C931.372 200.908 928.657 198.003 926.147 198.003Z" fill="#B8AFA3" />
        <path d="M780.552 198.003C776.809 198.193 776.032 202.537 778.497 204.841C781.051 207.219 784.925 205.751 784.881 202.405C784.852 200.057 782.826 197.988 780.552 197.988" fill="#B8AFA3" />
        <path d="M767.623 198.003C763.851 198.193 762.97 202.537 765.392 204.841C767.901 207.234 771.849 205.751 771.878 202.405C771.908 200.057 769.912 197.988 767.623 197.988" fill="#B8AFA3" />
        <path d="M754.752 198.003C750.936 198.193 749.939 202.537 752.345 204.841C754.987 207.38 759.169 205.561 758.935 201.994C758.788 199.793 756.909 197.988 754.752 197.988" fill="#B8AFA3" />
        <path d="M637.862 198.003C633.87 198.208 632.124 202.904 634.384 205.106C636.732 207.41 641.061 205.179 641.193 201.584C641.266 199.573 639.813 197.988 637.862 197.988" fill="#B8AFA3" />
        <path d="M625.256 198.003C621.264 198.208 619.429 202.904 621.616 205.106C623.993 207.512 628.616 204.871 628.469 201.187C628.396 199.338 627.046 198.003 625.241 197.988" fill="#B8AFA3" />
        <path d="M612.752 198.003C608.613 198.223 606.794 203.33 609.23 205.34C611.813 207.454 616.259 204.416 615.848 200.806C615.658 199.147 614.381 198.003 612.752 198.003Z" fill="#B8AFA3" />
        <path d="M600.204 198.003C596.11 198.223 594.187 203.33 596.565 205.34C599.074 207.468 603.536 204.416 603.213 200.806C603.066 199.147 601.833 198.003 600.204 198.003Z" fill="#B8AFA3" />
        <path d="M587.921 198.003C583.856 198.223 581.831 203.33 584.135 205.34C586.571 207.468 591.076 204.416 590.841 200.806C590.724 199.147 589.535 198.003 587.921 198.003Z" fill="#B8AFA3" />
        <path d="M575.77 198.003C571.719 198.223 569.606 203.33 571.837 205.34C574.199 207.454 578.734 204.401 578.587 200.806C578.514 199.147 577.355 198.003 575.77 198.003Z" fill="#B8AFA3" />
        <path d="M563.706 198.003C559.715 198.223 557.499 203.33 559.656 205.34C561.931 207.454 566.495 204.401 566.436 200.806C566.407 199.133 565.306 198.003 563.706 198.003Z" fill="#B8AFA3" />
        <path d="M551.775 198.003C547.813 198.223 545.509 203.33 547.593 205.34C549.809 207.468 554.388 204.416 554.402 200.806C554.402 199.147 553.331 198.003 551.775 198.003Z" fill="#B8AFA3" />
        <path d="M539.976 198.003C536.058 198.223 533.651 203.33 535.676 205.34C537.819 207.454 542.412 204.416 542.515 200.806C542.559 199.147 541.517 198.003 539.976 198.003Z" fill="#B8AFA3" />
        <path d="M528.309 198.003C524.215 198.237 521.793 203.755 524.097 205.546C526.548 207.439 531.244 203.565 530.716 200.101C530.525 198.81 529.601 198.017 528.309 198.003Z" fill="#B8AFA3" />
        <path d="M516.642 198.003C512.592 198.237 510.053 203.755 512.298 205.546C514.676 207.439 519.401 203.565 518.961 200.101C518.799 198.81 517.904 198.017 516.627 198.003" fill="#B8AFA3" />
        <path d="M505.239 198.003C501.233 198.237 498.591 203.755 500.778 205.546C503.082 207.439 507.851 203.565 507.499 200.101C507.367 198.81 506.501 198.017 505.254 198.003" fill="#B8AFA3" />
        <path d="M493.983 198.003C490.021 198.237 487.291 203.755 489.39 205.546C491.606 207.439 496.419 203.565 496.155 200.101C496.052 198.81 495.231 198.017 493.983 198.003Z" fill="#B8AFA3" />
        <path d="M439.816 198.003C436.088 198.237 432.874 203.755 434.635 205.546C436.47 207.439 441.415 203.565 441.592 200.101C441.65 198.81 440.975 198.017 439.83 198.003" fill="#B8AFA3" />
        <path d="M429.411 198.15C425.581 198.384 422.499 204.108 424.48 205.575C426.637 207.175 431.465 202.728 431.01 199.544C430.878 198.649 430.306 198.15 429.411 198.15Z" fill="#B8AFA3" />
        <path d="M419.299 198.003C415.366 198.252 412.064 204.181 414.06 205.707C416.159 207.322 421.266 202.64 420.899 199.456C420.796 198.531 420.209 198.003 419.299 198.003Z" fill="#B8AFA3" />
        <path d="M344.234 198.003C340.595 198.267 336.618 204.665 338.335 205.854C340.243 207.16 345.702 201.716 345.291 198.913C345.247 198.575 345.041 198.003 344.22 198.003" fill="#B8AFA3" />
        <path d="M335.634 198.15C332.186 198.414 328.267 204.578 329.852 205.708C331.599 206.955 336.896 201.701 336.603 199.03C336.574 198.707 336.398 198.15 335.634 198.15Z" fill="#B8AFA3" />
        <path d="M327.313 198.003C323.821 198.267 319.653 204.665 321.223 205.854C322.955 207.16 328.487 201.716 328.267 198.913C328.238 198.575 328.077 198.003 327.313 198.003Z" fill="#B8AFA3" />
        <path d="M319.213 198.003C315.793 198.267 311.537 204.665 313.034 205.854C314.678 207.16 320.254 201.716 320.122 198.913C320.108 198.575 319.976 198.003 319.213 198.003Z" fill="#B8AFA3" />
        <path d="M261.318 199.045C260.217 199.147 258.529 200.835 257.796 201.716C256.504 203.242 255.888 204.636 256.357 204.944C257.473 205.693 262.154 200.718 261.67 199.279C261.597 199.045 261.376 199.045 261.318 199.045Z" fill="#B8AFA3" />
        <path d="M256.064 198.003C254.626 198.149 252.351 200.409 251.353 201.598C249.592 203.667 248.711 205.531 249.313 205.957C250.722 206.955 257.047 200.248 256.519 198.326C256.431 198.017 256.152 198.017 256.064 198.017" fill="#B8AFA3" />
        <path d="M250.223 198.003C248.843 198.149 246.569 200.409 245.556 201.598C243.78 203.667 242.856 205.531 243.414 205.957C244.72 206.955 251.089 200.248 250.649 198.326C250.59 198.047 250.384 198.017 250.223 198.017" fill="#B8AFA3" />
        <path d="M244.632 198.003C243.296 198.149 241.021 200.409 239.994 201.598C238.204 203.667 237.235 205.531 237.749 205.957C238.952 206.955 245.336 200.248 245.013 198.326C244.969 198.047 244.764 198.017 244.632 198.017" fill="#B8AFA3" />
        <path d="M239.275 198.003C237.998 198.149 235.709 200.409 234.682 201.598C232.877 203.667 231.864 205.531 232.334 205.957C233.434 206.955 239.847 200.248 239.627 198.326C239.598 198.047 239.407 198.017 239.275 198.017" fill="#B8AFA3" />
        <path d="M234.124 198.003C231.702 198.296 226.39 205.223 227.124 205.957C228.122 206.94 234.55 200.233 234.447 198.326C234.432 198.047 234.256 198.017 234.124 198.017" fill="#B8AFA3" />
        <path d="M229.281 198.003C226.962 198.296 221.562 205.223 222.237 205.957C223.132 206.94 229.575 200.233 229.575 198.326C229.575 198.047 229.413 198.017 229.281 198.017" fill="#B8AFA3" />
        <path d="M1223.84 185.587C1223.84 185.587 1223.8 185.587 1223.77 185.602C1223.52 186.028 1225.56 188.405 1226.98 189.902C1229.08 192.103 1230.96 193.644 1231.25 193.424C1231.88 192.94 1224.88 185.543 1223.84 185.587Z" fill="#B8AFA3" />
        <path d="M1220.74 185.587C1219.73 185.837 1225.66 192.162 1227.58 193.263C1228.05 193.542 1228.26 193.483 1228.14 193.131C1227.61 191.472 1221.8 185.543 1220.74 185.587Z" fill="#B8AFA3" />
        <path d="M1217.37 185.587C1216.33 185.822 1221.64 191.678 1223.91 193.13C1224.56 193.541 1224.85 193.541 1224.75 193.13C1224.32 191.472 1218.53 185.558 1217.37 185.587Z" fill="#B8AFA3" />
        <path d="M1213.73 185.587C1212.63 185.807 1217.38 191.208 1219.94 192.969C1220.76 193.527 1221.18 193.6 1221.1 193.13C1220.76 191.472 1214.98 185.558 1213.73 185.587Z" fill="#B8AFA3" />
        <path d="M1209.81 185.587C1208.62 185.807 1213.32 191.208 1215.93 192.969C1216.77 193.527 1217.22 193.6 1217.16 193.13C1216.91 191.472 1211.16 185.558 1209.82 185.587" fill="#B8AFA3" />
        <path d="M1205.64 185.587C1204.42 185.793 1208.64 190.797 1211.37 192.764C1212.41 193.512 1212.99 193.644 1212.95 193.13C1212.8 191.487 1207.07 185.558 1205.64 185.587Z" fill="#B8AFA3" />
        <path d="M1201.15 185.587C1199.85 185.793 1204 190.797 1206.79 192.764C1207.95 193.585 1208.58 193.659 1208.42 192.954C1207.98 191.002 1202.62 185.558 1201.17 185.573" fill="#B8AFA3" />
        <path d="M1196.47 185.587C1195.15 185.793 1198.8 190.372 1201.68 192.544C1203.04 193.571 1203.84 193.732 1203.7 192.969C1203.35 191.017 1198.01 185.573 1196.47 185.587Z" fill="#B8AFA3" />
        <path d="M1191.52 185.587C1190.13 185.793 1193.71 190.372 1196.62 192.544C1198 193.571 1198.83 193.732 1198.72 192.969C1198.45 191.017 1193.14 185.573 1191.52 185.587Z" fill="#B8AFA3" />
        <path d="M1186.34 185.587C1184.86 185.793 1188.38 190.372 1191.32 192.544C1192.71 193.571 1193.58 193.732 1193.51 192.969C1193.33 191.017 1188.05 185.573 1186.34 185.587Z" fill="#B8AFA3" />
        <path d="M1175.22 185.587C1173.68 185.778 1176.7 190.019 1179.62 192.279C1181.34 193.615 1182.45 193.82 1182.28 192.764C1181.91 190.592 1176.97 185.573 1175.22 185.587Z" fill="#B8AFA3" />
        <path d="M1169.31 185.587C1167.69 185.778 1170.66 190.019 1173.59 192.279C1175.32 193.615 1176.47 193.82 1176.34 192.764C1176.06 190.606 1171.13 185.573 1169.31 185.587Z" fill="#B8AFA3" />
        <path d="M1163.08 185.587C1161.48 185.763 1164.05 189.682 1166.88 192C1168.81 193.571 1170.17 193.908 1170.07 192.764C1169.86 190.606 1164.98 185.573 1163.08 185.587Z" fill="#B8AFA3" />
        <path d="M1156.82 185.719C1155.19 185.895 1157.57 189.623 1160.37 191.912C1162.23 193.439 1163.58 193.747 1163.52 192.646C1163.41 190.562 1158.71 185.705 1156.83 185.719" fill="#B8AFA3" />
        <path d="M1150.1 185.587C1148.36 185.763 1150.8 189.682 1153.63 192C1155.69 193.673 1157.18 193.923 1156.96 192.529C1156.6 190.181 1152.03 185.558 1150.1 185.573" fill="#B8AFA3" />
        <path d="M1143.27 185.587C1141.47 185.763 1143.83 189.682 1146.68 192C1148.73 193.673 1150.26 193.923 1150.1 192.529C1149.8 190.181 1145.28 185.558 1143.27 185.573" fill="#B8AFA3" />
        <path d="M1136.23 185.587C1134.36 185.764 1136.65 189.682 1139.5 192.001C1141.55 193.674 1143.12 193.923 1143.01 192.529C1142.79 190.181 1138.3 185.573 1136.24 185.573" fill="#B8AFA3" />
        <path d="M1097.73 185.587C1095.37 185.778 1097.66 189.843 1100.29 192C1102.47 193.791 1104.29 193.923 1104.21 192.279C1104.06 189.828 1099.95 185.573 1097.73 185.587Z" fill="#B8AFA3" />
        <path d="M1045.06 185.587C1042.57 185.763 1043.96 189.682 1046.74 192C1049.16 194.026 1051.37 193.879 1051.12 191.692C1050.83 189.109 1047.32 185.573 1045.06 185.587Z" fill="#B8AFA3" />
        <path d="M1035.67 185.587C1033.12 185.763 1034.44 189.682 1037.18 192C1039.59 194.026 1041.85 193.879 1041.66 191.692C1041.44 189.109 1037.96 185.573 1035.66 185.587" fill="#B8AFA3" />
        <path d="M1026.1 185.587C1023.49 185.763 1024.72 189.682 1027.47 192C1029.86 194.026 1032.16 193.879 1032.03 191.692C1031.87 189.109 1028.44 185.573 1026.1 185.587Z" fill="#B8AFA3" />
        <path d="M1016.36 185.587C1013.7 185.763 1014.85 189.682 1017.56 192C1019.94 194.026 1022.29 193.879 1022.21 191.692C1022.13 189.109 1018.74 185.573 1016.36 185.587Z" fill="#B8AFA3" />
        <path d="M1006.61 185.866C1004.1 186.028 1005.07 189.667 1007.58 191.81C1009.91 193.806 1012.2 193.512 1011.95 191.223C1011.69 188.816 1008.74 185.852 1006.61 185.852" fill="#B8AFA3" />
        <path d="M779.348 186.879C776.927 187.011 776.428 189.843 778.042 191.355C779.7 192.91 782.225 191.942 782.195 189.77C782.166 188.229 780.845 186.879 779.348 186.893" fill="#B8AFA3" />
        <path d="M766.566 185.587C762.882 185.778 762.031 190.019 764.409 192.279C766.874 194.613 770.734 193.175 770.748 189.902C770.748 187.598 768.811 185.587 766.566 185.587Z" fill="#B8AFA3" />
        <path d="M753.974 185.587C750.247 185.778 749.278 190.019 751.641 192.279C754.224 194.76 758.318 192.999 758.083 189.491C757.937 187.334 756.088 185.573 753.989 185.573" fill="#B8AFA3" />
        <path d="M741.295 185.719C737.699 185.91 736.672 190.005 738.903 192.177C741.353 194.583 745.345 192.881 745.198 189.491C745.11 187.407 743.364 185.719 741.309 185.719" fill="#B8AFA3" />
        <path d="M639.696 185.587C635.792 185.793 634.061 190.386 636.247 192.544C638.639 194.906 643.13 192.323 642.939 188.713C642.837 186.908 641.487 185.587 639.711 185.587" fill="#B8AFA3" />
        <path d="M627.369 185.587C623.289 185.808 621.572 190.797 624.008 192.764C626.591 194.833 630.935 191.854 630.465 188.332C630.245 186.717 628.983 185.587 627.369 185.587Z" fill="#B8AFA3" />
        <path d="M615.159 185.587C611.108 185.808 609.274 190.797 611.651 192.764C614.161 194.833 618.534 191.854 618.167 188.332C617.991 186.717 616.758 185.587 615.159 185.587Z" fill="#B8AFA3" />
        <path d="M602.89 185.587C598.884 185.808 596.961 190.797 599.25 192.764C601.672 194.848 606.089 191.869 605.796 188.332C605.664 186.717 604.46 185.587 602.89 185.587Z" fill="#B8AFA3" />
        <path d="M590.885 185.587C586.908 185.793 584.883 190.797 587.099 192.764C589.462 194.848 593.894 191.869 593.703 188.332C593.615 186.717 592.456 185.587 590.885 185.587Z" fill="#B8AFA3" />
        <path d="M578.998 185.587C575.036 185.808 572.908 190.797 575.065 192.764C577.355 194.833 581.831 191.854 581.713 188.332C581.669 186.717 580.539 185.587 578.984 185.587" fill="#B8AFA3" />
        <path d="M567.199 185.587C563.295 185.808 561.065 190.797 563.149 192.764C565.35 194.833 569.841 191.854 569.826 188.332C569.826 186.688 568.769 185.587 567.199 185.587Z" fill="#B8AFA3" />
        <path d="M555.547 185.587C551.672 185.808 549.339 190.797 551.364 192.764C553.492 194.848 558.027 191.854 558.086 188.332C558.115 186.717 557.073 185.587 555.547 185.587Z" fill="#B8AFA3" />
        <path d="M544.012 185.587C540.167 185.808 537.745 190.797 539.697 192.764C541.752 194.833 546.301 191.854 546.448 188.332C546.521 186.717 545.509 185.587 544.012 185.587Z" fill="#B8AFA3" />
        <path d="M532.594 185.587C528.588 185.808 526.122 191.208 528.368 192.969C530.731 194.818 535.383 191.032 534.913 187.642C534.737 186.38 533.856 185.602 532.594 185.602" fill="#B8AFA3" />
        <path d="M521.191 185.587C517.229 185.808 514.661 191.208 516.818 192.969C519.108 194.818 523.804 191.032 523.422 187.642C523.29 186.38 522.424 185.602 521.177 185.602" fill="#B8AFA3" />
        <path d="M510.038 185.587C506.12 185.808 503.434 191.208 505.533 192.969C507.749 194.818 512.474 191.032 512.195 187.642C512.093 186.38 511.256 185.602 510.038 185.602" fill="#B8AFA3" />
        <path d="M456.34 185.587C452.642 185.808 449.472 191.208 451.204 192.969C453.038 194.818 457.925 191.032 458.101 187.642C458.16 186.38 457.485 185.602 456.34 185.602" fill="#B8AFA3" />
        <path d="M446.082 185.587C442.443 185.808 439.17 191.208 440.828 192.969C442.589 194.818 447.506 191.032 447.755 187.642C447.843 186.38 447.198 185.602 446.082 185.602" fill="#B8AFA3" />
        <path d="M435.824 185.866C432.214 186.086 429.191 191.472 431.025 192.852C432.962 194.319 437.659 190.078 437.306 187.172C437.204 186.336 436.661 185.866 435.824 185.852" fill="#B8AFA3" />
        <path d="M425.962 185.719C422.279 185.954 419.021 191.546 420.84 192.999C422.778 194.525 427.694 190.107 427.43 187.084C427.356 186.218 426.813 185.719 425.962 185.719Z" fill="#B8AFA3" />
        <path d="M406.634 185.587C402.922 185.837 399.355 191.634 401.102 193.131C402.951 194.716 408.131 190.137 408.029 187.011C407.999 186.116 407.486 185.587 406.634 185.587Z" fill="#B8AFA3" />
        <path d="M369.858 185.587C366.394 185.837 362.447 191.634 363.899 193.131C365.543 194.818 371.12 189.799 371.002 186.732C370.958 185.734 370.269 185.587 369.858 185.587Z" fill="#B8AFA3" />
        <path d="M344.322 185.587C340.83 185.852 336.647 192.103 338.217 193.263C339.949 194.539 345.511 189.212 345.291 186.483C345.262 186.145 345.1 185.587 344.322 185.587Z" fill="#B8AFA3" />
        <path d="M336.104 185.587C332.685 185.852 328.399 192.103 329.896 193.263C331.628 194.598 337.528 188.772 336.985 186.248C336.896 185.808 336.588 185.587 336.104 185.587Z" fill="#B8AFA3" />
        <path d="M260.731 185.587C258.001 185.881 252.718 192.544 253.76 193.365C255.007 194.349 261.479 187.789 261.127 185.896C261.083 185.631 260.877 185.587 260.731 185.587Z" fill="#B8AFA3" />
        <path d="M255.257 185.587C253.951 185.734 251.632 187.95 250.59 189.095C248.755 191.12 247.743 192.955 248.212 193.351C249.357 194.319 255.858 187.759 255.624 185.881C255.594 185.617 255.403 185.573 255.257 185.573" fill="#B8AFA3" />
        <path d="M250.032 185.587C248.77 185.734 246.451 187.95 245.409 189.095C243.311 191.399 242.562 193.013 242.944 193.351C243.986 194.319 250.516 187.759 250.384 185.881C250.37 185.617 250.179 185.573 250.047 185.573" fill="#B8AFA3" />
        <path d="M244.984 185.587C243.78 185.734 241.462 187.95 240.405 189.095C238.277 191.399 237.499 193.013 237.837 193.351C238.776 194.319 245.336 187.759 245.292 185.881C245.292 185.617 245.116 185.573 244.999 185.573" fill="#B8AFA3" />
        <path d="M1212.04 173.451C1212.04 173.451 1212 173.451 1211.97 173.465C1211.59 174.214 1218.73 181.346 1219.63 181.097C1220.16 180.099 1212.76 173.407 1212.04 173.451Z" fill="#B8AFA3" />
        <path d="M1209.02 173.451C1208.03 173.7 1214.11 179.879 1216.03 180.95C1216.5 181.214 1216.69 181.17 1216.58 180.818C1215.99 179.189 1210.06 173.407 1209.02 173.451Z" fill="#B8AFA3" />
        <path d="M1205.73 173.451C1204.72 173.685 1210.18 179.409 1212.45 180.818C1213.1 181.229 1213.39 181.229 1213.27 180.818C1212.77 179.189 1206.86 173.407 1205.73 173.451Z" fill="#B8AFA3" />
        <path d="M1202.16 173.451C1201.11 173.671 1205.98 178.939 1208.55 180.656C1209.37 181.199 1209.8 181.273 1209.68 180.818C1209.28 179.203 1203.38 173.407 1202.16 173.451Z" fill="#B8AFA3" />
        <path d="M1198.35 173.451C1197.2 173.671 1202.02 178.939 1204.64 180.656C1205.48 181.199 1205.94 181.273 1205.85 180.818C1205.54 179.204 1199.65 173.421 1198.35 173.451Z" fill="#B8AFA3" />
        <path d="M1194.27 173.451C1193.09 173.656 1197.41 178.543 1200.17 180.466C1201.21 181.199 1201.8 181.332 1201.72 180.818C1201.5 179.204 1195.65 173.421 1194.25 173.451" fill="#B8AFA3" />
        <path d="M1189.9 173.451C1188.69 173.642 1192.52 178.132 1195.38 180.246C1196.63 181.155 1197.37 181.376 1197.32 180.818C1197.2 179.204 1191.36 173.421 1189.9 173.451Z" fill="#B8AFA3" />
        <path d="M1185.45 173.598C1184.22 173.788 1187.83 178.103 1190.63 180.143C1191.96 181.111 1192.71 181.273 1192.55 180.539C1192.14 178.705 1186.9 173.568 1185.45 173.598Z" fill="#B8AFA3" />
        <path d="M1181 174.008C1179.92 174.17 1182.75 177.707 1185.21 179.585C1186.55 180.612 1187.39 180.847 1187.27 180.157C1186.97 178.528 1182.35 173.994 1181.02 174.008" fill="#B8AFA3" />
        <path d="M1140.03 173.451C1138.34 173.627 1140.86 177.457 1143.73 179.717C1145.66 181.258 1147.09 181.581 1147.03 180.466C1146.91 178.352 1142.01 173.436 1140.03 173.451Z" fill="#B8AFA3" />
        <path d="M1134.19 174.434C1132.88 174.566 1134.7 177.398 1136.83 179.086C1138.37 180.304 1139.49 180.48 1139.31 179.468C1139.03 177.765 1135.63 174.419 1134.17 174.434" fill="#B8AFA3" />
        <path d="M1127.29 174.434C1125.92 174.566 1127.72 177.296 1129.56 178.866C1131.21 180.26 1132.51 180.539 1132.38 179.468C1132.16 177.765 1128.79 174.419 1127.29 174.434Z" fill="#B8AFA3" />
        <path d="M1046.82 174.008C1044.77 174.17 1046.19 177.296 1048.22 179.101C1050.26 180.921 1052.22 181.053 1052.11 179.35C1051.97 177.237 1048.76 173.994 1046.82 174.008Z" fill="#B8AFA3" />
        <path d="M1037.45 173.451C1034.98 173.627 1036.57 177.31 1038.91 179.424C1041.28 181.552 1043.62 181.698 1043.57 179.717C1043.48 177.252 1039.77 173.436 1037.45 173.451Z" fill="#B8AFA3" />
        <path d="M1028.36 173.597C1025.94 173.774 1027.39 177.31 1029.64 179.35C1031.9 181.405 1034.2 181.552 1034.2 179.644C1034.2 177.266 1030.65 173.597 1028.38 173.612" fill="#B8AFA3" />
        <path d="M1018.94 173.451C1016.4 173.627 1017.71 177.457 1020.44 179.717C1022.83 181.698 1025.07 181.552 1024.9 179.424C1024.68 176.899 1021.23 173.451 1018.94 173.451Z" fill="#B8AFA3" />
        <path d="M1009.43 173.451C1006.85 173.627 1008.05 177.457 1010.78 179.717C1013.16 181.698 1015.45 181.552 1015.32 179.424C1015.17 176.899 1011.75 173.451 1009.43 173.451Z" fill="#B8AFA3" />
        <path d="M790.135 174.713C787.757 174.845 787.376 177.618 788.99 179.086C790.692 180.627 793.07 179.702 792.967 177.53C792.894 176.033 791.573 174.713 790.135 174.713Z" fill="#B8AFA3" />
        <path d="M777.822 173.451C774.241 173.641 773.551 177.78 775.929 179.996C778.394 182.271 782.078 180.862 782.004 177.663C781.946 175.417 779.994 173.451 777.822 173.451Z" fill="#B8AFA3" />
        <path d="M765.48 173.451C761.884 173.641 761.062 177.78 763.396 179.996C765.817 182.285 769.574 180.876 769.574 177.663C769.574 175.417 767.666 173.451 765.465 173.451" fill="#B8AFA3" />
        <path d="M653.711 173.451C649.866 173.656 648.237 178.132 650.424 180.245C652.713 182.447 656.866 180.319 656.954 176.885C656.998 174.962 655.575 173.451 653.711 173.451Z" fill="#B8AFA3" />
        <path d="M641.589 173.451C637.774 173.656 636.042 178.132 638.17 180.245C640.489 182.549 644.906 180.025 644.73 176.503C644.642 174.742 643.321 173.451 641.589 173.451Z" fill="#B8AFA3" />
        <path d="M629.555 173.451C625.564 173.656 623.847 178.543 626.209 180.466C628.704 182.491 632.975 179.585 632.549 176.136C632.358 174.551 631.126 173.451 629.541 173.451" fill="#B8AFA3" />
        <path d="M617.61 173.451C613.647 173.656 611.813 178.543 614.117 180.466C616.538 182.491 620.853 179.585 620.515 176.136C620.368 174.551 619.165 173.451 617.61 173.451Z" fill="#B8AFA3" />
        <path d="M605.634 173.451C601.716 173.656 599.793 178.543 602.009 180.466C604.357 182.491 608.701 179.585 608.452 176.136C608.335 174.551 607.175 173.451 605.634 173.451Z" fill="#B8AFA3" />
        <path d="M593.909 173.451C590.02 173.656 587.98 178.543 590.137 180.466C592.412 182.505 596.785 179.585 596.638 176.136C596.565 174.551 595.45 173.451 593.923 173.451" fill="#B8AFA3" />
        <path d="M582.3 173.451C578.426 173.656 576.283 178.543 578.367 180.466C580.569 182.491 584.986 179.57 584.913 176.136C584.883 174.551 583.797 173.451 582.286 173.451" fill="#B8AFA3" />
        <path d="M570.78 173.451C566.95 173.656 564.704 178.543 566.73 180.466C568.857 182.491 573.29 179.57 573.319 176.136C573.334 174.537 572.321 173.451 570.78 173.451Z" fill="#B8AFA3" />
        <path d="M559.392 173.451C555.605 173.656 553.257 178.543 555.195 180.466C557.249 182.491 561.71 179.585 561.828 176.136C561.887 174.551 560.874 173.451 559.392 173.451Z" fill="#B8AFA3" />
        <path d="M548.136 173.451C544.379 173.656 541.928 178.543 543.806 180.466C545.788 182.491 550.278 179.585 550.469 176.136C550.557 174.551 549.603 173.451 548.136 173.451Z" fill="#B8AFA3" />
        <path d="M536.997 173.451C533.079 173.671 530.584 178.939 532.741 180.656C535.016 182.476 539.624 178.763 539.228 175.447C539.081 174.214 538.23 173.451 536.997 173.451Z" fill="#B8AFA3" />
        <path d="M525.844 173.451C521.969 173.671 519.357 178.939 521.441 180.656C523.642 182.461 528.294 178.763 527.986 175.447C527.869 174.214 527.047 173.451 525.829 173.451" fill="#B8AFA3" />
        <path d="M514.969 173.451C511.139 173.671 508.424 178.939 510.434 180.656C512.562 182.461 517.258 178.763 517.038 175.447C516.965 174.214 516.158 173.451 514.969 173.451Z" fill="#B8AFA3" />
        <path d="M504.227 173.451C500.426 173.671 497.608 178.939 499.56 180.656C501.614 182.461 506.34 178.763 506.223 175.447C506.178 174.214 505.415 173.451 504.227 173.451Z" fill="#B8AFA3" />
        <path d="M493.616 173.451C489.859 173.671 486.939 178.939 488.817 180.656C490.799 182.461 495.568 178.763 495.539 175.447C495.539 174.214 494.79 173.451 493.631 173.451" fill="#B8AFA3" />
        <path d="M483.138 173.451C479.425 173.671 476.402 178.939 478.207 180.656C480.115 182.461 484.914 178.763 484.972 175.447C484.987 174.214 484.297 173.451 483.138 173.451Z" fill="#B8AFA3" />
        <path d="M472.748 173.597C469.211 173.803 466.188 178.881 467.875 180.539C469.725 182.373 474.641 178.382 474.435 175.212C474.377 174.199 473.746 173.597 472.748 173.597Z" fill="#B8AFA3" />
        <path d="M462.519 173.451C458.909 173.671 455.68 178.939 457.338 180.656C459.187 182.564 464.309 178.426 464.207 175.138C464.177 174.082 463.546 173.451 462.534 173.451" fill="#B8AFA3" />
        <path d="M452.495 173.451C448.636 173.686 445.407 179.35 447.374 180.818C449.443 182.373 454.462 177.897 454.08 174.83C453.978 173.95 453.391 173.451 452.495 173.436" fill="#B8AFA3" />
        <path d="M413.972 173.451C410.333 173.685 406.693 179.35 408.366 180.818C410.259 182.476 415.689 177.56 415.293 174.566C415.161 173.597 414.413 173.451 413.987 173.451" fill="#B8AFA3" />
        <path d="M404.771 173.451C401.19 173.685 397.448 179.35 399.047 180.818C400.852 182.476 406.326 177.56 406.033 174.566C405.93 173.597 405.211 173.451 404.785 173.451" fill="#B8AFA3" />
        <path d="M395.613 173.451C392.091 173.685 388.246 179.35 389.772 180.818C391.489 182.461 397.007 177.56 396.817 174.566C396.758 173.597 396.039 173.451 395.613 173.451Z" fill="#B8AFA3" />
        <path d="M378.076 173.451C374.686 173.685 370.65 179.35 372.015 180.818C373.571 182.461 379.162 177.56 379.147 174.566C379.147 173.597 378.472 173.451 378.061 173.451" fill="#B8AFA3" />
        <path d="M369.564 173.451C365.998 173.7 361.918 179.82 363.547 180.95C365.367 182.197 370.87 177.002 370.562 174.317C370.518 173.994 370.342 173.451 369.549 173.451" fill="#B8AFA3" />
        <path d="M271.488 173.451C268.802 173.73 263.387 180.245 264.355 181.038C265.53 181.992 272.119 175.579 271.855 173.744C271.811 173.48 271.62 173.451 271.473 173.451" fill="#B8AFA3" />
        <path d="M1109.59 161.593C1107.74 161.769 1110.18 165.364 1112.69 167.434C1114.92 169.268 1116.69 169.65 1116.52 168.241C1116.22 165.995 1111.63 161.593 1109.61 161.593" fill="#B8AFA3" />
        <path d="M1020.72 161.593C1018.27 161.769 1019.84 165.364 1022.18 167.434C1024.55 169.518 1026.88 169.664 1026.81 167.727C1026.72 165.32 1023.02 161.593 1020.72 161.593Z" fill="#B8AFA3" />
        <path d="M1011.6 161.593C1009.09 161.769 1010.59 165.364 1012.91 167.434C1015.24 169.518 1017.62 169.664 1017.6 167.727C1017.6 165.32 1013.94 161.593 1011.6 161.593Z" fill="#B8AFA3" />
        <path d="M1002.33 161.593C999.774 161.769 1001.18 165.364 1003.49 167.434C1005.95 169.664 1008.45 169.664 1008.24 167.434C1008.02 164.968 1004.59 161.593 1002.33 161.593Z" fill="#B8AFA3" />
        <path d="M857.701 162.576C855.353 162.708 855.323 165.423 857.07 167.096C858.875 168.813 861.223 168.285 861.193 166.157C861.164 164.381 859.418 162.576 857.715 162.576" fill="#B8AFA3" />
        <path d="M846.019 161.593C842.732 161.769 842.732 165.834 845.285 167.991C847.78 170.105 850.877 169.004 850.627 166.083C850.422 163.779 848.191 161.593 846.019 161.593Z" fill="#B8AFA3" />
        <path d="M667.271 161.593C663.5 161.784 661.988 166.172 664.175 168.241C666.464 170.398 670.5 168.299 670.529 164.939C670.529 163.06 669.106 161.593 667.271 161.593Z" fill="#B8AFA3" />
        <path d="M655.355 161.593C651.598 161.784 649.984 166.172 652.112 168.241C654.328 170.398 658.393 168.299 658.51 164.939C658.569 163.06 657.189 161.593 655.369 161.593" fill="#B8AFA3" />
        <path d="M643.512 161.593C639.784 161.784 638.067 166.172 640.122 168.241C642.367 170.501 646.696 168.035 646.55 164.572C646.476 162.855 645.199 161.593 643.512 161.593Z" fill="#B8AFA3" />
        <path d="M631.771 161.593C627.868 161.798 626.151 166.568 628.455 168.446C630.876 170.427 635.073 167.58 634.692 164.205C634.516 162.664 633.312 161.593 631.786 161.593" fill="#B8AFA3" />
        <path d="M620.134 161.593C616.259 161.798 614.425 166.568 616.656 168.446C619.004 170.427 623.245 167.58 622.951 164.205C622.819 162.664 621.66 161.593 620.134 161.593Z" fill="#B8AFA3" />
        <path d="M608.452 161.593C604.622 161.798 602.685 166.568 604.827 168.446C607.102 170.442 611.372 167.58 611.167 164.205C611.079 162.664 609.964 161.593 608.452 161.593Z" fill="#B8AFA3" />
        <path d="M597.02 161.593C593.219 161.798 591.164 166.568 593.248 168.446C595.45 170.442 599.764 167.58 599.647 164.205C599.603 162.664 598.517 161.593 597.02 161.593Z" fill="#B8AFA3" />
        <path d="M585.69 161.593C581.904 161.798 579.747 166.568 581.757 168.446C583.885 170.427 588.229 167.58 588.214 164.205C588.214 162.664 587.173 161.593 585.69 161.593Z" fill="#B8AFA3" />
        <path d="M574.449 161.593C570.721 161.798 568.447 166.568 570.384 168.446C572.424 170.427 576.797 167.58 576.87 164.205C576.914 162.635 575.931 161.593 574.434 161.593" fill="#B8AFA3" />
        <path d="M563.339 161.593C559.641 161.798 557.264 166.568 559.128 168.446C561.109 170.442 565.511 167.58 565.673 164.205C565.746 162.664 564.792 161.593 563.339 161.593Z" fill="#B8AFA3" />
        <path d="M552.362 161.593C548.502 161.813 546.081 166.964 548.224 168.637C550.498 170.413 555.018 166.788 554.578 163.53C554.417 162.327 553.566 161.578 552.362 161.578" fill="#B8AFA3" />
        <path d="M541.488 161.593C537.657 161.813 535.133 166.964 537.202 168.637C539.404 170.413 543.968 166.788 543.63 163.53C543.513 162.327 542.691 161.578 541.488 161.578" fill="#B8AFA3" />
        <path d="M530.613 161.593C526.827 161.813 524.185 166.964 526.181 168.637C528.309 170.413 532.917 166.788 532.668 163.53C532.58 162.327 531.787 161.578 530.598 161.578" fill="#B8AFA3" />
        <path d="M488.964 161.593C485.339 161.813 482.257 166.964 483.989 168.637C485.912 170.501 490.931 166.465 490.71 163.236C490.637 162.209 489.991 161.593 488.964 161.593Z" fill="#B8AFA3" />
        <path d="M478.882 161.593C475.286 161.813 472.102 166.964 473.76 168.637C475.595 170.501 480.672 166.45 480.555 163.236C480.511 162.209 479.895 161.593 478.882 161.593Z" fill="#B8AFA3" />
        <path d="M468.844 161.593C465.028 161.828 461.829 167.375 463.781 168.798C465.85 170.31 470.81 165.937 470.414 162.943C470.297 162.077 469.724 161.593 468.829 161.593" fill="#B8AFA3" />
        <path d="M439.376 162.576C436.661 162.752 434.063 166.832 435.354 167.889C436.719 169.004 440.491 165.775 440.403 163.574C440.373 162.943 440.007 162.576 439.376 162.576Z" fill="#B8AFA3" />
        <path d="M386.47 161.593C383.154 161.828 379.015 167.375 380.307 168.798C381.774 170.413 387.395 165.614 387.483 162.679C387.512 161.74 386.852 161.593 386.47 161.593Z" fill="#B8AFA3" />
        <path d="M378.179 161.593C374.686 161.842 370.489 167.83 372.059 168.931C373.879 170.207 379.734 164.645 379.103 162.224C379.001 161.798 378.678 161.593 378.179 161.593Z" fill="#B8AFA3" />
        <path d="M1085.44 150.058C1083.6 150.219 1085.68 153.433 1088.02 155.444C1090.4 157.498 1092.44 158.012 1092.29 156.53C1092.07 154.343 1087.52 150.058 1085.44 150.073" fill="#B8AFA3" />
        <path d="M985.906 150.058C983.382 150.234 984.761 153.727 987.036 155.737C989.472 157.895 991.952 157.895 991.761 155.737C991.556 153.345 988.166 150.043 985.92 150.058" fill="#B8AFA3" />
        <path d="M843.055 150.997C840.677 151.129 840.721 154.05 842.585 155.62C844.449 157.175 846.635 156.383 846.43 154.24C846.269 152.567 844.625 150.997 843.055 150.997Z" fill="#B8AFA3" />
        <path d="M668.636 150.058C664.953 150.249 663.456 154.519 665.584 156.515C667.814 158.614 671.747 156.588 671.792 153.316C671.806 151.481 670.427 150.058 668.636 150.058Z" fill="#B8AFA3" />
        <path d="M645.493 150.058C641.692 150.263 640.092 154.901 642.367 156.735C644.789 158.672 648.839 155.899 648.399 152.611C648.193 151.114 647.005 150.058 645.493 150.058Z" fill="#B8AFA3" />
        <path d="M634.046 150.058C630.245 150.249 628.528 154.901 630.744 156.735C633.092 158.672 637.201 155.899 636.849 152.611C636.688 151.114 635.528 150.058 634.031 150.058" fill="#B8AFA3" />
        <path d="M622.702 150.058C618.93 150.249 617.096 154.901 619.253 156.735C621.528 158.672 625.681 155.899 625.432 152.611C625.314 151.114 624.199 150.058 622.717 150.058" fill="#B8AFA3" />
        <path d="M611.328 150.058C607.601 150.263 605.649 154.901 607.733 156.735C609.934 158.672 614.117 155.899 613.955 152.611C613.882 151.114 612.811 150.058 611.343 150.058" fill="#B8AFA3" />
        <path d="M600.175 150.058C596.477 150.249 594.408 154.901 596.418 156.735C598.546 158.672 602.773 155.899 602.699 152.611C602.67 151.114 601.628 150.058 600.175 150.058Z" fill="#B8AFA3" />
        <path d="M589.139 150.058C585.455 150.263 583.283 154.901 585.221 156.735C587.275 158.658 591.546 155.884 591.56 152.611C591.56 151.114 590.577 150.058 589.139 150.058Z" fill="#B8AFA3" />
        <path d="M578.191 150.058C574.552 150.263 572.277 154.901 574.141 156.735C576.107 158.658 580.407 155.884 580.525 152.611C580.583 151.085 579.644 150.058 578.191 150.058Z" fill="#B8AFA3" />
        <path d="M567.375 150.058C563.765 150.263 561.388 154.901 563.178 156.735C565.159 158.76 569.738 155.605 569.621 152.274C569.577 150.924 568.696 150.058 567.375 150.058Z" fill="#B8AFA3" />
        <path d="M556.662 150.058C552.891 150.263 550.454 155.282 552.509 156.911C554.696 158.643 559.157 155.121 558.79 151.951C558.658 150.777 557.836 150.058 556.662 150.058Z" fill="#B8AFA3" />
        <path d="M546.081 150.058C542.354 150.263 539.785 155.282 541.781 156.911C543.895 158.643 548.4 155.121 548.136 151.951C548.033 150.777 547.255 150.058 546.081 150.058Z" fill="#B8AFA3" />
        <path d="M535.485 150.058C531.787 150.263 529.116 155.282 531.039 156.911C533.064 158.643 537.628 155.121 537.452 151.951C537.393 150.777 536.63 150.058 535.485 150.058Z" fill="#B8AFA3" />
        <path d="M514.94 150.058C511.315 150.263 508.424 155.282 510.199 156.911C512.078 158.628 516.73 155.106 516.745 151.951C516.745 150.777 516.055 150.058 514.925 150.058" fill="#B8AFA3" />
        <path d="M504.784 150.175C501.321 150.381 498.43 155.209 500.088 156.779C501.908 158.511 506.677 154.725 506.443 151.716C506.369 150.748 505.753 150.175 504.784 150.175Z" fill="#B8AFA3" />
        <path d="M494.893 150.058C491.356 150.263 488.245 155.282 489.874 156.911C491.694 158.731 496.683 154.798 496.537 151.657C496.493 150.66 495.876 150.058 494.878 150.058" fill="#B8AFA3" />
        <path d="M485.09 150.058C481.582 150.263 478.354 155.282 479.939 156.911C481.685 158.716 486.719 154.783 486.675 151.657C486.675 150.66 486.073 150.058 485.09 150.058Z" fill="#B8AFA3" />
        <path d="M475.301 150.058C471.574 150.278 468.33 155.679 470.194 157.073C472.161 158.555 477.106 154.299 476.813 151.379C476.725 150.542 476.182 150.058 475.316 150.058" fill="#B8AFA3" />
        <path d="M465.777 150.058C462.093 150.278 458.747 155.679 460.538 157.073C462.431 158.54 467.435 154.284 467.215 151.379C467.156 150.542 466.628 150.058 465.777 150.058Z" fill="#B8AFA3" />
        <path d="M447.168 150.058C443.573 150.278 439.992 155.679 441.65 157.073C443.514 158.628 448.856 153.962 448.46 151.129C448.328 150.205 447.594 150.073 447.168 150.073" fill="#B8AFA3" />
        <path d="M438.084 150.058C434.562 150.278 430.864 155.679 432.449 157.073C434.224 158.643 439.625 153.976 439.331 151.129C439.229 150.205 438.51 150.073 438.084 150.073" fill="#B8AFA3" />
        <path d="M411.624 150.175C408.396 150.395 404.536 155.591 405.842 156.926C407.324 158.438 412.666 153.932 412.666 151.188C412.666 150.307 412.02 150.161 411.639 150.161" fill="#B8AFA3" />
        <path d="M395.041 150.058C391.563 150.307 387.395 156.119 388.95 157.19C390.756 158.438 396.582 153.008 395.965 150.674C395.863 150.263 395.554 150.058 395.041 150.058Z" fill="#B8AFA3" />
        <path d="M386.867 150.175C383.579 150.41 379.455 156.016 380.879 157.043C382.537 158.247 388.217 153.022 387.703 150.762C387.615 150.366 387.321 150.175 386.852 150.161" fill="#B8AFA3" />
        <path d="M1090.22 139.712C1088.99 139.829 1090.69 142.148 1092.45 143.601C1094.11 144.965 1095.53 145.406 1095.49 144.54C1095.4 143.087 1091.72 139.712 1090.22 139.726" fill="#B8AFA3" />
        <path d="M1082.62 138.802C1080.89 138.963 1083.12 142.089 1085.48 144.041C1087.72 145.89 1089.66 146.477 1089.65 145.303C1089.62 143.351 1084.69 138.787 1082.62 138.802Z" fill="#B8AFA3" />
        <path d="M1075.59 138.802C1073.81 138.963 1075.97 142.089 1078.32 144.041C1080.72 146.037 1082.72 146.536 1082.51 145.098C1082.22 142.97 1077.61 138.787 1075.57 138.802" fill="#B8AFA3" />
        <path d="M1068.47 138.802C1066.64 138.963 1068.73 142.089 1071.07 144.041C1073.46 146.037 1075.49 146.536 1075.34 145.098C1075.12 142.97 1070.57 138.787 1068.48 138.802" fill="#B8AFA3" />
        <path d="M978.744 138.802C976.293 138.963 977.732 142.383 980.006 144.334C982.442 146.448 984.849 146.448 984.6 144.334C984.321 142.001 980.931 138.802 978.744 138.802Z" fill="#B8AFA3" />
        <path d="M960.312 138.802C957.758 138.963 959.035 142.383 961.251 144.334C963.628 146.448 966.109 146.448 965.991 144.334C965.859 142.001 962.572 138.802 960.312 138.802Z" fill="#B8AFA3" />
        <path d="M950.949 138.802C948.351 138.963 949.54 142.383 951.727 144.334C954.075 146.448 956.584 146.448 956.54 144.334C956.482 142.001 953.253 138.802 950.964 138.802" fill="#B8AFA3" />
        <path d="M871.305 138.802C868.443 138.963 868.693 142.515 871.011 144.613C873.301 146.683 876.104 146.184 876.104 143.733C876.104 141.385 873.594 138.802 871.305 138.802Z" fill="#B8AFA3" />
        <path d="M647.504 138.802C643.791 138.993 642.206 143.527 644.407 145.303C646.74 147.196 650.718 144.496 650.307 141.297C650.116 139.829 648.971 138.816 647.504 138.816" fill="#B8AFA3" />
        <path d="M636.35 138.919C632.784 139.11 631.14 143.469 633.195 145.186C635.367 146.991 639.241 144.393 638.948 141.326C638.816 139.917 637.744 138.919 636.35 138.919Z" fill="#B8AFA3" />
        <path d="M625.329 138.802C621.645 138.993 619.811 143.527 621.895 145.303C624.081 147.181 628.161 144.481 627.941 141.297C627.838 139.829 626.767 138.816 625.329 138.816" fill="#B8AFA3" />
        <path d="M614.263 138.802C610.624 138.993 608.687 143.527 610.683 145.303C612.796 147.196 616.905 144.496 616.788 141.297C616.729 139.829 615.702 138.816 614.263 138.816" fill="#B8AFA3" />
        <path d="M603.418 138.802C599.808 138.993 597.739 143.527 599.661 145.303C601.701 147.196 605.854 144.496 605.84 141.297C605.84 139.829 604.827 138.816 603.418 138.816" fill="#B8AFA3" />
        <path d="M592.294 139.961C589.917 140.093 588.464 143.116 589.682 144.305C590.988 145.553 593.776 143.762 593.821 141.634C593.85 140.651 593.219 139.976 592.28 139.961" fill="#B8AFA3" />
        <path d="M582.021 138.802C578.47 138.993 576.181 143.527 577.971 145.303C579.937 147.27 584.414 144.188 584.252 140.959C584.193 139.653 583.313 138.802 582.021 138.802Z" fill="#B8AFA3" />
        <path d="M571.499 138.802C567.801 139.007 565.453 143.894 567.493 145.479C569.665 147.167 574.009 143.733 573.612 140.651C573.466 139.506 572.658 138.802 571.499 138.802Z" fill="#B8AFA3" />
        <path d="M561.079 138.802C557.411 139.007 554.945 143.894 556.912 145.479C559.01 147.167 563.413 143.733 563.119 140.651C563.017 139.506 562.224 138.802 561.079 138.802Z" fill="#B8AFA3" />
        <path d="M540.475 138.802C536.88 139.007 534.165 143.894 535.999 145.479C537.936 147.152 542.456 143.733 542.354 140.651C542.31 139.506 541.59 138.802 540.475 138.802Z" fill="#B8AFA3" />
        <path d="M530.349 138.919C526.915 139.125 524.2 143.821 525.902 145.347C527.693 146.961 532.095 143.659 532.081 140.71C532.081 139.609 531.42 138.919 530.349 138.919Z" fill="#B8AFA3" />
        <path d="M520.472 138.802C516.95 139.007 514.015 143.894 515.703 145.479C517.596 147.255 522.439 143.425 522.175 140.357C522.087 139.389 521.456 138.802 520.458 138.802" fill="#B8AFA3" />
        <path d="M510.654 138.802C507.162 139.007 504.124 143.894 505.753 145.479C507.558 147.255 512.459 143.425 512.298 140.357C512.254 139.389 511.638 138.802 510.654 138.802Z" fill="#B8AFA3" />
        <path d="M500.91 138.919C497.579 139.11 494.526 143.821 496.038 145.347C497.696 147.035 502.466 143.351 502.407 140.416C502.392 139.477 501.834 138.905 500.895 138.905" fill="#B8AFA3" />
        <path d="M491.43 138.802C488.01 139.007 484.738 143.894 486.234 145.479C487.893 147.24 492.897 143.41 492.927 140.357C492.927 139.389 492.383 138.802 491.43 138.802Z" fill="#B8AFA3" />
        <path d="M481.905 138.802C478.266 139.022 474.964 144.276 476.739 145.626C478.618 147.064 483.549 142.911 483.329 140.079C483.27 139.257 482.742 138.802 481.905 138.787" fill="#B8AFA3" />
        <path d="M472.557 138.919C469.079 139.139 465.791 144.188 467.45 145.494C469.284 146.947 474.303 142.573 473.848 139.917C473.702 139.051 472.982 138.919 472.572 138.919" fill="#B8AFA3" />
        <path d="M445.686 138.802C442.252 139.022 438.48 144.276 439.977 145.626C441.65 147.152 447.065 142.603 446.86 139.829C446.801 138.934 446.097 138.802 445.686 138.802Z" fill="#B8AFA3" />
        <path d="M428.486 138.802C425.155 139.022 421.178 144.276 422.528 145.626C424.054 147.152 429.558 142.603 429.543 139.829C429.543 138.934 428.883 138.802 428.486 138.802Z" fill="#B8AFA3" />
        <path d="M944.506 127.971C941.997 128.133 943.229 131.449 945.401 133.357C947.735 135.412 950.186 135.412 950.083 133.357C949.965 131.082 946.737 127.971 944.506 127.971Z" fill="#B8AFA3" />
        <path d="M935.422 128.221C933.059 128.367 934.116 131.449 936.097 133.21C938.225 135.104 940.529 135.104 940.485 133.21C940.441 131.112 937.506 128.221 935.407 128.221" fill="#B8AFA3" />
        <path d="M649.485 128.221C646.139 128.397 644.656 132.477 646.638 134.076C648.736 135.779 652.332 133.342 651.994 130.451C651.833 129.131 650.806 128.206 649.485 128.206" fill="#B8AFA3" />
        <path d="M638.713 127.971C635.117 128.162 633.4 132.565 635.47 134.296C637.656 136.131 641.604 133.504 641.325 130.393C641.208 128.969 640.122 127.971 638.713 127.971Z" fill="#B8AFA3" />
        <path d="M627.985 127.971C624.404 128.162 622.57 132.565 624.566 134.296C626.679 136.131 630.671 133.504 630.495 130.393C630.421 128.969 629.379 127.971 627.985 127.971Z" fill="#B8AFA3" />
        <path d="M617.213 127.971C613.676 128.162 611.725 132.565 613.647 134.296C615.687 136.131 619.708 133.504 619.635 130.393C619.605 128.969 618.607 127.971 617.213 127.971Z" fill="#B8AFA3" />
        <path d="M606.647 128.089C603.257 128.265 601.261 132.506 603.051 134.179C604.93 135.94 608.848 133.401 608.878 130.422C608.878 129.028 607.997 128.089 606.647 128.089Z" fill="#B8AFA3" />
        <path d="M575.652 127.971C572.042 128.177 569.679 132.917 571.646 134.472C573.73 136.116 578.015 132.77 577.692 129.776C577.575 128.661 576.797 127.971 575.667 127.971" fill="#B8AFA3" />
        <path d="M555.503 127.971C551.966 128.177 549.354 132.917 551.174 134.472C553.096 136.116 557.513 132.77 557.381 129.776C557.337 128.661 556.618 127.986 555.518 127.971" fill="#B8AFA3" />
        <path d="M545.494 127.971C541.987 128.177 539.257 132.917 541.003 134.472C542.853 136.101 547.314 132.77 547.285 129.776C547.285 128.661 546.58 127.986 545.494 127.971Z" fill="#B8AFA3" />
        <path d="M535.706 127.971C532.227 128.177 529.38 132.917 531.068 134.472C532.947 136.189 537.687 132.477 537.408 129.497C537.32 128.544 536.689 127.986 535.706 127.986" fill="#B8AFA3" />
        <path d="M526.049 127.971C522.615 128.177 519.651 132.917 521.265 134.472C523.07 136.189 527.869 132.477 527.693 129.497C527.634 128.544 527.032 127.986 526.064 127.986" fill="#B8AFA3" />
        <path d="M516.51 127.971C513.105 128.177 510.023 132.917 511.564 134.472C513.281 136.189 518.139 132.462 518.066 129.497C518.036 128.544 517.464 127.986 516.51 127.986" fill="#B8AFA3" />
        <path d="M507.103 127.971C503.742 128.177 500.543 132.917 502.025 134.472C503.669 136.189 508.571 132.462 508.6 129.497C508.6 128.544 508.057 127.986 507.118 127.986" fill="#B8AFA3" />
        <path d="M497.74 128.089C494.262 128.294 491.151 133.21 492.853 134.487C494.761 135.911 499.633 131.64 499.061 129.057C498.87 128.221 498.151 128.089 497.74 128.089Z" fill="#B8AFA3" />
        <path d="M488.568 127.971C485.031 128.191 481.67 133.298 483.358 134.619C485.266 136.116 490.402 131.684 489.889 128.984C489.727 128.118 488.993 127.986 488.568 127.971Z" fill="#B8AFA3" />
        <path d="M479.557 127.971C476.064 128.191 472.586 133.298 474.201 134.619C476.035 136.116 481.23 131.684 480.819 128.984C480.687 128.118 479.968 127.986 479.557 127.971Z" fill="#B8AFA3" />
        <path d="M641.134 117.332C637.642 117.508 635.925 121.793 637.906 123.481C640.004 125.256 643.864 122.703 643.644 119.68C643.541 118.3 642.514 117.332 641.134 117.332Z" fill="#B8AFA3" />
        <path d="M630.715 117.332C627.237 117.508 625.402 121.793 627.325 123.481C629.35 125.256 633.254 122.703 633.136 119.68C633.077 118.3 632.08 117.332 630.729 117.332" fill="#B8AFA3" />
        <path d="M560.39 117.332C556.941 117.522 554.314 122.145 556.046 123.642C557.88 125.227 562.239 121.984 562.165 119.078C562.136 118.007 561.461 117.332 560.39 117.332Z" fill="#B8AFA3" />
        <path d="M550.674 117.332C547.27 117.522 544.496 122.145 546.169 123.642C548.033 125.315 552.656 121.705 552.362 118.799C552.274 117.875 551.643 117.332 550.674 117.332Z" fill="#B8AFA3" />
        <path d="M541.179 117.332C537.804 117.522 534.913 122.145 536.513 123.642C538.288 125.315 542.985 121.705 542.794 118.799C542.735 117.875 542.133 117.332 541.179 117.332Z" fill="#B8AFA3" />
        <path d="M531.802 117.332C528.456 117.522 525.462 122.145 526.988 123.642C528.691 125.315 533.446 121.69 533.343 118.799C533.313 117.875 532.741 117.332 531.802 117.332Z" fill="#B8AFA3" />
        <path d="M522.556 117.332C519.254 117.522 516.128 122.145 517.581 123.642C519.21 125.315 524.024 121.69 524.024 118.799C524.024 117.875 523.481 117.332 522.556 117.332Z" fill="#B8AFA3" />
        <path d="M513.413 117.332C509.877 117.537 506.721 122.497 508.453 123.789C510.288 125.154 515.042 121.235 514.808 118.55C514.734 117.786 514.235 117.332 513.413 117.332Z" fill="#B8AFA3" />
        <path d="M504.417 117.332C500.91 117.537 497.623 122.497 499.296 123.789C501.189 125.227 506.222 120.927 505.723 118.315C505.562 117.464 504.828 117.346 504.417 117.332Z" fill="#B8AFA3" />
        <path d="M495.436 117.332C491.987 117.537 488.568 122.497 490.167 123.789C491.973 125.242 497.094 120.942 496.683 118.315C496.551 117.464 495.847 117.332 495.436 117.332Z" fill="#B8AFA3" />
        <path d="M555.958 107C552.626 107.191 549.838 111.667 551.438 113.12C553.199 114.734 557.777 111.212 557.557 108.424C557.484 107.528 556.897 107 555.958 107Z" fill="#B8AFA3" />
        <path d="M546.756 107C543.454 107.191 540.548 111.667 542.075 113.12C543.762 114.734 548.4 111.212 548.282 108.424C548.238 107.528 547.681 107 546.756 107Z" fill="#B8AFA3" />
        <path d="M537.672 107C534.414 107.191 531.376 111.667 532.829 113.12C534.429 114.734 539.14 111.212 539.125 108.424C539.125 107.528 538.582 107 537.672 107Z" fill="#B8AFA3" />
    </g>
    <defs>
        <linearGradient id="paint0_linear_1009_893" x1="726.5" y1="0" x2="726.5" y2="1402" gradientUnits="userSpaceOnUse">
            <stop offset="0.602014" stop-color="#FFFBF5" />
            <stop offset="1" stop-color="#999793" />
        </linearGradient>
        <clipPath id="clip0_1009_893">
            <rect width="1300" height="1146.57" fill="white" transform="translate(88 107)" />
        </clipPath>
    </defs>
	<g class="mapCont">
		<g transform="translate(179,498)" class="p-box p-box1" data-target="over_1">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">USA</text>
		</g>

		<g transform="translate(110,675)" class="p-box" data-target="over_2">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">MEXICO</text>
		</g>
		
		<g transform="translate(868,481)" class="p-box" data-target="over_3">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">CZECH REPUBLIC</text>
		</g>
		
		<g transform="translate(1329,589)" class="p-box" data-target="over_4">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">KOREA</text>
		</g>
		
		<g transform="translate(1249,656)" class="p-box" data-target="over_5">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">CHINA</text>
		</g>
		
		<g transform="translate(1151,729)" class="p-box" data-target="over_6">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">INDIA</text>
		</g>
		
		<g transform="translate(1265,786)" class="p-box" data-target="over_7">
			<g>
				<circle cx="30" cy="30" r="25" stroke="#F29100" stroke-width="10"/>
			</g>
			<g class="over">
				<circle cx="30" cy="30" r="25" fill="#F29100" stroke-width="10"/>
				<g transform="translate(23,23)" class="icon_plus">
					<path d="M0 7H14" stroke="white" stroke-width="2"/>
					<path d="M7 14L7 2.38419e-07" stroke="white" stroke-width="2"/>
				</g>
			</g>
			<text x="70" y="34" class="regionTxt">VIETNAM</text>
		</g>
	</g>
</svg>

<div class="global-popup">
	<div class="body"></div>
</div>

<div class="map-list">
	<div class="mapCont over_1">
		<div class="titbox">
			<h3>USA</h3>
			<div class="icon"><img src="/img/main/USA_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/kia_icon.svg" alt="KIA"></div>
							<strong>기아</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/stellantis_icon.svg" alt="STELLANTIS"></div>
							<strong>스텔란티스</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_2">
		<div class="titbox">
			<h3>MEXICO</h3>
			<div class="icon"><img src="/img/main/MEXICO_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/kia_icon.svg" alt="KIA"></div>
							<strong>기아</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_3">
		<div class="titbox">
			<h3>CZECH REPUBLIC</h3>
			<div class="icon"><img src="/img/main/CZECH_REPUBLIC_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/kia_icon.svg" alt="KIA"></div>
							<strong>기아</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_4">
		<div class="titbox">
			<h3>KOREA</h3>
			<div class="icon"><img src="/img/main/KOREA_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/hyundal_transys_icon.svg" alt="HYUNDAL TRANSYS"></div>
							<strong>현대트랜시스</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/kia_icon.svg" alt="KIA"></div>
							<strong>기아</strong>
						</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>본사 및 생산법인 (물류법인)</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/oto_icon.svg" alt="OTO"></div>
							<strong>오토인더스트리</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/oto_icon.svg" alt="OTO"></div>
							<strong>네오오토</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_5">
		<div class="titbox">
			<h3>CHINA</h3>
			<div class="icon"><img src="/img/main/CHINA_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/hyundal_transys_icon.svg" alt="HYUNDAL TRANSYS"></div>
							<strong>현대트랜시스</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_6">
		<div class="titbox">
			<h3>INDIA</h3>
			<div class="icon"><img src="/img/main/INDIA_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대</strong>
						</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>본사 및 생산법인 (물류법인)</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/oto_icon.svg" alt="OTO"></div>
							<strong>오토인도 <br /> (첸나이_물류)</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_7">
		<div class="titbox">
			<h3>VIETNAM</h3>
			<div class="icon"><img src="/img/main/VIETNAM_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/toyota_icon.svg" alt="TOYOTA"></div>
							<strong>도요타</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/fcc_icon.svg" alt="F.C.C"></div>
							<strong>F.C.C</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대자동차</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/kia_icon.svg" alt="KIA"></div>
							<strong>기아자동차</strong>
						</li>
						<li>
							<div class="icon"><img src="/img/main/hyundal_transys_icon.svg" alt="HYUNDAL TRANSYS"></div>
							<strong>현대트랜시스</strong>
						</li>
					</ul>
				</dd>
			</dl>
			<dl>
				<dt>본사 및 생산법인 (물류법인)</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/oto_icon.svg" alt="OTO"></div>
							<strong>오토비나</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_8">
		<div class="titbox">
			<h3>BRAZIL</h3>
			<div class="icon"><img src="/img/main/BRAZIL_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대자동차</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
	<div class="mapCont over_9">
		<div class="titbox">
			<h3>INDONESIA</h3>
			<div class="icon"><img src="/img/main/INDONESIA_logo.svg" alt=""></div>
		</div>
		<div class="listbox">
			<dl>
				<dt>고객사</dt>
				<dd>
					<ul>
						<li>
							<div class="icon"><img src="/img/main/hyundal_icon.svg" alt="HYUNDAL"></div>
							<strong>현대자동차</strong>
						</li>
					</ul>
				</dd>
			</dl>
		</div>
	</div>
</div>

<script src="/js/jquery.1.12.4.min.js"></script>
<script>
var $1124 = jQuery.noConflict();
$1124(function() {
    $1124('.p-box').each(function(index) {
        $1124(this).data('index', index);
    });

    $1124('.p-box').on('click', function(event) {
		event.stopPropagation();
        $1124('.p-box').not(this).removeClass('on');
        $1124(this).toggleClass('on');
		$1124('.global-popup').removeClass(function(i, className) {
			//return (className.match(/(^|\s)over_\d+/g) || []).join(' ');
			return (className.match(/(?!global-popup)(\S+)/g) || []).join(' '); // 'global-popup' 클래스를 제외하고 나머지 클래스 제거
		});
		
        var targetClass = $1124(this).attr('data-target');
        if ($1124(this).hasClass('on')) {
            $1124('.global-popup').addClass('on ' + targetClass);
        } else {
            $1124('.global-popup').removeClass('on ' + targetClass);
        }

        var targetMapCont = $1124('.map-list .mapCont.' + targetClass);
        $1124('.global-popup .body').html(targetMapCont.html());
    });
	$1124(document).on('click', function() {
        if (!$1124(event.target).closest('.p-box').length && !$1124(event.target).closest('.global-popup').length) {
            $1124('.p-box').removeClass('on'); // 모든 p-box의 'on' 클래스 제거
            $1124('.global-popup').removeClass('on'); // global-popup의 'on' 클래스 제거
			/*$1124('.global-popup').removeClass(function(i, className) {
				return (className.match(/(?!global-popup)(\S+)/g) || []).join(' ');
			});*/
        }
    });
});

</script>				</div>

				<div class="bg-txt">
					<svg width="1450" height="64" viewBox="0 0 1450 64" fill="none" xmlns="http://www.w3.org/2000/svg">
					  <text x="0" y="50%" dominant-baseline="middle">
						GLOBAL BUSINESS GLOBAL BUSINESS GLOBAL BUSINESS GLOBAL BUSINESS
					  </text>
					</svg>
				</div>
				
			</div>
		</section>
		
		<section class="section main5 esg-box">
			<div class="inner1720">
				<div class="title-box ani">
					<h3><span>ESG</span></h3>
					<div class="txt txt-right">
						좋은 기업이 좋은 제품을 만들 수 있다는 신념을 가지고 <br />
						지속적인 사회공헌활동을 실시하고 있습니다.
					</div>
				</div>
			</div>
			<div class="esgCont ani">
				<div class="inner1720">
					<div class="listbox ani">
						<ul>
							<li>
								<div class="box">
									<a href="/kr/sub/esg/management/sustainability.php">
										<div class="imgbox"><img src="/img/main/esg_img01.png" alt=""></div>
										<div class="txtbox">
											<p>ESG Management</p>
											<div class="btn">
												<strong>ESG 경영</strong>
												<span><img src="/img/common/btn_more.svg" alt=""></span>
											</div>
										</div>
									</a>
								</div>
							</li>
							<li>
								<div class="box">
									<a href="/kr/sub/esg/ethical.php">
										<div class="imgbox"><img src="/img/main/esg_img02.png" alt=""></div>
										<div class="txtbox">
											<p>Ethics Management</p>
											<div class="btn">
												<strong>윤리경영</strong>
												<span><img src="/img/common/btn_more.svg" alt=""></span>
											</div>
										</div>
									</a>
								</div>
							</li>
							<li>
								<div class="box">
									<a href="/kr/sub/esg/report.php">
										<div class="imgbox"><img src="/img/main/esg_img03.png" alt=""></div>
										<div class="txtbox">
											<p>Cyber Newspapers</p>
											<div class="btn">
												<strong>사이버신문고</strong>
												<span><img src="/img/common/btn_more.svg" alt=""></span>
											</div>
										</div>
									</a>
								</div>
							</li>
						</ul>
					</div>
					
					<div class="bg-txt">
						<svg width="1114" height="64" viewBox="0 0 1114 64" fill="none" xmlns="http://www.w3.org/2000/svg">
						  <text x="0" y="50%" dominant-baseline="middle">
							NEOOTO’S ENVIRONMENT·SOCIAL·GOVERNANCE
						  </text>
						</svg>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section main6 contact-box">
			<div class="inner1720">
				<div class="title-box ani">
					<h3><span>CONTACT</span></h3>
				</div>
				<div class="notice-box">
					<div class="listCont">
						<ul class="nav">
							<li class="active"><a href="#all">All</a></li>
							<li><a href="#notice">NOTICE</a></li>
							<li><a href="#news">NEWS</a></li>
						</ul>
						<div class="listbox">
							<div class="txt-top">
								우리는 새로운 세상을 열어가는 데 기여하고 함께 성장합니다. <br />
								네오오토의 투명하고 공정한 소식을 알아보세요.
								<div class="btn_more">
									<a href="">
										<strong>VIEW MORE</strong>
										<span><img src="/img/common/btn_more.svg" alt=""></span>
									</a>
								</div>
							</div>
							<div id="all" class="list on ani">
								<div class="slider">
									<div class="inner">
										<div class="swiper-wrapper">
																					<div class="swiper-slide">
												<a href="/kr/sub/contact/?mode=view&bid=2&idx=138">
													<div class="imgbox">
																													<img src="/upload/thumb/NISI20250325_0001799659_web_80946.jpg" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>네오오토, 4공장 증설 착수... 생산 CAPA 확대 본격화</dt>
															<dd>&nbsp;글로벌 모빌리티 부품 전문 기업 네오오토(대표 김선현, 김원일, 212560)가 충청남도 예산일반산업단지에 4공장 증설을 착수했다.

&nbsp;

이번에 증설하는 신규공장은 고객사의 차세대 하이브리드 부품 신규수주에 대응하기 위한 것으로 총면적
16,505.10㎡(약 5천 평) 규모 부지에 7,452㎡(2,254평) 규모의 기어가공공장</dd>
														</dl>
													</div>
												</a>
											</div>
																					<div class="swiper-slide">
												<a href="/kr/sub/contact/?mode=view&bid=2&idx=128">
													<div class="imgbox">
																													<img src="/upload/thumb/IM0003104133_9a504.jpg" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>충남도, 네오오토·피라인모터스 등 21개사와 투자협약 체결</dt>
															<dd>국내외 기업으로부터 역대급 투자 유치 성과를 올리고 있는 민선8기 힘쎈충남이 새해 초부터 강한 ‘투자 유치 드라이브’를 걸고 있다.&nbsp;지난달 미국과 스위스, 싱가포르 기업 외자를 유치한데 이어, 이번엔 국내 21개 기업으로부터 5600억여 원의 투자를 유치해냈다.&nbsp;김태흠 지사는 10일 도청 대회의실에서 박상돈 천안시장 등 9개 시군 단체장·</dd>
														</dl>
													</div>
												</a>
											</div>
																					<div class="swiper-slide">
												<a href="/kr/sub/contact/?mode=view&bid=2&idx=127">
													<div class="imgbox">
																													<img src="/upload/thumb/oto로고(투명)_56aa8.png" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>네오오토, 지난해 사상 최대 실적 달성</dt>
															<dd>모빌리티 부품 전문 기업 네오오토는 지난해 영업이익이 122억원을 기록해 전년 대비 18.0% 증가했다고 13일 공시했다.같은 기간 매출액과 순이익은 2179억원, 173억원으로 각각 9.9%, 45.4% 늘었다. 매출액과 영업이익 모두 설립 이래 최대 실적이라고 회사 측은 설명했다.회사는 이번 실적 성장의 주요 요인으로 고객사의 완성차 판매 증가로 인한 </dd>
														</dl>
													</div>
												</a>
											</div>
																				</div>
										<div class="control_box">
											<div class="box">
												<div class="txt txt_l"><strong>0<span class="activeslide">1</span></strong></div>
												<div class="swiper-pagination-n"></div>
												<div class="txt txt_r">0<span class="totalslide"></span></div>
											</div>
											<div class="btn-box">
												<span class="btn btn_prev">이전</span>
												<span class="btn btn_next">다음</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="notice" class="list ani">
								<div class="slider">
									<div class="inner">
										<div class="swiper-wrapper">
																				</div>
										<div class="control_box">
											<div class="box">
												<div class="txt txt_l"><strong>0<span class="activeslide">1</span></strong></div>
												<div class="swiper-pagination-n"></div>
												<div class="txt txt_r">0<span class="totalslide"></span></div>
											</div>
											<div class="btn-box">
												<span class="btn btn_prev">이전</span>
												<span class="btn btn_next">다음</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="news" class="list ani">
								<div class="slider">
									<div class="inner">
										<div class="swiper-wrapper">
																					<div class="swiper-slide">
												<a href="/kr/sub/contact/news.php?mode=view&bid=2&idx=138">
													<div class="imgbox">
																													<img src="/upload/thumb/NISI20250325_0001799659_web_80946.jpg" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>네오오토, 4공장 증설 착수... 생산 CAPA 확대 본격화</dt>
															<dd>&nbsp;글로벌 모빌리티 부품 전문 기업 네오오토(대표 김선현, 김원일, 212560)가 충청남도 예산일반산업단지에 4공장 증설을 착수했다.

&nbsp;

이번에 증설하는 신규공장은 고객사의 차세대 하이브리드 부품 신규수주에 대응하기 위한 것으로 총면적
16,505.10㎡(약 5천 평) 규모 부지에 7,452㎡(2,254평) 규모의 기어가공공장</dd>
														</dl>
													</div>
												</a>
											</div>
																					<div class="swiper-slide">
												<a href="/kr/sub/contact/news.php?mode=view&bid=2&idx=128">
													<div class="imgbox">
																													<img src="/upload/thumb/IM0003104133_9a504.jpg" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>충남도, 네오오토·피라인모터스 등 21개사와 투자협약 체결</dt>
															<dd>국내외 기업으로부터 역대급 투자 유치 성과를 올리고 있는 민선8기 힘쎈충남이 새해 초부터 강한 ‘투자 유치 드라이브’를 걸고 있다.&nbsp;지난달 미국과 스위스, 싱가포르 기업 외자를 유치한데 이어, 이번엔 국내 21개 기업으로부터 5600억여 원의 투자를 유치해냈다.&nbsp;김태흠 지사는 10일 도청 대회의실에서 박상돈 천안시장 등 9개 시군 단체장·</dd>
														</dl>
													</div>
												</a>
											</div>
																					<div class="swiper-slide">
												<a href="/kr/sub/contact/news.php?mode=view&bid=2&idx=127">
													<div class="imgbox">
																													<img src="/upload/thumb/oto로고(투명)_56aa8.png" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>네오오토, 지난해 사상 최대 실적 달성</dt>
															<dd>모빌리티 부품 전문 기업 네오오토는 지난해 영업이익이 122억원을 기록해 전년 대비 18.0% 증가했다고 13일 공시했다.같은 기간 매출액과 순이익은 2179억원, 173억원으로 각각 9.9%, 45.4% 늘었다. 매출액과 영업이익 모두 설립 이래 최대 실적이라고 회사 측은 설명했다.회사는 이번 실적 성장의 주요 요인으로 고객사의 완성차 판매 증가로 인한 </dd>
														</dl>
													</div>
												</a>
											</div>
																				</div>
									<div class="control_box">
										<div class="box">
											<div class="txt txt_l"><strong>0<span class="activeslide">1</span></strong></div>
											<div class="swiper-pagination-n"></div>
											<div class="txt txt_r">0<span class="totalslide"></span></div>
										</div>
										<div class="btn-box">
											<span class="btn btn_prev">이전</span>
											<span class="btn btn_next">다음</span>
										</div>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

	</article>


	<!-- footer -->
	<footer>
		<div class="inner1720">
			<div class="footer_box">
				<div class="txtbox">
					<a href="/kr/sub/company/greeting.php">
						<strong>Let's Get Started <br /> with NEOOTO</strong>
						<span class="over"><span>Let’s start!</span></span>
					</a>
				</div>
				<div class="infobox">
					<div class="info-1">
						<ul>
							<li><strong>본사 :</strong> <span>서울 종로구 새문안로5길 19, 로얄빌딩 6층</span></li>
							<li><strong>TEL_</strong><span>02-732-2871</span></li>
							<li><strong>FAX_</strong><span>02-6732-2870</span></li>
						</ul>
					</div>
					<div class="info-1">
						<ul>
							<li><strong>예산 1공장 :</strong> <span>충남 예산군 삽교읍 두루머리길8</span></li>
							<li><strong>TEL_</strong><span>041-337-1730</span></li>
							<li><strong>FAX_</strong><span>041-337-1756</span></li>
						</ul>
					</div>
					<div class="info-2">
						<ul>
							<li><strong>예산 2공장 :</strong> <span>충남 예산군 삽교읍 두루머리길33</span></li>
							<li><strong>예산 3공장 :</strong> <span>충남 예산군 삽교읍 산단2길 85</span></li>
						</ul>
					</div>
					
				</div>
				<div class="fmenu">
					<ul>
						<li><a href="/kr/sub/policy/privacy.php">개인정보처리방침</a></li>
						<li><a href="/kr/sub/policy/terms.php">이용약관</a></li>
						<li><span class="copyright">COPYRIGHTⓒNEOOTO CO., Ltd. ALL RRIGHTS RESERVED.</span></li>
					</ul>
				</div>

				<div class="f-bottom">
					<div class="family-site">
						<p>Family Site</p>
						<div class="box">
							<ul>
															<li><a href="http://www.oto.kr/" target="_blank">오토인더스트리</a></li>
														</ul>
						</div>
					</div>
					<div class="btnTop"><a href="#" class="btn_top"><img src="/img/common/bnt_top.svg" class="svg" alt=""></a></div>
				</div>
			</div>
		</div>
			
	</footer>
	<!-- //footer -->

	<script src="/js/gsap.min.js"></script>
	<script src="/js/ScrollTrigger.min.js"></script>
	<script src="/js/ScrollToPlugin.min.js"></script>
	<script src="/js/cont_fb.js?v=250413024730"></script>


</body>
</html>