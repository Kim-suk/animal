<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>네비게이션 바</title>

<!-- jQuery 및 Bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
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

<style>
/* 네비게이션 바 스타일 */
/* 네비게이션 바 (배너 아래 고정) */
.navbar {
	position: fixed;
	top: 80px; /* 배너 아래 위치 */
	left: 0;
	width: 100%;
	background-color: #f8f9fa;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	height: 60px;
	display: flex;
	align-items: center;
	z-index: 999; /* 배너보다 아래에 배치 */
}

.navbar-nav {
	display: flex;
	justify-content: center;
	width: 100%;
	height: 100%;
	align-items: center;
}

.nav-item {
	position: relative;
	padding: 0 20px;
	font-size: 18px;
	font-weight: bold;
	cursor: pointer;
	height: 100%; /* 높이 통일 */
	display: flex;
	align-items: center; /* 중앙 정렬 */
}

.nav-link {
	color: #333;
	transition: color 0.3s ease-in-out;
	text-decoration: none;
	line-height: 60px; /* 높이 맞추기 */
}

.nav-link:hover {
	color: #007bff;
}

/* 서브메뉴 스타일 */
.submenu {
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	width: 180px;
	border-radius: 5px;
	padding: 0;
	z-index: 1000;
}

.submenu li {
	list-style: none;
	padding: 12px 20px;
	font-size: 16px;
	border-bottom: 1px solid #ddd;
	text-align: left;
}

.submenu li:last-child {
	border-bottom: none;
}

.submenu li a {
	text-decoration: none;
	color: #333;
	display: block;
	transition: background 0.3s ease-in-out;
}

.submenu li a:hover {
	text-decoration: none;
	color: black;
}

/* 반응형 스타일 */
@media ( max-width : 768px) {
	.navbar-nav {
		flex-direction: column;
		align-items: center;
	}
	.nav-item {
		width: 100%;
		text-align: center;
	}
	.submenu {
		position: static;
		width: 100%;
		display: none;
		box-shadow: none;
	}
}

.top-links {
	position: fixed;
	top: 10px;
	right: 10px;
	display: flex;
	flex-direction: row; /* 세로 정렬 */
	gap: 10px; /* 요소 간격 */
	z-index: 2000;
}

.common {
	text-decoration: none;
	color: black;
}

.banner {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 80px;
	background-color: white;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
	display: flex;
	align-items: center;
	justify-content: center;
	z-index: 1000; /* 최상단 배치 */
}

.banner img {
	height: 100%; /* 배너 높이에 맞게 이미지 크기 조정 */
	object-fit: contain; /* 이미지 비율 유지 */
}

/* 본문이 네비게이션에 가려지지 않도록 여백 추가 */
body {
	margin-top: 140px; /* 배너(80px) + 네비게이션(60px) 높이만큼 공간 확보 */
}
</style>
</head>

<body>
	<div class="banner">
		<img
			src="${pageContext.request.contextPath}/resources/image/banner.png">
	</div>
	<div class="top-links">
		<a href="/animal/member/loginForm.do" class="common">로그인</a> <a
			href="/animal/member/joinMember.do" class="common">회원가입</a>
	</div>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="${contextPath }/main.do">홈</a></li>
				<li class="nav-item"><a class="nav-link" href="hospital.do">동물병원</a></li>

				<li class="nav-item">고양이
					<ul class="submenu">
						<li><a href="${contextPath }/cat/cat_type.do">묘종</a></li>
						<li><a href="${contextPath }/cat/cat_kitten.do">어린 고양이</a></li>
						<li><a href="${contextPath }/cat/cat_think.do">고양이를 기를까
								고민 중이신가요?</a></li>
						<li><a href="${contextPath }/cat/cat_all.do">고양이에 대한 모든 것</a></li>
					</ul>
				</li>

				<li class="nav-item">강아지
					<ul class="submenu">
						<li><a href="${contextPath }/dog/dog_type.do">품종</a></li>
						<li><a href="${contextPath }/dog/dog_puppy.do">어린 강아지</a></li>
						<li><a href="${contextPath }/dog/dog_think.do">강아지를 기를까
								고민 중이신가요?</a></li>
						<li><a href="${contextPath }/dog/dog_all.do">강아지에 대한 모든 것</a></li>
					</ul>
				</li>

				<li class="nav-item">게시판
					<ul class="submenu">
						<li><a href="#">고양이</a></li>
						<li><a href="#">강아지</a></li>
						<li><a href="#">자유게시판</a></li>
					</ul>
				</li>

				<li class="nav-item">강아지 용품
					<ul class="submenu">
						<li><a href="${contextPath }/dog_product/all.do">전체</a></li>
						<li><a href="${contextPath }/dog_product/feed.do">사료</a></li>
						<li><a href="${contextPath }/dog_product/treat.do">간식</a></li>
						<li><a href="${contextPath }/dog_product/poop.do">배변용품</a></li>
						<li><a href="${contextPath }/dog_product/carrier.do">이동장</a></li>
						<li><a href="${contextPath }/dog_product/toy.do">장난감</a></li>
						<li><a href="${contextPath }/dog_product/bath.do">목욕용품</a></li>
						<li><a href="${contextPath }/dog_product/house.do">하우스</a></li>
						<li><a href="${contextPath }/dog_product/dish.do">식기</a></li>
					</ul>
				</li>

				<li class="nav-item">고양이 용품
					<ul class="submenu">
						<li><a href="${contextPath }/cat_product/all.do">전체</a></li>
						<li><a href="${contextPath }/cat_product/feed.do">사료</a></li>
						<li><a href="${contextPath }/cat_product/treat.do">간식</a></li>
						<li><a href="${contextPath }/cat_product/sand.do">모래</a></li>
						<li><a href="${contextPath }/cat_product/carrier.do">이동장</a></li>
						<li><a href="${contextPath }/cat_product/toy.do">장난감</a></li>
						<li><a href="${contextPath }/cat_product/bath.do">목욕용품</a></li>
						<li><a href="${contextPath }/cat_product/house.do">하우스</a></li>
						<li><a href="${contextPath }/cat_product/dish.do">식기</a></li>
					</ul>
				</li>

				<!--  <li class="nav-item"><a class="nav-link" href="/animal/member/loginForm.do">로그인</a></li>

                <li class="nav-item"><a class="nav-link" href="/animal/member/joinMember.do">회원가입</a></li> -->
			</ul>
		</div>
	</nav>
</body>
</html>