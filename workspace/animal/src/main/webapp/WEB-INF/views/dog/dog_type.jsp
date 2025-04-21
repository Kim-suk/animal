<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>어린 강아지</title>
 <!-- jQuery 라이브러리 로드 (필수) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- bxSlider 플러그인 로드 (필수) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>

 <!-- bxSlider CSS (필수) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css">
<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"> </script>

<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  --> 
 

  <script>
       $(document).ready(function() {
      $('.smart-banner-bxslider').bxSlider({
         mode : 'fade', // 전환 방식: 'horizontal', 'vertical', 'fade'
         auto : true, // 자동 슬라이드 여부
         pause : 2000, // 각 슬라이드 정지 시간 (ms 단위, 2초)
         speed : 500, // 슬라이드 전환 속도 (0.5초)
         controls : true, // 이전/다음 버튼 표시 여부
         pager : true, // 페이지 네이션(1,2,3 버튼) 활성화
         adaptiveHeight : true
      // 이미지 높이에 맞게 자동 조정
      });
   }); 
       
       
       document.addEventListener("DOMContentLoaded", function () {
           const searchBox = document.querySelector(".search-input");
           const dogItems = document.querySelectorAll(".dog-grid li");
           const noResultsMessage = document.getElementById("no-results-message");

           searchBox.addEventListener("keyup", function () {
               const keyword = searchBox.value.toLowerCase();
               let hasResults = false;

               dogItems.forEach(function (item) {
                   const dogName = item.querySelector("h3").textContent.toLowerCase();

                   if (dogName.includes(keyword)) {
                       item.style.display = "block";
                       hasResults = true;
                   } else {
                       item.style.display = "none";
                   }
               });

               if (!hasResults && keyword !== "") {
                   noResultsMessage.style.display = "block";
               } else {
                   noResultsMessage.style.display = "none";
               }
           });
       });

       function searchToggle(obj, evt) {
           var container = $(obj).closest('.search-wrapper');
           if (!container.hasClass('active')) {
               container.addClass('active');
               evt.preventDefault();
           } else if (container.hasClass('active') && $(obj).closest('.input-holder').length === 0) {
               container.removeClass('active');
               container.find('.search-input').val('');
               container.find('.search-input').trigger('keyup'); // clear 시 검색도 초기화
           }
       }
       
       
       </script>


  <!-- 페이지 전용 스타일 -->
  <style>
 
     body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f0f0f0;
      margin: 60px auto;
    }
    model-viewer {
      width: 400px;
      height: 400px;
      background: white;
      border-radius: 20px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }
    
   

#category1 {
   margin-bottom: 25px; /* h2 아래쪽 여백 */
   align:center;
   font-size:18px;
}

    .dog-container {
      position: fixed;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 60px;
      padding: 60px;
      margin-top: 150px; /* 헤더 높이만큼 추가 */
      background-color: #f8f8f8;
      border-radius: 20px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      max-width: 1200px;
       flex-direction: column; /* 세로 정렬! */
         margin:50px; /* 왼쪽에서 40px 떨어지게 */
    } 

.dog-container .dog-model {
   width: 400px;
   height: 400px;
   flex-shrink: 0;
}

.dog-container .dog-text {
   max-width: 500px;
   font-family: 'Arial', sans-serif;
}

.dog-container .dog-text h1 {
   font-size: 32px;
   margin-bottom: 20px;
   color: #333;
}

.dog-container .dog-text p {
   font-size: 18px;
   line-height: 1.6;
   color: #000;
}

.dog-grid {
   display: grid;
   grid-template-columns: repeat(3, 1fr); /* 4열 그리드 */
   gap: 20px;
  width: 100%;
  max-width: 900px;
  margin: 100px 30px 100px auto; /* 오른쪽 정렬 + 오른쪽 여백 30px */
  list-style: none;
  justify-content: end; * 위쪽 여백 + 가운데 정렬 */
}

