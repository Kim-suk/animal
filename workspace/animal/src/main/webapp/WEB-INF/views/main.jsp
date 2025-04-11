<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <link rel="shortcut icon" href="/front/images/common/favicon.ico">
  
  <!-- CSS 파일 연결 -->
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
      right: calc(50% - 740px);
      z-index: 99999999;
      background-color: #dd4b39;
    }

    .right_banner a {
      display: block;
      text-align: center;
      padding: 10px;
      color: white;
      font-size: 15px;
      transition: all 0.3s ease;
    }

    .right_banner a:hover {
      background-color: #000;
    }

    .right_banner .a2 {
      background-color: #3B5998;
    }

    .right_banner .a2:hover {
      background-color: #000;
    }

    .right_banner .a3 {
      background-color: #007bb5;
    }

    @media screen and (max-width:768px) {
      .right_banner {
        right: 10px;
      }

      .right_banner a {
        padding: 5px;
        font-size: 11px;
      }
    }
  </style>
</head>

<body style="overflow-y: auto;">
  <section class="main-visual">
    <div class="visual-bg"></div>
    <div class="container">
      <h3 class="blind">메인 웹 배너</h3>

      <!-- 메인 배너 -->
      <div class="main-banner">
        <div class="swiper-container swiper-container-horizontal">
          <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-2650px, 0px, 0px);">

            <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="4" style="width: 530px;">
              <a class="focus" href="/front/community/show.do?boardId=boardID07&amp;menuNo=7000000008&amp;seq=300108">
                <img src="/animal/resources/image/first_swipe.png" alt="길고양이 돌봄 가이드라인">
              </a>
            </div>

            <div class="swiper-slide swiper-slide-duplicate-next" data-swiper-slide-index="0" style="width: 530px;">
              <a class="focus" href="#">
                <img src="/animal/resources/image/first_swipe.png" alt="고양이 동물등록, 전국 어디서나 가능해요">
              </a>
            </div>

            <div class="swiper-slide" data-swiper-slide-index="1" style="width: 530px;">
              <a class="focus" href="#">
                <img src="/animal/resources/image/second_swipe.png" alt="함께 지키는 펫티켓, 모두가 행복한 산책길">
              </a>
            </div>

            <div class="swiper-slide" data-swiper-slide-index="2" style="width: 530px;">
              <a class="focus" href="#">
                <img src="/animal/resources/image/third_swipe.jpeg" alt="동물사랑배움터 교육 안내">
              </a>
            </div>

            <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="3" style="width: 530px;">
              <a class="focus" href="/front/community/show.do?boardId=boardID06&amp;menuNo=7000000006&amp;seq=300129">
                <img src="/animal/resources/image/fourth_swipe.jpeg" alt="검역탐지견 민간입양">
              </a>
            </div>

            <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="4" style="width: 530px;">
              <a class="focus" href="/front/community/show.do?boardId=boardID07&amp;menuNo=7000000008&amp;seq=300108">
                <img src="/animal/resources/image/fifth_swipe.jpeg" alt="길고양이 돌봄 가이드라인">
              </a>
            </div>

            <div class="swiper-slide swiper-slide-duplicate swiper-slide-next" data-swiper-slide-index="0" style="width: 530px;">
              <a class="focus" href="#">
                <img src="/front/fileMng/imageView.do?f=/2024/12/20276" alt="고양이 동물등록, 전국 어디서나 가능해요">
              </a>
            </div>
          </div>

          <!-- 스와이퍼 내비게이션 -->
          <div class="swiper-nav">
            <div class="swiper-pagination swiper-pagination-fraction">
              <span class="swiper-pagination-current">5</span> / <span class="swiper-pagination-total">5</span>
            </div>

            <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide"></div>

            <button type="button" class="pause" id="mainSwipeBtn" onclick="changeSwipeSt('mainSwipeBtn' , 'mainSwipeTxt');">
              <span class="stop">
                <em class="blind" id="mainSwipeTxt">정지</em>
              </span>
            </button>

            <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide"></div>
          </div>

          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
      </div>

      <!-- 퀵 메뉴 -->
      <div class="back-box">
        <div class="quick-menu">
          <h3 class="blind">퀵메뉴</h3>
          <ul>
            <li class="first">
              <a href="javascript:void(0);" onclick="winopen('/front/popup_reg_animal_modify.do','7')">
                <i class="iconset icon-7"></i>
                <span>동물등록정보 연결 및 변경방법</span>
              </a>
            </li>

            <li>
              <a href="/front/awtis/record/recordConfirmList.do?menuNo=2000000011">
                <i class="iconset icon-2"></i>
                <span>동물등록 정보조회</span>
              </a>
            </li>

            <li>
              <a href="/front/awtis/mypage/registAnimalList.do?menuNo=2000000019">
                <i class="iconset icon-1"></i>
                <span>변경신고 및 등록증출력</span>
              </a>
            </li>

            <li>
              <a href="/front/awtis/protection/protectionList.do?menuNo=1000000060">
                <i class="iconset icon-9"></i>
                <span>입양대상 동물</span>
              </a>
            </li>

            <li>
              <a href="/front/awtis/business/bsnDlngDtlsList.do?menuNo=8000500001">
                <i class="iconset icon-8"></i>
                <span>반려동물 판매생산수입업 거래내역 제출</span>
              </a>
            </li>

            <li class="last">
              <a href="/front/awtis/public/publicList.do?menuNo=1000000055">
                <i class="iconset icon-4"></i>
                <span>실종동물찾기(공고)</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
