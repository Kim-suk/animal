<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
	
<!DOCTYPE html>


<html>
<head>
<script type="module"
   src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js">
    </script>
<meta charset="UTF-8">
<title>묘종</title><script>

  document.getElementById("search-box").addEventListener("input", function() {
    const keyword = this.value.toLowerCase();
    const cats = document.querySelectorAll(".cat-grid li");

    cats.forEach(cat => {
      const text = cat.textContent.toLowerCase();
      if (text.includes(keyword)) {
        cat.style.display = "block";
      } else {
        cat.style.display = "none";
      }
    });
  });
</script>

</head>

<body>

<style>

#textsetting {
	text-align: left;
}

#category1 {
	margin-bottom: 25px; /* h2 아래쪽 여백 */
}

.cat-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr); /* 4열 그리드 */
	gap: 20px; /* 항목 사이 간격 */
	list-style: none;
	padding: 0;
	width: 1200px;
	margin-top: 30px;
	margin-left: 50px;
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

 .cat-container {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 40px;
    padding: 30px;
    background-color: #f8f8f8;
    border-radius: 20px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    max-width: 1000px;
    margin: 50px auto;
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

  body {
        font-family: sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f0f0f0;
      }
      model-viewer {
        width: 500px;
        height: 500px;
        background: white;
        border-radius: 20px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
      }
</style>

    <script>
        function filterBreeds() {
            const keyword1 = document.getElementById('search-box').value.toLowerCase();
            const keyword2 = document.getElementById('keyword-search').value.toLowerCase();

            const keyword = keyword1 || keyword2;

            const items = document.querySelectorAll('.breed-item');

            items.forEach(item => {
                const title = item.querySelector('h3').innerText.toLowerCase();
                if (title.includes(keyword)) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        }

        document.getElementById('search-box').addEventListener('input', filterBreeds);
        document.getElementById('keyword-search').addEventListener('input', filterBreeds);
    </script>
    

<div class="cat-container">
  <!-- 3D 고양이 모델 -->
 <model-viewer
      src="${pageContext.request.contextPath}/resources/model/model.glb"
      alt="3D 고양이" auto-rotate camera-controls ar autoplay exposure="1"
      shadow-intensity="1">
   </model-viewer>


  <!-- 설명 텍스트 -->
  <div class="cat-text">
    <h1>묘종에 대해<br>찾아보세요.</h1>
    <p>
      50여 종이 넘는 고양이 품종의 특징과 요구사항에 대한<br>
      전문적인 정보를 확인하세요. 고양이 품종에 따라<br>
      필요로 하는 환경과 케어가 다를 수 있습니다.
    </p>
  </div>
</div>
<div id="textsetting">
  <h2 id="category1">단모종</h2>
  <input type="text" id="search-box" placeholder="품종 이름을 입력하세요">
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
		<input type="text" name="search" id="search-box" placeholder="품종이름">

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
	</div>
	<div id="textsetting">
		<h2 id=category1>장모종</h2>
		<input type="text" name="search" id="search-box" placeholder="품종이름">

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


</body>
</html>