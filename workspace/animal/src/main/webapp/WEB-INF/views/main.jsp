<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<link rel="shortcut icon" href="/front/images/common/favicon.ico;jsessionid=FuLNabRonk8NxwgUBupNanFYSaRdBlZVYqBSumrCqnuwlLqnvWagncJ0OJTxUhk5.aniwas2_servlet_front">
<link rel="stylesheet" href="/animal/resources/css/base.css">
<link rel="stylesheet" href="/animal/resources/css/font.css">
<link rel="stylesheet" href="/animal/resources/css/layout.css">
<link rel="stylesheet" href="/animal/resources/css/main.css">
<link rel="stylesheet" href="/animal/resources/css/responsive.css">
<link rel="stylesheet" href="/animal/resources/css/style_main.css">
<link rel="stylesheet" href="/animal/resources/css/swiper.css">

<style>
	

.right_banner {
  position: absolute;
  top: 250px;
/*   -webkit-transform: translateY(-50%); */
/*   -ms-transform: translateY(-50%); */
/*   transform: translateY(-50%); */
  right:calc(50% - 740px); /* right:calc(50% - social bar width/2) */
  z-index : 99999999;
  background-color: #dd4b39; /*#3B5998 #55ACEE #dd4b39 #007bb5 #bb0000*/
}


.right_banner a {
  display: block;
  text-align: center;
  padding: 10px;
  transition: all 0.3s ease;
  color: white;
  font-size: 15px;
}


@media screen and (max-width:768px){
.right_banner {
/*   display: none; */
	right: 10px; /* right:calc(50% - social bar width/2) */
  }
  
.right_banner a {
  display: block;
  text-align: center;
  padding: 5px;
  transition: all 0.3s ease;
  color: white;
  font-size: 11px;
  }
}

.right_banner a:hover {
  background-color: #000;
}

.right_banner .a2 {
  background-color: #3B5998; /*#3B5998 #55ACEE #dd4b39 #007bb5 #bb0000*/
}

.right_banner .a2:hover {
  background-color: #000;
}

.right_banner .a3 {
  background-color: #007bb5; /*#3B5998 #55ACEE #dd4b39 #007bb5 #bb0000*/
}

	
</style>


