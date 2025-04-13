<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
	<meta property="og:image" content="/img/common/img_web.png">
	
	<title>네오오토 NEOOTO</title>
	<!-- jQuery 및 Bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/animal/resources/css/main.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
	
        $(document).ready(function(){
            $(".nav-item").hover(
                function(){ 
                    $(this).find(".submenu").stop(true, true).slideDown(200); 
                }, 
                function(){ 
                    $(this).find(".submenu").stop(true, true).slideUp(0); 
                }
            );
        });
    </script>
<script>
  var contextPath = "${pageContext.request.contextPath}";
  var logoutConfirmed = false;

  $(document).ready(function () {

    // 확인 버튼 클릭 → 모달 닫기, 플래그 설정
    $('#confirmLogout').on('click', function () {
      logoutConfirmed = true;
      const modal = bootstrap.Modal.getInstance(document.getElementById('logoutModal'));
      modal.hide(); // 모달 닫기
    });
    $('.modal-backdrop').remove();
    // 모달 닫힌 후 로그아웃 처리
    $('#logoutModal').on('hidden.bs.modal', function () {
      if (logoutConfirmed) {
        $.ajax({
          url: contextPath + "/member/logout.do",
          method: "GET",
          success: function () {
            window.location.href = contextPath + "/main.do";
          },
          error: function () {
            alert("로그아웃에 실패했습니다.");
          }
        });
        logoutConfirmed = false;
      }
    });
  });

  // 로그아웃 버튼 클릭 → 모달 실행 (닫힘 방지 설정 포함)
  function logout(event) {
    event.preventDefault();
    const modalElement = document.getElementById('logoutModal');
    if (modalElement) {
      const modal = new bootstrap.Modal(modalElement, {
        backdrop: false // 배경 클릭 방지
      });
      modal.show();
    }
  }
