<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>품종</title>

</head>
<!-- jQuery 라이브러리 로드 (필수) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- bxSlider 플러그인 로드 (필수) -->
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>

<!-- bxSlider CSS (필수) -->
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css">
<script type="module"
   src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js">
    </script>

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
   
</script>

<style>

   body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f0f0f0;
      margin: 60px auto;
      margin-right:100px;
    }

 model-viewer {
      width: 400px;
      height: 400px;
      background: white;
      border-radius: 20px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }
    
#textsetting {
   text-align: left;
}

#category1 {
   margin-bottom: 25px; /* h2 아래쪽 여백 */
   align:center;
}

 .cat-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      gap: 40px;
      padding: 50px;
      margin-top: 150px; /* 헤더 높이만큼 추가 */
      background-color: #f8f8f8;
      border-radius: 20px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      max-width: 1200px;
      margin: 60px auto;
    } 

.cat-container .cat-model {
   width: 400px;
   height: 400px;
   flex-shrink: 0;
}

.cat-container .cat-text {
   max-width: 500px;
   font-family: 'Arial', sans-serif;
}

.cat-container .cat-text h1 {
   font-size: 32px;
   margin-bottom: 20px;
}

.cat-container .cat-text p {
   font-size: 18px;
   line-height: 1.6;
   color: #333;
}

.cat-grid {
   display: grid;
   grid-template-columns: repeat(4, 1fr); /* 3열 그리드 */
   gap: 20px; /* 항목 사이 간격 */
   list-style: none;
   padding: 0;
   width: 1200px;
   margin-top: 30px;
   margin-left: 100px;
}

.cat:hover {
   transform: scale(1.03);
}

.name {
   color: rgb(204, 0, 204);
}

.cat-grid li {
   text-align: center;
   border: 1px solid #ddd;
   padding: 10px;
   background-color: #f9f9f9;
   border-radius: 10px;
}