.dog:hover {
   transform: scale(1.03);
}

.name {
   color: black;
}

.dog-grid li {
   text-align: center;
   border: 1px solid #ddd;
   padding: 10px;
   background-color: #f9f9f9;
   border-radius: 10px;
}

.dog-grid img {
   width: 100%;
   height: auto;
   border-radius: 5px;
}

.smart-banner-bxslider img {
   width: 100%; /* 부모 요소 크기에 맞춤 */
   height: auto; /* 비율 유지 */
   object-fit: contain; /* 이미지가 잘리지 않도록 설정 */
   max-width: 100%;
}

nav {
   display: block;
   unicode-bidi: isolate;
}

.iJqTVc {
   width: 100%;
   max-width: 1346px;
   padding: 1.25rem;
   margin: 0px auto;
}

.hmSxNI {
   display: flex;
   width: 100%;
   white-space: nowrap;
   overflow-x: auto;
   height: 1.875rem;
}

.gBDxJK:first-child {
   padding-left: 0px;
}

.gBDxJK {
   position: relative;
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   margin: 0px 0.3125rem 0px 0px;
}

.ghsRDc {
   display: block;
   fill: rgb(102, 102, 102);
   margin: 0px 0px 0px 0.3125rem;
   min-width: 0.75rem;
}

.search-wrapper {
    position: absolute;
    margin-top:80px;
    margin-left:230px;
    transform: translate(-50%, -50%);
    top:50%;
    left:50%;
   
}
.search-wrapper.active {}