</script>
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
	<link rel="stylesheet" type="text/css" href="/animal/resources/css/axj.css" />
	<link rel="stylesheet" type="text/css" href="/animal/resources/css/AXButton.css" />
	<link rel="stylesheet" type="text/css" href="/animal/resources/css/site.css" />
	<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.css">
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
	
	<!-- js block -->
	<script type="text/javascript" src="//code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/ui/1.13.3/jquery-ui.min.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.min.js"></script>
	<script type="text/javascript" src="/animal/resources/js/common.js"></script>
	

	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.0/css/OverlayScrollbars.css">
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.0/js/OverlayScrollbars.js"></script>
<script src="/animal/resources/js/slick.js"></script>
	<script src="/animal/resources/js/common.js"></script>
	<script src="/animal/resources/js/swiper.min.js"></script>
	<script src="/animal/resources/js/OverlayScrollbars.js"></script>

	<link rel="stylesheet" href="/animal/resources/css/base.css">
	<link rel="stylesheet" href="/animal/resources/css/OverlayScrollbars.css">
	<link rel="stylesheet" href="/animal/resources/css/common.css">
	<link rel="stylesheet" href="/animal/resources/css/animation.css">
	<link rel="stylesheet" href="/animal/resources/css/swiper.css">
	<link rel="stylesheet" href="/animal/resources/css/slick.css">
	<link rel="stylesheet" href="/animal/resources/css/slide.css">
	
	<script src="/animal/resources/js/jquery.fullPage.min.js"></script>
	<script src="/animal/resources/js/scrolloverflow.min.js"></script>
	<script src="/animal/resources/js/main.js"></script>
	<link rel="stylesheet" href="/animal/resources/css/fullpage.css">
	<link rel="stylesheet" href="/animal/resources/css/main.css">

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
				
					<section>
					<div class="inner1720">
					    <!-- 검색 버튼 -->
					    <div class="search-btn">
					      <a href="/kr/sub/search/result.php">
					        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="white" class="svg replaced-svg">
					          <g clip-path="url(#clip0_999_6312)">
					            <path d="M22.9956 21.4631C24.8694 19.243 26 16.3762 26 13.25C26 6.21886 20.2811 0.5 13.25 0.5C6.21886 0.5 0.5 6.21886 0.5 13.25C0.5 20.2811 6.21886 26 13.25 26C16.3762 26 19.243 24.8694 21.4631 22.9956L27.6504 29.1829C27.8623 29.3948 28.1416 29.5 28.4167 29.5C28.6939 29.5 28.9715 29.3944 29.1829 29.1829L29.1841 29.1818C29.6047 28.7585 29.6063 28.0738 29.1829 27.6504L22.9956 21.4631ZM2.66667 13.25C2.66667 7.41427 7.41427 2.66667 13.25 2.66667C19.0857 2.66667 23.8333 7.41427 23.8333 13.25C23.8333 19.0857 19.0857 23.8333 13.25 23.8333C7.41427 23.8333 2.66667 19.0857 2.66667 13.25Z" fill="white" stroke="white"></path>
					          </g>
					          <defs>
					            <clipPath id="clip0_999_6312">
					              <rect width="30" height="30" fill="white"></rect>
					            </clipPath>
					          </defs>
					        </svg>
					      </a>
					    </div>
					
					  </div>
					  </section>
					  
				<div class="top-menu">
					<ul class="top-links">
				<c:choose>
					<c:when test="${not empty sessionScope.loginMember}">
						<li><a class="nav-link" href="#" onclick="logout(event)">로그아웃</a></li>
						<li><a class="nav-link" href="#">${sessionScope.loginName}님 환영합니다</a></li>
					</c:when>
					<c:otherwise>
						<li><a class="nav-link" href="${contextPath}/member/loginForm.do"> 로그인 </a></li>
						<li><a class="nav-link" href="${contextPath}/member/joinMember.do"> 회원가입 </a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		
					<div class="allBox"><div class="allmenu"><a href="javascript:void(0);"></a></div></div>
				</div>

		<!-- 로그아웃 모달 -->
			<div class="gnb_bg"></div>
		<div class="modal fade" id="logoutModal" tabindex="-1"
		aria-labelledby="logoutModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content bg-white text-center">
				<div class="modal-header border-0">
					<h5 class="modal-title" id="logoutModalLabel">알림</h5>
				</div>
				<div class="modal-body">${sessionScope.loginName}님, 로그아웃 하시겠습니까?</div>
				<div class="modal-footer border-0 justify-content-center">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary" id="confirmLogout">확인</button>
				</div>
			</div>
		</div>
	</div>
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
							<div class="swiper-slide slide1" data-page="1">
								<div class="mov">
									<video loop muted playsinline data-autoplay preload="auto" id="myVideo">
										<source src="/animal/resources/upload/cat.mp4" type="video/mp4" />
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
		
		<!-- 슬라이드 -->
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
		
