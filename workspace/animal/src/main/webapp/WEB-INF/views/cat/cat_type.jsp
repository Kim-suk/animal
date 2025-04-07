<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>묘종</title>
</head>

<style>
#textsetting {
	text-align: left;
}

#category1 {
	margin-bottom: 25px; /* h2 아래쪽 여백 */
}

.cat-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr); /* 3열 그리드 */
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
</style>
<body>
	<div id="textsetting">
		<h2 id=category1>단모종</h2>
		<input type="text" name="search" id="search-box" placeholder="품종이름">

		<ul class="cat-grid">
			<li><img alt="Devon Rex adult in black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/hz-_zoEBRYZmsWpcx97y/v13/devon-rex">
				<p>데본렉스</p></li>

			<li><img alt="Don Sphynx adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/iD-_zoEBRYZmsWpc097M/v13/don-sphynx">
				<p>돈스코이</p></li>

			<li><img alt="Russian adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/QlbBzoEBBKJuub5q1OIx/v13/russian">
				<p>러시안 블루</p></li>

			<li><img alt="Manx adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/jj_AzoEBRYZmsWpcfN6t/v13/920233">
				<p>맹크스</p></li>

			<li><img alt="Munchkin adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/NlbAzoEBBKJuub5qg-J4/v13/munchkin">
				<p>먼치킨</p></li>

			<li><img alt="Burmese adult black and white" loading="lazy"
				width="4" height="3"
				src="https://cdn.royalcanin-weshare-online.io/8-fQzoEBaPOZra8qy9-u/v11/burmese">
				<p>버마고양이</p></li>
			<!-- 나머지 품종들도 같은 방식으로 추가 -->
		</ul>

	</div>
</body>
</html>