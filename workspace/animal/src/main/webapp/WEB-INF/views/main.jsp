<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>수경이꺼</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="/animal/resources/css/default.css">
<link rel="stylesheet" href="/animal/resources/css/top_nav.css">
<link rel="stylesheet" href="/animal/resources/css/swiper.css">
<link rel="stylesheet" href="/animal/resources/css/aos.css">
<link rel="stylesheet" href="/animal/resources/css/main_banner_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc01_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc02_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc03_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc04_style.css">
<link rel="stylesheet" href="/animal/resources/css/user.css">
<link rel="stylesheet" href="/animal/resources/css/footer.css">
<link rel="stylesheet" href="/animal/resources/css/slider.css">
<link rel="stylesheet" href="/animal/resources/css/font_face.css">


<!-- script -->
<script type="text/javascript" src="/animal/resources/script/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/jquery-ui.js"></script>
<script type="text/javascript" src="/animal/resources/script/jquery-menu.js"></script>
<script type="text/javascript" src="/animal/resources/script/common.js"></script>
<script type="text/javascript" src="/animal/resources/script/wrest.js"></script>
<script type="text/javascript" src="/animal/resources/script/placeholders.min.js"></script>
<link rel="stylesheet" href="/animal/resources/css/font-awesome.min.css">
<script type="text/javascript" src="/animal/resources/script/feather.js"></script>
<script type="text/javascript" src="/animal/resources/script/script.js"></script>
<script type="text/javascript" src="/animal/resources/script/gsap.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/ScrollTrigger.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/swiper.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/aos.js"></script>
<script type="text/javascript" src="/animal/resources/script/g5.js"></script>

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
</head>
<body>
<style>
/* 디자인샘플 보러가기 */
#goToDesign {
	position: relative;
	z-index: 100;
	width: 100%;
	padding: 7px 0;
	border-bottom: 1px solid #fff073;
	font-size: 12px;
	text-align: center;
	background-color: #fffbd9;
	font-family: dotum
}

#goToDesign a {
	padding-left: 10px;
	font-weight: bold;
	color: #f96319
}