<section>

  <style>
    h2 {
      font-size: 28px;
      color: #e60023;
      margin-bottom: 20px;
    }

    .swiper-container {
      width: 100%;
      padding-bottom: 50px;
      position: relative;
    }

    .swiper-slide {
      background: #fff;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease;
    }

    .swiper-slide img {
      width: 100%;
      height: 260px;
      object-fit: cover;
    }

    .art-info {
      padding: 15px;
      text-align: left;
    }

    .artist-name {
      font-size: 14px;
      color: #222;
      margin-bottom: 2px;
    }

    .art-title {
      font-size: 16px;
      font-weight: bold;
      color: #000;
    }

    .art-size {
      font-size: 12px;
      color: #999;
      margin: 4px 0;
    }

    .art-price {
      font-size: 16px;
      font-weight: bold;
      color: #e60023;
      margin-top: 4px;
    }

    .art-stats {
      font-size: 12px;
      color: #444;
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }

    .art-stats i {
      margin-right: 2px;
    }

    .swiper-button-next,
    .swiper-button-prev {
      color: #333;
      background-color: transparent;
      font-size: 30px;
      font-weight: bold;
      top: 45%;
      width: 40px;
      height: 40px;
      line-height: 40px;
    }

    .swiper-button-next:hover,
    .swiper-button-prev:hover {
      color: #e60023;
    }

    .swiper-pagination-bullet {
      background: #ccc;
    }

    .swiper-pagination-bullet-active {
      background: #e60023;
    }

    @media (max-width: 768px) {
      .swiper-slide img {
        height: 200px;
      }
    }

    @media (max-width: 480px) {
      .swiper-slide img {
        height: 160px;
      }
    }
  </style>
 	<section id="Trends">
  <div class="swiper-container">
    <div class="swiper-wrapper">

      <!-- Slide 1 -->
      <div class="swiper-slide">
  <a href="detail.jsp?artId=1" style="text-decoration: none; color: inherit;">
    <img src="/animal/resources/image/cat1.jpg" alt="봄 사랑">
    <div class="art-info">
      <div class="artist-name">최향숙</div>
      <div class="art-title">봄 사랑</div>
      <div class="art-size">W72.7 x H60.6 cm</div>
      <div class="art-stats">
        <span>👤 3</span>
        <span>♡ 5</span>
      </div>
      <div class="art-price">₩2,000,000</div>
    </div>
  </a>
</div>

      <!-- Slide 2 -->
      <div class="swiper-slide">
  <a href="detail.jsp?artId=2" style="text-decoration: none; color: inherit;">
    <img src="/animal/resources/image/poppy1.png" alt="회상">
    <div class="art-info">
      <div class="artist-name">최종우</div>
      <div class="art-title">회상</div>
      <div class="art-size">W53.0 x H45.5 cm</div>
      <div class="art-stats">
        <span>👤 2</span>
        <span>♡ 1</span>
      </div>
      <div class="art-price">₩500,000</div>
    </div>
  </a>
</div>

      <!-- Slide 3 -->
      <div class="swiper-slide">
       <a href="detail.jsp?artId=2" style="text-decoration: none; color: inherit;">
        <img src="/animal/resources/image/cat2.jpg" alt="스며들다">
        <div class="art-info">
          <div class="artist-name">후후 HooHoo</div>
          <div class="art-title">스며들다 / Permeate 36</div>
          <div class="art-size">W106.0 x H72.0 cm</div>
          <div class="art-stats">
            <span>👤 9</span>
            <span>♡ 2</span>
          </div>
          <div class="art-price">₩9,000,000</div>
        </div>
      </div>

      <!-- Slide 4 -->
      <div class="swiper-slide">
       <a href="detail.jsp?artId=2" style="text-decoration: none; color: inherit;">
        <img src="/animal/resources/image/poppy.jpeg" alt="빛 항아리">
        <div class="art-info">
          <div class="artist-name">정희연</div>
          <div class="art-title">빛흘풀은 항아리23.-8.5</div>
          <div class="art-size">W50.0 x H50.0 cm</div>
          <div class="art-stats">
            <span>👤 8</span>
            <span>♡ 2</span>
          </div>
          <div class="art-price">₩2,400,000</div>
        </div>
      </div>

    </div>
    

    <!-- 네비게이션 버튼 -->
    <div class="swiper-button-prev">←</div>
    <div class="swiper-button-next">→</div>

    <!-- 페이징 -->
    <div class="swiper-pagination"></div>
  </div>
  
</section>

  <script>
    const swiper = new Swiper('.swiper-container', {
      loop: true,
      speed: 700,
      autoplay: {
        delay: 3500,
        disableOnInteraction: false,
        pauseOnMouseEnter: true
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev'
      },
      slidesPerView: 4,
      spaceBetween: 24,
      breakpoints: {
        1024: {
          slidesPerView: 3
        },
        768: {
          slidesPerView: 2
        },
        480: {
          slidesPerView: 1
        }
      }
    });
  </script>

</body>
</html>