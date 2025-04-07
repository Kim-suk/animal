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
#textsetting {
	text-align: left;
}

#category1 {
	margin-bottom: 25px; /* h2 아래쪽 여백 */
}

.dog-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr); /* 3열 그리드 */
	gap: 20px; /* 항목 사이 간격 */
	list-style: none;
	padding: 0;
	width: 1200px;
	margin-top: 30px;
	margin-left: 100px;
}

.dog:hover {
	transform: scale(1.03);
}

.name {
	color: rgb(204, 0, 204);
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
    display: flex
;
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
.efaSlz {
    display: block;
    height: 0.75rem;
    width: 0.75rem;
}

.isfXxF {
    font-size: 20px;
    line-height: 0.875rem;
    display: block;
    font-weight: 800;
    color: rgb(68, 68, 68);
    text-decoration: none;
    padding-bottom: 0.125rem;
    border-bottom: 0.0625rem solid transparent;
    transition: 0.2s ease-in;
}

.isfXxF:hover {
    color: rgb(226, 0, 26);
    border-bottom-color: rgb(226, 0, 26);
}
</style>

<body>



	<div data-qa="breadcrumbs" class="sc-58202797-0 iJqTVc">
		<nav>
			<ol class="sc-58202797-1 hmSxNI">
				<li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
					href="${contextPath }/" class="sc-58202797-4 isfXxF"
					data-qa="breadcrumb-item-text">홈페이지</a>
				<svg preserveAspectRatio="xMidYMid meet" focusable="false"
						aria-hidden="true" viewBox="0 0 32 32"
						class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
						<path
							d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
							data-name="Arrow Right"></path></svg></li>
				<li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
					href="${contextPath }/dog/dog_type.do" class="sc-58202797-4 isfXxF"
					data-qa="breadcrumb-item-text">반려견에 대한 모든 것</a>
				<svg preserveAspectRatio="xMidYMid meet" focusable="false"
						aria-hidden="true" viewBox="0 0 32 32"
						class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
						<path
							d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
							data-name="Arrow Right"></path></svg></li>
				<li data-qa="breadcrumb-item" class="sc-58202797-2 gBDxJK"><a
					href="${contextPath }/dog/dog_type.do" class="sc-58202797-4 isfXxF"
					data-qa="breadcrumb-item-text">품종 라이브러리</a>
				<svg preserveAspectRatio="xMidYMid meet" focusable="false"
						aria-hidden="true" viewBox="0 0 32 32"
						class="sc-a22c687d-0 efaSlz sc-58202797-3 ghsRDc">
						<path
							d="M12.59 27a1 1 0 01-.66-.25 1 1 0 01-.1-1.41l7.49-8.58a1.23 1.23 0 000-1.52l-7.49-8.58a1 1 0 011.51-1.32l7.49 8.59a3.21 3.21 0 010 4.14l-7.49 8.59a1 1 0 01-.75.34z"
							data-name="Arrow Right"></path></svg></li>
			</ol>
		</nav>
	</div>

	<div id="textsetting">
		<h2 id=category1>소형견</h2>
		<input type="text" name="search" id="search-box" placeholder="품종이름">

		<ul class="dog-grid">
			<li><a href="${contextPath}/dog/dog_type/chihuahua.do"> <img
					class="dog" alt="Devon Rex adult in black and white" loading="lazy"
					width="4" height="3"
					src="https://cdn.royalcanin-weshare-online.io/WT8irnUBRYZmsWpcF5lV/v17/chihuahua">
					<h3 class="name">치와와</h3>
			</a></li>

			<li><img class="dog" alt="Don Sphynx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/5T81rnUBRYZmsWpc7Jnx/v17/maltese">
				<h3 class="name">말티즈</h3></li>

			<li><img class="dog" alt="Russian adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Qj87rnUBRYZmsWpcGJq3/v17/pomenarian">
				<h3 class="name">포메라니안</h3></li>

			<li><img class="dog" alt="Manx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/RD87rnUBRYZmsWpcOZqm/v25/poodle">
				<h3 class="name">푸들</h3></li>

			<li><img class="dog" alt="Munchkin adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8UCzEZABRYZmsWpceC4H/v1/yorkshire-terrier-cover">
				<h3 class="name">요크셔테리어</h3></li>

			<li><img class="dog" alt="Burmese adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/aj8srnUBRYZmsWpcMZkx/v19/dashchund-smotth-haired">
				<h3 class="name">닥스훈트</h3></li>

			<li><img class="dog" alt="Burmese adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8ujYEZABaPOZra8qojDO/v1/shih-tzu-cover">
				<h3 class="name">시츄</h3></li>

			<!-- 나머지 품종들도 같은 방식으로 추가 -->
		</ul>

	</div>

	<div id="textsetting">
		<h2 id=category1>중형견</h2>
		<input type="text" name="search" id="search-box" placeholder="품종이름">

		<ul class="dog-grid">
			<li><img class="dog" alt="Devon Rex adult in black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Mz8frnUBRYZmsWpc45kR/v19/bichon-frise">
				<h3 class="name">비숑 프리제</h3></li>

			<li><img class="dog" alt="Don Sphynx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Fz84rnUBRYZmsWpc6prA/v23/schnauzer">
				<h3 class="name">슈나우저</h3></li>

			<li><img class="dog" alt="Russian adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/PD8grnUBRYZmsWpcZJnt/v21/border-collie">
				<h3 class="name">보더콜리</h3></li>

			<li><img class="dog" alt="Manx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/iT8trnUBRYZmsWpc2Jmn/v19/french-bulldog">
				<h3 class="name">프렌치 불독</h3></li>

			<li><img class="dog" alt="Munchkin adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/IT85rnUBRYZmsWpcTppa/v23/siberian-husky">
				<h3 class="name">시베리안 허스키</h3></li>

			<li><img class="dog" alt="Burmese adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Y-idzYsBaPOZra8q_BN7/v9/beagle-breed-arrows">
				<h3 class="name">비글</h3></li>

			<li><img class="dog" alt="Burmese adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/CT84rnUBRYZmsWpcIZru/v19/welsh-corgi-pembroke">
				<h3 class="name">웰시코기</h3></li>

			<!-- 나머지 품종들도 같은 방식으로 추가 -->
		</ul>
	</div>

	<div id="textsetting">
		<h2 id=category1>대형견</h2>
		<input type="text" name="search" id="search-box" placeholder="품종이름">

		<ul class="dog-grid">
			<li><img class="dog" alt="Devon Rex adult in black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/1FcEzosBBKJuub5q5Q9N/v1/labrador-retriever-breed-arrows">
				<h3 class="name">래브라도 리트리버</h3></li>

			<li><img class="dog" alt="Don Sphynx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/1z81rnUBRYZmsWpcEpn2/v19/korean-jindo-dog">
				<h3 class="name">진돗개</h3></li>

			<li><img class="dog" alt="Russian adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/Mj8frnUBRYZmsWpcxplY/v21/bernese-mountain-dog">
				<h3 class="name">버니즈 마운틴 독</h3></li>

			<li><img class="dog" alt="Manx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/bT8srnUBRYZmsWpcW5m-/v23/dobermann">
				<h3 class="name">도베르만</h3></li>

			<li><img class="dog" alt="Don Sphynx adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/NT8LXHwBRYZmsWpc-MKQ/v5/bp-lot-4-samoyed-da-vinci">
				<h3 class="name">사모예드</h3></li>

			<li><img class="dog" alt="Burmese adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/lj8wrnUBRYZmsWpc2Jm6/v17/german-shepherdr">
				<h3 class="name">저먼 셰퍼드</h3></li>

			<li><img class="dog" alt="Burmese adult black and white"
				loading="lazy" width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/yUCxzYsBRYZmsWpc5BK4/v1/komondor-breed-arrows">
				<h3 class="name">코몬돌</h3></li>

			<!-- 나머지 품종들도 같은 방식으로 추가 -->
		</ul>
	</div>
</body>
</html>