#goToDesign a:hover {
	text-decoration: underline
}
</style>
	<div id="sh_wrapper">
		<!-- 상단 시작 { -->
		<header id="sh_hd" class="">
			<div id="skip_to_container">
				<a href="#sh_container">본문 바로가기</a>
			</div>

			<!-- 팝업레이어 시작 { -->
			<div id="hd_pop">
				<h2>팝업레이어 알림</h2>

				<span class="sound_only">팝업레이어 알림이 없습니다.</span>
			</div>
	
			<script>
$(function() {
    $(".hd_pops_reject").click(function() {
        var id = $(this).attr('class').split(' ');
        var ck_name = id[1];
        var exp_time = parseInt(id[2]);
        $("#"+id[1]).css("display", "none");
        set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
    });
    $('.hd_pops_close').click(function() {
        var idb = $(this).attr('class').split(' ');
        $('#'+idb[1]).css('display','none');
    });
    $("#hd").css("z-index", 1000);
});
</script>
			<!-- } 팝업레이어 끝 -->
			<div id="sh_hd_wrapper">

				<div id="top_nav_wrap">

					<!-- 로그인 -->

					<div class="top-menu">
						<ul class="top-links">
							<c:choose>
								<c:when test="${not empty sessionScope.loginMember}">
									<li><a class="nav-link" href="#" onclick="logout(event)">로그아웃</a></li>
									<li><a class="nav-link" href="#">${sessionScope.loginName}님
											환영합니다</a></li>
								</c:when>
								<c:otherwise>
									<li><a style="color: white;" class="nav-link"
										href="${contextPath}/member/loginForm.do"> LOGIN</a></li>

									<li><a style="color: white;" class="nav-link"
										href="${contextPath}/member/joinMember.do"> SIGN UP </a></li>
								</c:otherwise>
							</c:choose>
						</ul>
						<!-- 로그아웃 모달 -->
						<div class="modal fade" id="logoutModal" tabindex="-1"
							aria-labelledby="logoutModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content bg-white text-center">
									<div class="modal-header border-0">
										<h5 class="modal-title" id="logoutModalLabel">알림</h5>
									</div>
									<div class="modal-body">${sessionScope.loginName}님,로그아웃
										하시겠습니까?</div>
									<div class="modal-footer border-0 justify-content-center">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">취소</button>
										<button type="button" class="btn btn-primary"
											id="confirmLogout">확인</button>
									</div>
								</div>
							</div>

							<div class="allBox">
								<div class="allmenu">
									<a href="javascript:void(0);"></a>
								</div>
							</div>
						</div>


						<div class="right">
							<nav id="r_menu">
								<!-- 상단메뉴 -->
								<ul id="top_nav">
									<li class="list01"><a class="list"
										href="${contextPath }/main.do">HOME</a></li>
									<li class="list02"><a class="list"
										href="/bbs/board.php?bo_table=table13">HOSPITAL</a>
										<ul class="sub_ul1">
											<li><a href="${contextPath }/hospital/map.do">지도</a></li>
											<li><a href="${contextPath }/hospital/review.do">리뷰</a></li>
										</ul></li>
									<li class="list03"><a class="list"
										href="/sh_page/page10.php">CAT</a>
										<ul class="sub_ul2">
											<li class="mo over"><a
												href="${contextPath }/cat/cat_type.do">묘종</a></li>
											<li><a href="${contextPath }/cat/cat_kitten.do">어린
													고양이</a></li>
											<li><a href="${contextPath }/cat/cat_think.do">고양이를
													기를까 생각중이신가요?</a></li>

										</ul></li>
									<li class="list04"><a class="list"
										href="/bbs/board.php?bo_table=table42">DOG</a>
										<ul class="sub_ul3">
											<li class="mo over"><a
												href="${contextPath }/dog/dog_type.do">품종</a></li>
											<li><a href="${contextPath }/dog/dog_kitten.do">어린
													강아지</a></li>
											<li><a href="${contextPath }/dog/dog_think.do">강아지를
													기를까 생각중이신가요?</a></li>

										</ul></li>
									<li class="list04"><a class="list"
										href="/bbs/board.php?bo_table=table42"> ARTICLE</a>
										<ul class="sub_ul4">
											<li><a href="${contextPath}/board/Board.do">자유 게시판</a></li>
											<li><a href="${contextPath}/board/CatBoard.do">고양이
													게시판</a></li>
											<li><a href="${contextPath}/board/DogBoard.do">강아지
													게시판</a></li>
										</ul></li>
									<li class="list05"><a class="list"
										href="/bbs/board.php?bo_table=table42">PRODUCT</a>
										<ul class="sub_ul5">
											<li><a href="${contextPath }/cat_product/cat_all.do">전체</a></li>
											<li><a href="${contextPath }/cat_product/cat_feed.do">사료</a></li>
											<li><a href="${contextPath }/cat_product/cat_treat.do">간식</a></li>
											<li><a href="${contextPath }/cat_product/cat_sand.do">모래</a></li>
											<li><a href="${contextPath }/cat_product/cat_carrier.do">이동장</a></li>
											<li><a href="${contextPath }/cat_product/cat_toy.do">장난감</a></li>
											<li><a href="${contextPath }/cat_product/cat_bath.do">목욕용품</a></li>
											<li><a href="${contextPath }/cat_product/cat_house.do">하우스</a></li>
											<li><a href="${contextPath }/cat_product/cat_dish.do">식기</a></li>
										</ul></li>

								</ul>
							</nav>
						</div>


					</div>
				</div>
		</header>
		<!-- } 상단 끝 -->

		<!-- 콘텐츠 시작 { -->
		<main id="sh_container">
			<div id="sh_container_wrapper">

				<div id="main_banner" style="position: relative; overflow: hidden;">
					<!-- 배경 영상 -->
					<video autoplay loop muted playsinline preload="auto" id="myVideo"
						style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: 0;">
						<source src="/animal/resources/upload/cat.mp4" type="video/mp4" />
					</video>

					<!-- 어두운 오버레이 -->
					<div class="overlay"
						style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.4); z-index: 1;"></div>

					<!-- 텍스트 및 컨트롤 -->
					<div class="txt" style="position: relative; z-index: 2;">
						<div class="main_txt">
							<h1 data-aos="fade-right" class="aos-init aos-animate"
								style="color: white;">Turning Ideas</h1>
							<h2 class="ko_txt aos-init aos-animate" data-aos="fade-left"
								style="color: white;">
								“삶의 온도를 올려주는 작은 존재, 반려동물. 너와의 하루는 특별하지 않아도 어느새 특별해지고,<br>
								말없이 곁에 있어주는 너는 내 마음의 쉼표가 되어준다. 작은 숨결 하나로도 온 집안은 따뜻해지고,<br>
								가장 진심을 주는 너는 나에게 가장 조용한 위로가 된다.”
							</h2>
						</div>
					</div>
				</div>

				<script>