</head>
<body style="overflow-y: auto;">
	<section class="main-visual">
		<div class="visual-bg"></div>
		<div class="container">
			<h3 class="blind">메인 웹 배너</h3>
			<div class="main-banner">
				<div
					class="swiper-container swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper"
						style="transition-duration: 0ms; transform: translate3d(-2650px, 0px, 0px);">
						<div
							class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
							data-swiper-slide-index="4" style="width: 530px;">
							<a class="focus"
								href="/front/community/show.do?boardId=boardID07&amp;menuNo=7000000008&amp;seq=300108">
								<img
								src="/animal/resources/image/first_swipe.png"
								alt="길고양이 돌봄 가이드라인">
							</a>
						</div>
						<!-- 사진사이즈 반드시 710 * 420px 권장 -->
						<!-- 임시 배너 입니다. 웹접근성 규정에 맞게 나중에 이미지 다시 디자인 하여 드릴게요. -->


						<div class="swiper-slide swiper-slide-duplicate-next"
							data-swiper-slide-index="0" style="width: 530px;">
							<a class="focus" href="#"> <img
								src="/animal/resources/image/first_swipe.png"
								alt="고양이 동물등록, 전국 어디서나 가능해요">
							</a>
						</div>

						<div class="swiper-slide" data-swiper-slide-index="1"
							style="width: 530px;">
							<a class="focus" href="#"> <img
								src="/animal/resources/image/second_swipe.png"
								alt="함께 지키는 펫티켓, 모두가 행복한 산책길 첫번째, 반려견과 외출 시 배변봉투,목줄,가슴줄 및 인식표 꼭 준비해주세요! 두번째, 반려견과 외출 시  목줄,가슴줄의 길이를 2미터 이내로 유지해주세요! ※ 2022년 2월 11일 시행(동물보호법 시행 규칙 제12조 제2항) 농림축산식품부  EPIS 농림수산식품교육문화정보원">
							</a>
						</div>

						<div class="swiper-slide" data-swiper-slide-index="2"
							style="width: 530px;">
							<a class="focus" href="#"> <img
								src="/animal/resources/image/third_swipe.jpeg"
								alt="동물사랑배움터 새로워진 동물사랑 배움터에서 슬기로운 반려생활 시작하세요. 설채현 수의사, 이찬종 훈련사와 함께하는 반려견 양육을 위한 기초교육부터 내 주변 반려동물 생활정보까지 한번에! 교육과정안내, 반려동물 훈련가이드, 동물보호센터, 반려동물 훈련가이드 ⓘ 의무교육 대상자는 동물보호법에 따라 교육을 반드시 받아야 하며, 미수료 시 과태료가 부과될 수 있습니다. 동물사랑배움터">
							</a>
						</div>

						<div class="swiper-slide swiper-slide-prev"
							data-swiper-slide-index="3" style="width: 530px;">
							<a class="focus"
								href="/front/community/show.do?boardId=boardID06&amp;menuNo=7000000006&amp;seq=300129">
								<img
								src="/animal/resources/image/fourth_swipe.jpeg"
								alt="검역탐지견 민간입양 꽃길만 걷개">
							</a>
						</div>

						<div class="swiper-slide swiper-slide-active"
							data-swiper-slide-index="4" style="width: 530px;">
							<a class="focus"
								href="/front/community/show.do?boardId=boardID07&amp;menuNo=7000000008&amp;seq=300108">
								<img
								src="/animal/resources/image/fifth_swipe.jpeg"
								alt="길고양이 돌봄 가이드라인">
							</a>
						</div>

						<div class="swiper-slide swiper-slide-duplicate swiper-slide-next"
							data-swiper-slide-index="0" style="width: 530px;">
							<a class="focus" href="#"> <img
								src="/front/fileMng/imageView.do;jsessionid=FuLNabRonk8NxwgUBupNanFYSaRdBlZVYqBSumrCqnuwlLqnvWagncJ0OJTxUhk5.aniwas2_servlet_front?f=/2024/12/20276"
								alt="고양이 동물등록, 전국 어디서나 가능해요">
							</a>
						</div>
					</div>
					
					<div class="swiper-nav">
						<div class="swiper-pagination swiper-pagination-fraction">
							<span class="swiper-pagination-current">5</span> / <span
								class="swiper-pagination-total">5</span>
						</div>
						<div class="swiper-button-prev" tabindex="0" role="button"
							aria-label="Previous slide"></div>
						<button type="button" class="pause" id="mainSwipeBtn"
							onclick="changeSwipeSt('mainSwipeBtn' , 'mainSwipeTxt');">
							<span class="stop"> <em class="blind" id="mainSwipeTxt">정지</em>
							</span>
						</button>
						<div class="swiper-button-next" tabindex="0" role="button"
							aria-label="Next slide"></div>
					</div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span>
				</div>
			</div>
			
			<div class="back-box">
				<!-- 퀵메뉴 구성 확정아님!!!! 변동될 수 있음!!!!! -->
				<div class="quick-menu">
					<h3 class="blind">퀵메뉴</h3>
					<ul>
						<li class="first"><a href="javascript:void(0);"
							onclick="winopen('/front/popup_reg_animal_modify.do','7')"
							alt="동물등록정보 연결 및 변경방법 새창으로 열기"> <i class="iconset icon-7"></i>
								<span> 동물등록정보 연결 및 변경방법</span>
								<div style="width: 0px; height: 0px; overflow: hidden;">새창
									열림</div>
						</a></li>

						<li><a
							href="/front/awtis/record/recordConfirmList.do?menuNo=2000000011"
							alt="동물등록 정보조회"> <i class="iconset icon-2"></i> <span>
									동물등록 정보조회</span>
								<div style="width: 0px; height: 0px; overflow: hidden;">바로가기</div>
						</a></li>

						<li><a
							href="/front/awtis/mypage/registAnimalList.do?menuNo=2000000019"
							alt="변경신고 및 등록증출력"> <i class="iconset icon-1"></i> <span>
									변경신고 및 등록증출력</span>
								<div style="width: 0px; height: 0px; overflow: hidden;">바로가기</div>
						</a></li>

						<li><a
							href="/front/awtis/protection/protectionList.do?menuNo=1000000060"
							alt="입양대상 동물"> <i class="iconset icon-9"></i> <span>
									입양대상 동물</span>
								<div style="width: 0px; height: 0px; overflow: hidden;">바로가기</div>
						</a></li>

						<li><a
							href="/front/awtis/business/bsnDlngDtlsList.do?menuNo=8000500001"
							alt="반려동물 판매생산수입업 거래내역 제출"> <i class="iconset icon-8"></i> <span>
									반려동물 판매생산수입업 거래내역 제출</span>
								<div style="width: 0px; height: 0px; overflow: hidden;">바로가기</div>
						</a></li>	

						<li class="last"><a
							href="/front/awtis/public/publicList.do?menuNo=1000000055"
							alt="실종동물찾기(공고)"> <i class="iconset icon-4"></i> <span>
									실종동물찾기(공고)</span>
								<div style="width: 0px; height: 0px; overflow: hidden;">바로가기</div>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
</body>
</html>