.search-wrapper .input-holder {    
    height: 70px;
    width:70px;
    overflow: hidden;
    background: rgba(255,255,255,0);
    border-radius:6px;
    position: relative;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder {
    width:450px;
    border-radius: 50px;
    background: rgba(0,0,0,0.5);
    transition: all .5s cubic-bezier(0.000, 0.105, 0.035, 1.570);
}
.search-wrapper .input-holder .search-input {
    width:100%;
    height: 50px;
    padding:0px 70px 0 20px;
    opacity: 0;
    position: absolute;
    top:0px;
    left:0px;
    background: transparent;
    box-sizing: border-box;
    border:none;
    outline:none;
    font-family:"Open Sans", Arial, Verdana;
    font-size: 16px;
    font-weight: 400;
    line-height: 20px;
    color:#FFF;
    transform: translate(0, 60px);
    transition: all .3s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.3s;
}
.search-wrapper.active .input-holder .search-input {
    opacity: 1;
    transform: translate(0, 10px);
}
.search-wrapper .input-holder .search-icon {
    width:70px;
    height:70px;
    border:none;
    border-radius:50px;

    padding:0px;
    outline:none;
    position: relative;
    z-index: 2;
    float:right;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder .search-icon {
    width: 50px;
    height:50px;
    margin: 10px;
    border-radius: 50px;
}
.search-wrapper .input-holder .search-icon span {
    width:22px;
    height:22px;
    display: inline-block;
    vertical-align: middle;
    position:relative;
    transform: rotate(45deg);
    transition: all .4s cubic-bezier(0.650, -0.600, 0.240, 1.650);
}
.search-wrapper.active .input-holder .search-icon span {
    transform: rotate(-45deg);
}
.search-wrapper .input-holder .search-icon span::before, .search-wrapper .input-holder .search-icon span::after {
    position: absolute; 
    content:'';
}
.search-wrapper .input-holder .search-icon span::before {
    width: 4px;
    height: 11px;
    left: 9px;
    top: 18px;
    border-radius: 2px;
    background: #FE5F55;
}
.search-wrapper .input-holder .search-icon span::after {
    width: 14px;
    height: 14px;
    left: 0px;
    top: 0px;
    border-radius: 16px;
    border: 4px solid #FE5F55;
}
.search-wrapper .close {
    position: absolute;
    z-index: 1;
    top:24px;
    right:20px;
    width:25px;
    height:25px;
    cursor: pointer;
    transform: rotate(-180deg);
    transition: all .3s cubic-bezier(0.285, -0.450, 0.935, 0.110);
    transition-delay: 0.2s;
}
.search-wrapper.active .close {
    right:-50px;
    transform: rotate(45deg);
    transition: all .6s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.5s;
}
.search-wrapper .close::before, .search-wrapper .close::after {
    position:absolute;
    content:'';
    background: #FE5F55;
    border-radius: 2px;
}
.search-wrapper .close::before {
    width: 5px;
    height: 25px;
    left: 10px;
    top: 0px;
}
.search-wrapper .close::after {
    width: 25px;
    height: 5px;
    left: 0px;
    top: 10px;
}
.search-icon {

  background-color: white;
  border-radius: 50%;         /* 완전한 원형 */
  width: 40px;                /* 너비와 높이 같게 */
  height: 40px;
  justify-content: center;
  align-items: center;
  border: 1px solid #ccc;     /* 경계선(선택사항) */
  cursor: pointer;
  transition: background-color 0.3s;
}

.search-icon:hover {
  background-color: #000;  /* 호버 시 살짝 회색 */
}
</style>

</head>

<body>
   <div data-qa="breadcrumbs" class="sc-58202797-0 iJqTVc">
      <nav>
         <ol class="sc-58202797-1 hmSxNI">
            <li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
               href="${contextPath }/" class="sc-58202797-4 isfXxF"
               data-qa="breadcrumb-item-text">홈페이지</a> <svg
                  preserveAspectRatio="xMidYMid meet" focusable="false"
                  aria-hidden="true" viewBox="0 0 32 32"
                  class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
                  <path
                     d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
                     data-name="Arrow Right"></path></svg></li>
            <li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
               href="${contextPath }/dog/dog_type.do" class="sc-58202797-4 isfXxF"
               data-qa="breadcrumb-item-text">반려견에 대한 모든 것</a> <svg
                  preserveAspectRatio="xMidYMid meet" focusable="false"
                  aria-hidden="true" viewBox="0 0 32 32"
                  class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
                  <path
                     d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
                     data-name="Arrow Right"></path></svg></li>
            <li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
               href="${contextPath }/dog/dog_type.do" class="sc-58202797-4 isfXxF"
               data-qa="breadcrumb-item-text">품종 라이브러리</a> <svg
                  preserveAspectRatio="xMidYMid meet" focusable="false"
                  aria-hidden="true" viewBox="0 0 32 32"
                  class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
                  <path
                     d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
                     data-name="Arrow Right"></path></svg></li>
         </ol>
      </nav>
   </div>

   <div class="dog-container">
      <!-- 3D 고양이 모델 -->
      <model-viewer src="${pageContext.request.contextPath}/resources/model/Siberianhusky.glb"
         alt="3D 고양이" auto-rotate camera-controls ar autoplay exposure="1"
         shadow-intensity="1"> </model-viewer>


      <!-- 설명 텍스트 -->
      <div class="dog-text">
         <h1>
            견종에 대해<br> 찾아보세요
         </h1>
         <p>
            300여종이 넘는 반려견 품종의 특징과 요구사항에 대한<br> 전문적인 정보를 찾아보세요. 스크롤 또는 검색
            기능을<br> 사용해 원하는 견종에 대한 정보를 찾아보세요.
         </p>
         
   </div>
   <div class="search-wrapper">
    <div class="input-holder">
        <input type="text" class="search-input" placeholder="Type to search" />
        <button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
    </div>
    <span class="close" onclick="searchToggle(this, event);"></span>
</div>
      </div>
    



   <div id="textsetting" >
   <br><br>
      <h1 id="category1" align="center">초소형</h1	>
      <ul class="dog-grid">
         <li><a
            href="${contextPath}/dog/dog_type/chihuahua-smooth-coat.do"> <img
               class="dog" alt="Devon Rex adult in black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/WT8irnUBRYZmsWpcF5lV/v17/chihuahua">
               <h3 class="name">단모치와와</h3>
         </a></li>

         <li><a href="${contextPath}/dog/dog_type/russian-toy.do"> <img
               class="dog" alt="Devon Rex adult in black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/XD88rnUBRYZmsWpcuppo/v17/russian-toy">
               <h3 class="name">러시안 토이</h3>
         </a></li>

         <li><a href="${contextPath}/dog/dog_type/maltese.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/5T81rnUBRYZmsWpc7Jnx/v17/maltese">
               <h3 class="name">말티즈</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/bolognese.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Oz8grnUBRYZmsWpcWZnE/v17/bolognese">
               <h3 class="name">볼로네즈</h3></a></li>


         <li><a href="${contextPath}/dog/dog_type/petit-brabancon.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/OT86rnUBRYZmsWpcjpr3/v21/petit-brabancon">
               <h3 class="name">쁘띠 브라반숑</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/australian-silky-terrier.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Gz8ernUBRYZmsWpcF5lR/v21/australian-silky-terrier">
               <h3 class="name">오스트레일리언 실키 테리어</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/yorkshire.do"> <img
               class="dog" alt="Munchkin adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/8UCzEZABRYZmsWpceC4H/v1/yorkshire-terrier-cover">
               <h3 class="name">요크셔테리어</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/english-toy-terrier-black-and-tan.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/fD8trnUBRYZmsWpcNpnn/v21/english-toy-terrier-black-and-tan">
               <h3 class="name">잉글리시 토이 테리어 블랙 앤드 탠</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/chihuahua.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/WT8irnUBRYZmsWpcF5lV/v17/chihuahua">
               <h3 class="name">장모치와와</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/japanese-chin.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/yT80rnUBRYZmsWpcNJmd/v17/japanese-chin">
               <h3 class="name">재패니즈 친</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/chinese-crested-dog.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Wj8irnUBRYZmsWpcKplx/v21/chinese-crested-dog">
               <h3 class="name">차이니스 크레스티드</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/continental-toy-papillon-spaniel.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/YT8irnUBRYZmsWpckZlU/v17/continental-toy-papillon-spaniel">
               <h3 class="name">콘티넨탈 토이 스패니얼</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/pomenarian.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Qj87rnUBRYZmsWpcGJq3/v17/pomenarian">
               <h3 class="name">포메라니안</h3></a></li>


         <!-- 나머지 품종들도 같은 방식으로 추가 -->
      </ul>

   </div>

   <div id="textsetting">
      <h1 id="category1" align="center">소형</h1	>
    
      <ul class="dog-grid">
         <li><a href="${contextPath}/dog/dog_type/griffon-bruxellois.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/qT8yrnUBRYZmsWpcFJmy/v17/griffon-bruxellois">
               <h3 class="name">그리폰 브뤼셀</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/norwegian-lundehund.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/9j82rnUBRYZmsWpc8Zlh/v19/norwegian-lundehund">
               <h3 class="name">노르웨이 룬트훈트</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/norwich-terrier.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/9z82rnUBRYZmsWpc9pkx/v19/norwich-terrier">
               <h3 class="name">노리치 테리어</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/norfolk-terrier.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/8T82rnUBRYZmsWpcpJm6/v17/norfolk-terrier">
               <h3 class="name">노퍽 테리어</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/dashchund-smotth-haired.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/aj8srnUBRYZmsWpcMZkx/v19/dashchund-smotth-haired">
               <h3 class="name">닥스훈트</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/danish-swedish-farmdog.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/aD8srnUBRYZmsWpcI5kC/v21/danish-swedish-farmdog">
               <h3 class="name">대니시 스웨디시 팜독</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/dandie-dinmont-terrier.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Zz8srnUBRYZmsWpcFJmx/v21/dandie-dinmont-terrier">
               <h3 class="name">댄디 딘몬트 테리어</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dutch-smooshond.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/dT8srnUBRYZmsWpc55kS/v19/dutch-smooshond">
               <h3 class="name">더치 스모우스혼트</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/lhasa-apso.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/4T81rnUBRYZmsWpcs5lX/v19/lhasa-apso">
               <h3 class="name">라사압소</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/lakeland-terrier.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/3D81rnUBRYZmsWpcXZmf/v17/lakeland-terrier">
               <h3 class="name">레이클랜드 테리어</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/lowchen.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/4z81rnUBRYZmsWpczJn4/v19/lowchen">
               <h3 class="name">로첸(리틀 라이온 독)</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/manchester-terrier.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/5j81rnUBRYZmsWpc8pn0/v17/manchester-terrier">
               <h3 class="name">맨체스터 테리어</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/moody.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/7T82rnUBRYZmsWpcWZkP/v19/505445">
               <h3 class="name">무디</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/miniature-schnauzer-breed-arrows.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/zEAIzosBRYZmsWpcvRKK/v3/miniature-schnauzer-breed-arrows">
               <h3 class="name">미니어처 슈나우저</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/miniature-pinscher.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/6z82rnUBRYZmsWpcN5np/v19/miniature-pinscher">
               <h3 class="name">미니어처 핀셔</h3></a></li>
               
         <li><a href="${contextPath}/dog/dog_type/bichon.do"><img
               class="dog" alt="Bichon Frise adult in black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Mz8frnUBRYZmsWpc45kR/v19/bichon-frise">
               <h3 class="name">비숑 프리제</h3></a></li>
               


         <!-- 나머지 품종들도 같은 방식으로 추가 -->
         <!-- 오전9시부터 작업시작  -->
      </ul>
   </div>

   <div id="textsetting">
      <h1 id="category1" align="center">중형</h1>

      <ul class="dog-grid">
         <li><a href="${contextPath}/dog/dog_type/gascon-saintongeois.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/kT8wrnUBRYZmsWpchJlr/v19/gascon-saintongeois">
               <h3 class="name">가스콘 세인톤죠이스</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/grand-basset-griffon-vendeen.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/nj8xrnUBRYZmsWpcW5mu/v17/grand-basset-griffon-vendeen">
               <h3 class="name">그랜드 바셋 그리폰 방뎅</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/griffon-nivernais.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/qj8yrnUBRYZmsWpcHpkV/v17/griffon-nivernais">
               <h3 class="name">그리폰 니베르네</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/hellenic-hound.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/sD8yrnUBRYZmsWpcf5lE/v19/hellenic-hound">
               <h3 class="name">그릭 헤어하운드</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/kishu.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/0z80rnUBRYZmsWpczpnN/v17/kishu">
               <h3 class="name">기슈</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/norbottenspitz.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/8D82rnUBRYZmsWpckpkQ/v17/norbottenspitz">
               <h3 class="name">노르보텐스피츠</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/norwegian-buhund.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/8j82rnUBRYZmsWpct5m7/v17/norwegian-buhund">
               <h3 class="name">노르웨이안 부훈트</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/norwegian-hound.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/9D82rnUBRYZmsWpc05kf/v19/norwegian-hound">
               <h3 class="name">노르웨이안 하운드</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/norwegian-elkhound-grey.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/9T82rnUBRYZmsWpc1Zkp/v19/norwegian-elkhound-grey">
               <h3 class="name">노르웨이언 엘크하운드</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/nova-scotia-duck-tolling-retriever.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/-D83rnUBRYZmsWpcCZlc/v17/nova-scotia-duck-tolling-retriever">
               <h3 class="name">노바 스코셔 덕 톨링 레트리버</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dutch-schapendoes.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/cz8srnUBRYZmsWpcxZnP/v19/dutch-schapendoes">
               <h3 class="name">더치 샤펜도스</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dobermann.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/bT8srnUBRYZmsWpcW5m-/v23/dobermann">
               <h3 class="name">도베르만</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/drever.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/cj8srnUBRYZmsWpcspmS/v21/drever">
               <h3 class="name">드레버</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/lapponian-herder.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/3j81rnUBRYZmsWpchZn-/v17/lapponian-herder">
               <h3 class="name">라포니안 허더</h3></a></li>

         <!-- 나머지 품종들도 같은 방식으로 추가 -->
      </ul>
   </div>


   <div id="textsetting">
      <h1 id="category1" align="center">대형</h1>
   
      <ul class="dog-grid">
         <li><a href="${contextPath}/dog/dog_type/gordon-setter.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/nT8xrnUBRYZmsWpcUZmh/v19/gordon-setter">
               <h3 class="name">고든 세터</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/golden-retriever.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/nD8xrnUBRYZmsWpcN5m_/v19/golden-retriever">
               <h3 class="name">골든 리트리버</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/grand-griffon-vendeen.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/nz8xrnUBRYZmsWpcc5mw/v17/grand-griffon-vendeen">
               <h3 class="name">그랜드 그리폰 방뎅</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/greyhound.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/pj8xrnUBRYZmsWpc45kL/v19/greyhound">
               <h3 class="name">그레이 하운드</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/gascony.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Jj85rnUBRYZmsWpcmJoP/v19/small-blue-gascony">
               <h3 class="name">그레이트 가스코니 블루</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/great-swiss-mountain-dog.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/pT8xrnUBRYZmsWpc05mW/v19/great-swiss-mountain-dog">
               <h3 class="name">그레이트 스위스 마운틴 독</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/great-anglo-french-tricolor-hound.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/oD8xrnUBRYZmsWpce5nW/v17/great-anglo-french-tricolor-hound">
               <h3 class="name">그레이트 앵글로-프렌치 트라이컬러 하운드</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/great-anglo-french-white-and-black-hound.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/oT8xrnUBRYZmsWpclJkB/v17/great-anglo-french-white-and-black-hound">
               <h3 class="name">그레이트 앵글로-프렌치 화이트 앤드 블랙 하운드</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/great-anglo-french-white-and-orange-hound.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/oj8xrnUBRYZmsWpcoJnz/v17/great-anglo-french-white-and-orange-hound">
               <h3 class="name">그레이트 앵글로-프렌치 화이트 앤드 오렌지 하운드</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/greenland.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/qD8xrnUBRYZmsWpc_Zn1/v19/greenland-dog">
               <h3 class="name">그린란드견</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dalmatian.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Zj8srnUBRYZmsWpcCZky/v21/dalmatian">
               <h3 class="name">달마시안</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dutch-shepherd.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/dD8srnUBRYZmsWpc05kr/v19/dutch-shepherd-dog">
               <h3 class="name">더치 셰퍼드 독</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dogo-argentino.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/bj8srnUBRYZmsWpcbZlv/v21/dogo-argentino">
               <h3 class="name">도고 아르헨티노</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/deutsch-stichelhaar.do"><img
               class="dog" alt="Deutsch stichelhaar black and white"
               loading="lazy" width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/cD8srnUBRYZmsWpckJml/v19/deutsch-stichelhaar">
               <h3 class="name">도이치 스티첼할</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/drentsche-partridge.do"><img
               class="dog" alt="Drentsche partridge dog black and white"
               loading="lazy" width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/cT8srnUBRYZmsWpcqJml/v21/drentsche-partridge-dog">
               <h3 class="name">드렌츠허 파트레이스</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/deerhound.do"><img
               class="dog" alt="black and white deerhound adult"
               loading="lazy" width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/bD8srnUBRYZmsWpcQJnw/v19/deerhound">
               <h3 class="name">디어하운드</h3></a></li>

         <!-- 나머지 품종들도 같은 방식으로 추가 -->
      </ul>
   </div>
 
   <div id="textsetting">
      <h1 id="category1" align="center">초대형</h1>
    
      <ul class="dog-grid">
         <li><a href="${contextPath}/dog/dog_type/great-dane-cover.do"><img
               class="dog" alt="Great Dane adult in black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/DEAMJ5ABRYZmsWpcxS8L/v1/great-dane-cover">
               <h3 class="name">그레이트 데인</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/neapolitan-mastiff.do"><img
               class="dog" alt="Neopolitan Mastiff adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/7j82rnUBRYZmsWpceZkr/v17/neapolitan-mastiff">
               <h3 class="name">나폴리탄 마스티프</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/newfoundland.do"><img
               class="dog" alt="Russian adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/7z82rnUBRYZmsWpcfZnY/v17/newfoundland">
               <h3 class="name">뉴펀들랜드</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/dogue-de-bordeaux.do"><img
               class="dog" alt="Dogue de Bordeaux black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/bz8srnUBRYZmsWpchZn0/v21/dogue-de-bordeaux">
               <h3 class="name">도그 드 보르도</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/landseer.do"><img
               class="dog" alt="Landseer adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/3T81rnUBRYZmsWpceJmX/v17/landseer">
               <h3 class="name">랜시어</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/leonberger.do"><img
               class="dog" alt="Leonberger adult in black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/4D81rnUBRYZmsWpcnpnw/v19/leonberger">
               <h3 class="name">레온베르거</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/rottweiller.do"><img
               class="dog" alt="rottweiller adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Wj88rnUBRYZmsWpclZqv/v19/rottweiller">
               <h3 class="name">로트바일러</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/mastiff.do"><img
               class="dog" alt="mastiff adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/6D82rnUBRYZmsWpcDpkn/v17/mastiff">
               <h3 class="name">마스티프</h3></a></li>

         <li><a
            href="${contextPath}/dog/dog_type/bernese-mountain.do"><img
               class="dog" alt="bernese-mountain-dog adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Mj8frnUBRYZmsWpcxplY/v21/bernese-mountain-dog">
               <h3 class="name">버니즈 마운틴 독</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/bullmastiff.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Sz8hrnUBRYZmsWpcR5nF/v17/bullmastiff">
               <h3 class="name">불마스티프</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/broholmer.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/SD8hrnUBRYZmsWpcIZmN/v19/broholmer">
               <h3 class="name">브로홀머</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/bernard.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/LT85rnUBRYZmsWpc05rx/v21/st-bernard">
               <h3 class="name">세인트 버나드</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/spanish.do"><img
               class="dog" alt="Don Sphynx adult black and white" loading="lazy"
               width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/Kz85rnUBRYZmsWpcvJqK/v23/spanish-mastiff">
               <h3 class="name">스패니시 마스티프</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/irish.do"><img
               class="dog" alt="Deutsch stichelhaar black and white"
               loading="lazy" width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/vz8zrnUBRYZmsWpcXpnG/v17/irish-wolfhound">
               <h3 class="name">아이리시 울프하운드</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/estrela.do"><img
               class="dog" alt="Drentsche partridge dog black and white"
               loading="lazy" width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/fj8trnUBRYZmsWpcUZmS/v19/estrela-mountain-dog">
               <h3 class="name">에스트렐라 캐틀 독</h3></a></li>

         <li><a href="${contextPath}/dog/dog_type/kangal.do"><img
               class="dog" alt="black and white deerhound adult"
               loading="lazy" width="4" height="3"
               src="https://cdn.royalcanin-weshare-online.io/zT80rnUBRYZmsWpcbZmD/v19/kangal-shepherd-dog">
               <h3 class="name">캉갈 셰퍼드 독</h3></a></li>

         <!-- 나머지 품종들도 같은 방식으로 추가 -->
      </ul>
   </div>
   
   <br>
   <br>
   <br>

</body>

</html>