$(document).ready(function () {
	var main_swiper = new Swiper("#main_banner .main_slide", {
	effect:'fade',
	slideActiveClass: 'on',
	autoplay: {
		delay: 3500,
		disableOnInteraction: false
	},
	speed: 1000,
	loop: true,
	grabCursor: true,
	on: {
		init: function () {
		$(".swiper-progress-bar").removeClass("animate");
		$(".swiper-progress-bar").removeClass("active");
		$(".swiper-progress-bar").eq(0).addClass("animate");
		$(".swiper-progress-bar").eq(0).addClass("active");
		},
		slideChangeTransitionStart: function () {
		$(".swiper-progress-bar").removeClass("animate");
		$(".swiper-progress-bar").removeClass("active");
		$(".swiper-progress-bar").eq(0).addClass("active");
		},
		slideChangeTransitionEnd: function () {
		$(".swiper-progress-bar").eq(0).addClass("animate");
		}
	}
	});
	var main_num = new Swiper("#main_banner .controls .pager", {
	effect:'fade',
	slideActiveClass: 'on',
	autoplay: {
		delay: 4000,
	},
	speed: 500,
	loop: true,
	});
});
function scrollToTarget() {
	const targetElement = document.getElementById("inc01");
	targetElement.scrollIntoView({ behavior: "smooth" });
}
</script>

				<section id="sh_section">

					<article id="inc01">
						<div class="inc01_inr">
							<div class="inner">
								<div class="cont_box">
									<div class="top_area">
										<div class="left" data-aos="fade-right">
											<h2 class="en_tit">
												Our<br> <b>Family</b> <span>The one I cherish
													the most</span>
											</h2>
											<div class="ko_box">
												<h3 class="tit">
													<span>미학과 깊이 있는 가치</span>를 담아낸 공간,<br> 그 감성을 이어가는 새로운
													브랜딩
												</h3>
												단순한 생활의 배경이 아니라, 머무는 순간마다 아름다움과 깊이를<br> 느낄 수 있는 특별한 경험을
												선사하며, 조화로운 디자인과 세심한 디테일이 어우러져<br> 일상의 품격을 한층 더 높여주는 브랜딩
												프로젝트 입니다. <a href="/sh_page/page10.php" class="more"><img
													src="https://co1156.shiningcorp.com/sh_img/include/inc01/img/arrow.png"
													alt="화살표"></a>
											</div>
										</div>
										<div class="right" data-aos="fade-left">
											<div class="top_txt">
												품질과 혁신을 최우선으로 생각하며, 고객의 기대를 뛰어넘는 브랜드 가치를<br> 제공하기 위해
												끊임없이 노력하고 있습니다.<br> <br> 지난 수년 간의 경험과 전문성을 바탕으로,
												우리 브랜드는 시장에서 확고한 입지를<br> 구축했으며, 고객에게 더 나은서비스를 제공하는 것을
												목표로 하고 있습니다.
											</div>
											<a href="/sh_page/page6.php" class="bot_img">
												<div class="h_img">
													<img src="/animal/resources/image/cat.jpg">
												</div>
											</a>
										</div>
									</div>
									<div class="bot_area">
										<div class="left" data-aos="fade-right">
											<div class="img_box">
												<div class="h_img">
													<img src="/animal/resources/image/cat.jpg">
												</div>
												<a href="/sh_page/page6.php" class="i_more"><i></i>Brand<br>Disclaction</a>
											</div>
											<h2 class="en_tit">
												What you see<br> <b>is the brand message</b>
											</h2>
											<div class="ko_box">
												<h3 class="tit">
													보이는 순간, <span>브랜드가 기억되다</span>
												</h3>
												<div class="txt pl">샘플 브랜드는 디자인과 기능, 혁신적인 가치를 결합하여
													소비자의 눈과 마음에 강렬한 흔적을 남깁니다. 모든 디테일은 소비자가 마주한 순간부터 그 브랜드의 특별함을
													기억할 수 있도록 세심하게 설계되었습니다.</div>

											</div>
										</div>
										<div class="right" data-aos="fade-left">
											<div class="txt_inr">
												<h2 class="en_tit">
													Design that matches<br> <b>your visual branding</b>
												</h2>
												<div class="ko_box">
													<h3 class="tit">
														<span>시각적인 브랜딩</span>과 어울리는 디자인
													</h3>
													<div class="txt pl">브랜딩은 단순한 로고나 색상이 아닌, 브랜드가 가진 철학과
														스토리를 시각적으로 표현하는 과정입니다. 한눈에 각인되는 디자인은 브랜드의 아이덴티티를 형성하고 감성적인
														연결을 만들어냅니다.</div>
												</div>
											</div>
											<a href="/sh_page/page7.php" class="img_r">
												<div class="h_img">
													<img src="/animal/resources/image/cat.jpg">
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>


					<article id="inc02">
						<div class="inner">
							<div class="top">
								<h2 class="tit">
									PRODUCT<br> <b>with Little things for our beloved</b> <b><b><b>
												companion</b></b></b>
								</h2>
								<div class="txt pl">“사랑스러운 친구들를 위한 작은 것들”</div>
							</div>
						</div>
						<div class="img_wrap" data-aos="fade-left" data-aos-duration="800">
							<ul>
								<li><a href="/bbs/board.php?bo_table=table13">
										<div class="img_cont">
											<img src="/animal/resources/image/food.jfif">
										</div>
										<div class="txt_box">
											<p>사료</p>
											<div class="txt pl">최신 혁신 제품인 샘플 브랜딩은 뛰어난 품질과 세련된 디자인,
												그리고 높은 기능성을 완벽하게 통합하여 탄생한 작품입니다.</div>
										</div>
								</a></li>
								<li><a href="/bbs/board.php?bo_table=table13">
										<div class="img_cont">
											<img src="/animal/resources/image/carrier.jfif">
										</div>
										<div class="txt_box">
											<p>이동장</p>
											<div class="txt pl">창의성과 혁신이 넘치는 공간으로, 여기서 만들어지는 모든 작품은
												과거와 미래를 잇는 독특한 예술적 여정을 담고 있습니다.</div>
										</div>
								</a></li>
								<li><a href="/bbs/board.php?bo_table=table13">
										<div class="img_cont">
											<img src="/animal/resources/image/snack.jfif">
										</div>
										<div class="txt_box">
											<p>간식</p>
											<div class="txt pl">상상력이 살아 숨 쉬는 공간으로, 각기 다른 색깔과 형태로
												풀어낸 아이디어들이 현실로 변해가는 곳입니다.</div>
										</div>
								</a></li>
								<li><a href="/bbs/board.php?bo_table=table13">
										<div class="img_cont">
											<img src="/animal/resources/image/toy.jfif">

										</div>
										<div class="txt_box">
											<p>장난감</p>
											<div class="txt pl">창작의 과정 하나하나가 철저하게 다듬어지며, 모든 작업은
												정교함과 고급스러움의 극치를 보여줍니다.</div>
										</div>
								</a></li>
								<li><a href="/bbs/board.php?bo_table=table13">
										<div class="img_cont">
											<img src="/animal/resources/image/bath.jfif">
										</div>
										<div class="txt_box">
											<p>목욕 용품</p>
											<div class="txt pl">전통과 현대가 조화를 이루는 창작의 공간입니다. 여기서 탄생하는
												작품들은 고유의 클래식한 매력을 지닙니다.</div>
										</div>
								</a></li>
								<li><a href="/bbs/board.php?bo_table=table13">
										<div class="img_cont">
											<img src="/animal/resources/image/dish.jfif">
										</div>
										<div class="txt_box">
											<p>식기</p>
											<div class="txt pl">기존의 틀을 넘어서는 도전적인 프로젝트들이 이루어지며, 새로운
												기술과 접근 방식이 끊임없이 탐구됩니다.</div>
										</div>
								</a></li>
							</ul>
						</div>
					</article>

					<script>
