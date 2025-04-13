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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="/animal/resources/css/main.css?v=250413024730">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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
	<script type="text/javascript" src="/site/api/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript" src="/site/api/kcaptcha/kcaptcha.js" charset="utf-8"></script>

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
							</li>
							<li class="">
								<a href="/kr/sub/contact/notice.php">CONTACT</a>
								<div class="subDepth menu7">
									<ul>
										<li ><a href="/kr/sub/contact/notice.php">공지사항</a></li>
										<li ><a href="/kr/sub/contact/news.php">뉴스</a></li>
										<li ><a href="/kr/sub/contact/inquiry.php">문의하기</a></li>
										<li ><a href="/kr/sub/contact/location.php">오시는 길</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</nav>
					
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
		<script src="/js/jquery.1.12.4.min.js"></script>
			</div>
		
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
																													<img src="/animal/resources/image/cat.jpg" alt="">
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
																													<img src="/animal/resources/image/cat.jpg" alt="">
														</div>
													<div class="txtbox">
														<dl>
															<dt>고양이 귀여웡</dt>
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
																													<img src="" alt="">
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
																													<img src="/animal/resources/image/cat.jpg" alt="">
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
	<script src="/js/cont_fb.js"></script>


</body>
</html>