.cat-grid img {
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
   background-color:black;
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

</style>

<script>
document.addEventListener("DOMContentLoaded", function() {
	  const searchBox = document.getElementById("search-box");
	  const catItems = document.querySelectorAll(".cat-grid li");
	  const noResultsMessage = document.getElementById("no-results-message"); // "검색 결과 없음" 메시지

	  searchBox.addEventListener("keyup", function() { // 실시간 검색
	    const keyword = searchBox.value.toLowerCase(); // 대소문자 구분 없이 처리
	    let hasResults = false; // 결과가 있는지 확인할 변수

	    catItems.forEach(function(item) {
	      const catNameElement = item.querySelector("p");
	      const catName = catNameElement.textContent.toLowerCase();

	      if (catName.includes(keyword)) {
	        item.style.display = "block";  // 검색어가 포함된 항목은 표시
	        hasResults = true;  // 결과 있음
	      } else {
	        item.style.display = "none";  // 검색어가 포함되지 않은 항목은 숨김
	      }
	    });

	    // 검색 결과가 없으면 "검색 결과 없음" 메시지 표시
	    if (!hasResults && keyword !== "") {
	      noResultsMessage.style.display = "block";
	    } else {
	      noResultsMessage.style.display = "none";
	    }
	  });
	});
    
</script>


    

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
               href="${contextPath }/cat/cat_about.do" class="sc-58202797-4 isfXxF"
               data-qa="breadcrumb-item-text">반려묘에 대한 모든 것</a> <svg
                  preserveAspectRatio="xMidYMid meet" focusable="false"
                  aria-hidden="true" viewBox="0 0 32 32"
                  class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
                  <path
                     d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
                     data-name="Arrow Right"></path></svg></li>
            <li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
               href="${contextPath }/cat/cat_type.do" class="sc-58202797-4 isfXxF"
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
  <!-- Main 컨텐츠 영역 -->
  <main>
 
    <div class="cat-container">
      <!-- 3D 모델뷰어 -->
      <model-viewer
        src="${pageContext.request.contextPath}/resources/model/model.glb"
        alt="3D 고양이" auto-rotate camera-controls ar autoplay exposure="1"
        shadow-intensity="1" class="cat-model">
      </model-viewer>

      <!-- 설명 텍스트 -->
      <div class="cat-text">
  <h1>묘종에 대해<br>찾아보세요.</h1>
  <p>
    50여 종이 넘는 고양이 품종의 특징과 요구사항에 대한<br>
    전문적인 정보를 확인하세요. 고양이 품종에 따라<br>
    필요로 하는 환경과 케어가 다를 수 있습니다.
  </p>

  <!-- 검색박스 위치 이동 -->
  <input type="text" id="search-box" placeholder="품종 이름을 입력하세요">
</div>
  </main>
</body>

<div id="textsetting">
  <h2 id="category1">단모종</h2>
		<ul class="cat-grid">
			<li><a href="${contextPath}/cat/cat_type/devonrex">
			<img alt="Devon Rex adult in black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/hz-_zoEBRYZmsWpcx97y/v13/devon-rex">
				<p>데본렉스</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/donsphynx">
			<img alt="Don Sphynx adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/iD-_zoEBRYZmsWpc097M/v13/don-sphynx">
				<p>돈스코이</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/russian">
			<img alt="Russian adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/QlbBzoEBBKJuub5q1OIx/v13/russian">
				<p>러시안 블루</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/manx">
			<img alt="Manx adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/jj_AzoEBRYZmsWpcfN6t/v13/920233">
				<p>맹크스</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/munchkin">
			<img alt="Munchkin adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/NlbAzoEBBKJuub5qg-J4/v13/munchkin">
				<p>먼치킨</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/burmese">
			<img alt="Burmese adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8-fQzoEBaPOZra8qy9-u/v11/burmese">
				<p>버마고양이</p></a></li>
			
			<li><a href="${contextPath}/cat/cat_type/burmilla">
			<img alt="Burmilla adult black and white" loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/9OfQzoEBaPOZra8q5t_t/v11/burmilla">
				<p>버밀라</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/bengale">
			<img alt="벵갈 어덜트 흑백 사진"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/7-fQzoEBaPOZra8qR99K/v11/bengale">
				<p>벵갈</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/bombay">
			<img alt="Bombay adult in black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8OfQzoEBaPOZra8qYd_-/v11/bombay">
				<p>봄베이</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/british-shorthair">
			<img alt="브리티시 숏헤어 어덜트 흑백 사진"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8ufQzoEBaPOZra8qqN-1/v13/british-shorthair">
				<p>브리티시 숏헤어</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/seychellois">
			<img alt="Seychellois adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/SlbCzoEBBKJuub5qp-Jk/v13/seychellois">
				<p>세이셸루아</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/sokoke">
			<img alt="Sokoke adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/T1bDzoEBBKJuub5qMOJy/v13/sokoke">
				<p>소코케</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/snowshoe">
			<img alt="Snowshoe adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/TlbDzoEBBKJuub5qIOJj/v13/snowshoe">
				<p>스노우슈</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/sphynx">
			<img alt="스핑크스 어덜트 흑백 사진"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/iD-_zoEBRYZmsWpc097M/v13/don-sphynx">
				<p>스핑크스</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/siamese">
			<img alt="시암고양이 어덜트 흑백 사진" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/S1bCzoEBBKJuub5qyuKe/v13/siamese">
				<p>시암고양이</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/singapura">
			<img alt="Singapura adult black and white"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/TVbCzoEBBKJuub5q_eKx/v13/singapura">
				<p>싱가푸라</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/american-bobtail">
			<img alt="American bobtail adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/4-fOzoEBaPOZra8qy9_O/v11/american-bobtail">
				<p>아메리칸 밥테일</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/american-shorthair">
			<img alt="아메리칸 숏헤어 어덜트 흑백 사진"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/lGno1WoBG95Xk-RBn_eJ/v9/bc1h-hub-american-shorthair-adult-black-and-white">
				<p>아메리칸 숏헤어</p></a></li>
				
					
			<li><a href="${contextPath}/cat/cat_type/wirehair">
			<img alt="American wirehair adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/6-fPzoEBaPOZra8qwd_r/v11/american-wirehair">
				<p>아메리칸 와이어 헤어</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/curl">
			<img alt="American curl adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/6OfPzoEBaPOZra8qXN_c/v13/american-curl-longhair">
				<p>아메리칸 컬</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/asian">
			<img alt="Asian adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/7OfPzoEBaPOZra8q5d8F/v11/asian">
				<p>아시안</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/oriental">
			<img alt="Oriental adult in black and white"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/PFbBzoEBBKJuub5qMOIf/v13/oriental">
				<p>오리엔탈</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/australian">
			<img alt="Australian Mist adult in black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/7efQzoEBaPOZra8qCN8N/v11/australian-mist">
				<p>오스트레일리안 미스트</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/ocicat">
			<img alt="Ocicat adult black and white"   loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/O1bBzoEBBKJuub5qFOLG/v13/ocicat">
				<p>오시캣</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/egyptian">
			<img alt="Egyptian mau black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/L1a_zoEBBKJuub5q1-Ks/v15/egyptian-mau">
				<p>이집션 마우</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/german">
			<img alt="German Rex adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/ij_AzoEBRYZmsWpcA959/v13/german-rex">
				<p>저먼 렉스</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/khao">
			<img alt="Khao manee adult black and white"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/MlbAzoEBBKJuub5qJuJm/v13/khao-mannee">
				<p>카오 마니</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/cornish">
			<img alt="Cornish rex black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/hj-_zoEBRYZmsWpcqd4j/v13/cornish-rex">
				<p>코니시 렉스</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/korat">
			<img alt="Cornish rex black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/jD_AzoEBRYZmsWpcPd6p/v13/korat">
				<p>코랏</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/bobtail">
			<img alt="Kurilian bobtail adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/jT_AzoEBRYZmsWpcXN7d/v13/kurilean-shorthair-bobtail">
				<p>쿠리리안 밥테일</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/thai">
			<img alt="Thai adult black and white"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/5udrpH0BaPOZra8qMcuu/v9/bp-lot-8-thai-davinci">
				<p>타이</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/tonkinese">
			<img alt="Tonkinese adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/5OfOzoEBaPOZra8q4N-s/v13/tonkinese">
				<p>톤키니즈</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/peterbald">
			<img alt="Peterbald adult black and white"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/PlbBzoEBBKJuub5qa-Ib/v15/peterbald">
				<p>피터볼드</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/pixiebob">
			<img alt="Pixiebob adult black and white"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/P1bBzoEBBKJuub5qieL6/v13/pixie-bob">
				<p>픽시 밥</p></a></li>
					
			<li><a href="${contextPath}/cat/cat_type/havana">
			<img alt="Havana adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/MVbAzoEBBKJuub5qC-Je/v13/havana">
				<p>하바나</p></a></li>
				
			<!-- 나머지 품종들도 같은 방식으로 추가 -->
		</ul>

	</div>
	
	<div id="textsetting">
		<h2 id=category1>중모종</h2>
		<ul class="cat-grid">
			<li><a href="${contextPath}/cat/cat_type/neva">
			<img alt="Neva masquerade adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/OVbAzoEBBKJuub5q3eLn/v13/neva-masquerade">
				<p>네바 마스커레이드</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/norwegian">
			<img alt="노르웨이 숲 성묘 흑백 사진"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/OlbAzoEBBKJuub5q9eKh/v13/norwegian">
				<p>노르웨이 숲</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/ragamuffin">
			<img alt="Ragamuffin adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/QFbBzoEBBKJuub5qmeLQ/v13/ragamuffin">
				<p>라가머핀</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/laperm">
			<img alt="LaPerm adult in black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/NFbAzoEBBKJuub5qZOKB/v15/laperm">
				<p>라팜</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/ragdoll">
			<img alt="랙돌 흑백 사진" loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/QVbBzoEBBKJuub5quOLG/v13/ragdoll">
				<p>랙돌</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/maine">
			<img alt="메인쿤 어덜트 흑백 사진"  loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/_ejlJpABaPOZra8qKTAm/v3/maine-coon-cover">
				<p>메인쿤</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/birman">
			<img alt="Sacred birman adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Q1bBzoEBBKJuub5q8-KK/v13/sacred-birman">
				<p>버만</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/chartreux">
			<img alt="샤르트뢰" loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/9efRzoEBaPOZra8qBt98/v11/chartreux">
				<p>샤르트뢰</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/selkirk">
			<img alt="Selkirk rex adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/1eeYUX0BaPOZra8qc8iQ/v7/bp-lot-6-selkirk-rex-longhair-davinci">
				<p>셀커크 렉스</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/somali">
			<img alt="소말리" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/UFbDzoEBBKJuub5qP-Ld/v13/somali">
				<p>소말리</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/scottish">
			<img alt="Scottish straight adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/RlbCzoEBBKJuub5qSeI1/v13/scottish-straight">
				<p>스코티시 스트레이트</p></a></li>
				
				<li><a href="${contextPath}/cat/cat_type/fold">
				<img alt="Scottish Fold" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/RVbCzoEBBKJuub5qKeLx/v13/scottish-fold">
				<p>스코티시 폴드</p></a></li>
				
				<li><a href="${contextPath}/cat/cat_type/abyssinian">
				<img alt="Abyssinian adult black and white"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/OFbAzoEBBKJuub5qvOKw/v11/abyssinian">
				<p>아비시니안</p></a></li>
	
			<li><a href="${contextPath}/cat/cat_type/exotic">
			<img alt="Exotic shorthair black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/MFa_zoEBBKJuub5q8uLz/v13/exotic-shorthair">
				<p>엑조틱 숏헤어</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/japanese">
			<img alt="Japanese bobtail adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/iz_AzoEBRYZmsWpcHd74/v13/japanese-bobtail">
				<p>재패니즈 밥테일</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/savannah">
			<img alt="Cornish rex black and white" loading="lazy"
				width="4" height="3"
				 src="https://cdn.royalcanin-weshare-online.io/RFbCzoEBBKJuub5qEuLc/v13/savannah">
				<p>코니시 렉스</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/cymric">
			<img alt="Cymric adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Lla_zoEBBKJuub5quOJq/v13/cymric">
				<p>킴릭</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/turkish">
			<img alt="Turkish van adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8edzpH0BaPOZra8qe8te/v9/bp-lot-8-turkish-van-davinci">
				<p>터키쉬 반</p></a></li>
				
			<li><a href="${contextPath}/cat/cat_type/angora">
			<img alt="Turkish angora adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/7OdvpH0BaPOZra8qlssp/v7/bp-lot-8-turkish-angora-davinci">
				<p>터키쉬 앙고라</p></a></li>
		</ul>
	
	<div id="textsetting">
		<h2 id=category1>장모종</h2>
		<ul class="cat-grid">
			<li><a href="${contextPath}/cat/cat_type/balinese">
			<img alt="Balinese adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/7ufQzoEBaPOZra8qMN9M/v13/balinese">
				<p>발리니즈</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/longhair">
			<img alt="British Longhair adult in black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8efQzoEBaPOZra8qid-q/v11/british-longhair">
				<p>브리티쉬 롱헤어</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/siberian">
			<img alt="시베리안 어덜트 흑백 사진"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/TFbCzoEBBKJuub5q3eLL/v13/siberian">
				<p>시베리안</p></a></li>

			<li><a href="${contextPath}/cat/cat_type/persian">
			<img alt="페르시안 어덜트의 흑백 사진"  loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/PVbBzoEBBKJuub5qS-L1/v13/persian">
				<p>페르시안</p></a></li>
		</ul>
	</div>
	
	
 <p id="no-results-message" style="display: none;">검색 결과가 없습니다.</p>
 </div>
  <br>
   <br>
   <br>
</body>
</html>