gsap.registerPlugin(ScrollTrigger);
const pinnedImageWrappers = document.querySelectorAll('#inc02');

ScrollTrigger.matchMedia({
        "(min-width: 769px)": function() {
            if (pinnedImageWrappers) {
                pinnedImageWrappers.forEach((wrapper) => {
                    const inner = wrapper.querySelector('#inc02 .img_wrap ul');
                    gsap.to(inner, {
                        x: () => -((inner.scrollWidth - inner.offsetWidth)) + 'px',            
                        ease: 'none',
                        scrollTrigger: {
                            trigger: "#inc02",
                            start: "25% top",
                            toggleClass:"on",
                            scrub: 2,
                            pin:true,
                            end: () => `+=${inner.offsetWidth}`,
                        }
                    });
                });
            }
        },
    })
</script>
					<!-- 게시판 -->
					<article id="inc03">
						<div class="inner">
							<h2 class="en_tit">
								<b>Articles</b>
							</h2>
							<div class="latest" data-aos="fade-down">

								<article>
									<a href="/bbs/board.php?bo_table=table42&wr_id=9">
										<div class="num">01</div>
										<div class="cont">
											<p>자유 게시판</p>
											<div>샘플 브랜드의 홈페이지가 새롭게 리뉴얼되어 오픈했습니다! 많은 관심 부탁드립니다.더욱
												편리하고 감각적인 디자인으로 지금 바로 방문하셔서 새로운 변화를 경험해 보세요.</div>
										</div> <span class="arrow"> <img
											src="/animal/resources/image/arrow.png" alt="화살표">
									</span>
									</a>
								</article>

								<article>
									<a href="${contextPath }/board/getBoardList.do?category=cat">
										<div class="num">02</div>
										<div class="cont">
											<p>고양이 게시판</p>
											<div>샘플 브랜드의 홈페이지가 새롭게 리뉴얼되어 오픈했습니다! 많은 관심 부탁드립니다.더욱
												편리하고 감각적인 디자인으로 지금 바로 방문하셔서 새로운 변화를 경험해 보세요.</div>
										</div> <span class="arrow"> <img
											src="/animal/resources/image/arrow.png" alt="화살표">
									</span>
									</a>
								</article>

								<article>
									<a href="${contextPath }/board/getBoardList.do?category=dog">
										<div class="num">03</div>
										<div class="cont">
											<p>강아지 게시판</p>

											<div>샘플 브랜드의 홈페이지가 새롭게 리뉴얼되어 오픈했습니다! 많은 관심 부탁드립니다.더욱
												편리하고 감각적인 디자인으로 지금 바로 방문하셔서 새로운 변화를 경험해 보세요.</div>
										</div> <span class="arrow"> <img
											src="/animal/resources/image/arrow.png" alt="화살표">
									</span>
									</a>
								</article>
							</div>
						</div>
					</article>

					<!-- 동물병원 리뷰 -->
					<section id="sh_section">
						<article id="inc04">
							<div class="inner">
								<h3 class="en_tit">Interested in this ?</h3>
								<a href="${contextPath }/hospital/review.do">REVIEW</a>
							</div>
						</article>

						<div class="slider-container">
							<div class="slider-track">
								<a href="reviewDetail.jsp?id=1" class="review-box"> 40대 중반의
									회사원이... 너무 예쁜 내 자식같은 홈페이지가요!
									<div class="stars">★★★★★</div>
									<div>Lit****</div>
								</a> <a href="reviewDetail.jsp?id=2" class="review-box"> 홈페이지 제작
									1시간만에 끝! 진심 이건 추천을...
									<div class="stars">★★★★★</div>
									<div>imc*****</div>
								</a> <a href="reviewDetail.jsp?id=3" class="review-box"> 예전에 웹X로
									만든 적 있었는데 복잡하고...
									<div class="stars">★★★★★</div>
									<div>임**</div>
								</a> <a href="reviewDetail.jsp?id=4" class="review-box"> 사실 컴편
									사이트만들려 했는데 솔직히...
									<div class="stars">★★★★★</div>
									<div>익명</div>
								</a>

								<!-- 반복 -->
								<a href="reviewDetail.jsp?id=1" class="review-box"> 40대 중반의
									회사원이... 너무 예쁜 내 자식같은 홈페이지가요!
									<div class="stars">★★★★★</div>
									<div>Lit****</div>
								</a> <a href="reviewDetail.jsp?id=2" class="review-box"> 홈페이지 제작
									1시간만에 끝! 진심 이건 추천을...
									<div class="stars">★★★★★</div>
									<div>imc*****</div>
								</a> <a href="reviewDetail.jsp?id=3" class="review-box"> 예전에 웹X로
									만든 적 있었는데 복잡하고...
									<div class="stars">★★★★★</div>
									<div>임**</div>
								</a> <a href="reviewDetail.jsp?id=4" class="review-box"> 사실 컴편
									사이트만들려 했는데 솔직히...
									<div class="stars">★★★★★</div>
									<div>익명</div>
								</a>
							</div>
						</div>
					</section>
			</div>
		</main>
		<script>
AOS.init();
feather.replace(); 
</script>
</body>
<script src="/animal/resources/js/designTail.js"></script>
</html>
