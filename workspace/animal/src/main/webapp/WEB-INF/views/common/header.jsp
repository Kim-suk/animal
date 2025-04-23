<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


<!-- css -->
<link rel="stylesheet" href="/animal/resources/css/default.css">
<link rel="stylesheet" href="/animal/resources/css/top_nav.css">
<link rel="stylesheet" href="/animal/resources/css/swiper.css">
<link rel="stylesheet" href="/animal/resources/css/aos.css">
<link rel="stylesheet"
	href="/animal/resources/css/main_banner_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc01_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc02_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc03_style.css">
<link rel="stylesheet" href="/animal/resources/css/inc04_style.css">
<link rel="stylesheet" href="/animal/resources/css/user.css">
<link rel="stylesheet" href="/animal/resources/css/footer.css">
<link rel="stylesheet" href="/animal/resources/css/slider.css">
<link rel="stylesheet" href="/animal/resources/css/font_face.css">
<link rel="stylesheet" href="/animal/resources/css/common.css">
<link rel="stylesheet" href="/animal/resources/css/main.css">
<link rel="stylesheet" href="/animal/resources/css/style.css">



<!-- script -->

<script type="text/javascript"
	src="/animal/resources/script/jquery-ui.js"></script>
<script type="text/javascript"
	src="/animal/resources/script/jquery-menu.js"></script>
<script type="text/javascript" src="/animal/resources/script/common.js"></script>
<script type="text/javascript" src="/animal/resources/script/wrest.js"></script>
<script type="text/javascript"
	src="/animal/resources/script/placeholders.min.js"></script>
<link rel="stylesheet" href="/animal/resources/css/font-awesome.min.css">
<script type="text/javascript" src="/animal/resources/script/feather.js"></script>
<script type="text/javascript" src="/animal/resources/script/script.js"></script>
<script type="text/javascript"
	src="/animal/resources/script/gsap.min.js"></script>
<script type="text/javascript"
	src="/animal/resources/script/ScrollTrigger.min.js"></script>
<script type="text/javascript"
	src="/animal/resources/script/swiper.min.js"></script>
<script type="text/javascript" src="/animal/resources/script/aos.js"></script>
<script type="text/javascript" src="/animal/resources/script/g5.js"></script>
<script type="text/javascript" src="/animal/resources/script/content.js"></script>
<script type="text/javascript" src="/animal/resources/script/nav.js"></script>


<Style>
a {
	text-decoration: none;
}
</Style>
<script>
	var contextPath = "${pageContext.request.contextPath}";
	var logoutConfirmed = false;

	$(document).ready(
			function() {

				// 확인 버튼 클릭 → 모달 닫기, 플래그 설정
				$('#confirmLogout').on(
						'click',
						function() {
							logoutConfirmed = true;
							const modal = bootstrap.Modal.getInstance(document
									.getElementById('logoutModal'));
							modal.hide(); // 모달 닫기
						});
				$('.modal-backdrop').remove();
				// 모달 닫힌 후 로그아웃 처리
				$('#logoutModal').on(
						'hidden.bs.modal',
						function() {
							if (logoutConfirmed) {
								$.ajax({
									url : contextPath + "/member/logout.do",
									method : "GET",
									success : function() {
										window.location.href = contextPath
												+ "/main.do";
									},
									error : function() {
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
				backdrop : false
			// 배경 클릭 방지
			});
			modal.show();
		}
	}
</script>
</head>
<body>
	<!-- 로그인 -->
	<div id="sh_hd_wrapper">
		<div id="top_nav_wrap">
			<div class="top-menu">


				<!-- 모바일용 카테고리 -->
				<div class="allBox">
					<div class="allmenu">
						<a href="javascript:void(0);"></a>
					</div>
				</div>
			</div>


			<div class="right">
				<!-- 로그인/회원가입 메뉴 따로 분리해서 위쪽에 위치 -->
				<div class="login-links">
					<ul class="top-links">
						<c:choose>
							<c:when test="${not empty sessionScope.loginMember}">
								<li><a class="nav-link" href="#" onclick="logout(event)">로그아웃</a></li>
								<li><a class="nav-link" href="${contextPath}/member/mypage.do?id=${sessionScope.loginId }">${sessionScope.loginName}님
										환영합니다.</a></li>
										
							</c:when>
							<c:otherwise>
								<li><a class="nav-link"
									href="${contextPath}/member/loginForm.do">LOGIN</a></li>
								<li><a class="nav-link"
									href="${contextPath}/member/joinMember.do">SIGN UP</a></li>
									<li><a class="nav-link"
									href="${contextPath}/member/mypage.do">My Page</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

				<!-- 기존 네비게이션 메뉴 -->
				
		


			<!-- 카테고리 -->
			<div class="right">
				<nav id="r_menu">
					<ul id="top_nav">
						<li class="list01"><a class="list"
							href="${contextPath }/main.do">HOME</a></li>

						<li class="list02"><a class="list" href="#">HOSPITAL</a>
							<ul class="sub_ul1">
								<li><a href="${contextPath }/hospital/map.do">지도</a></li>
								<li><a href="${contextPath }/board/getBoardList.do?category=hospital">리뷰</a></li>
							</ul></li>

						<li class="list03"><a class="list" href="#">CAT</a>
							<ul class="sub_ul2">
								<li class="mo over"><a href="${contextPath }/cat/cat_about.do">고양이에 대한 모든 것</a></li>
								<li><a href="${contextPath }/cat/cat_type.do">묘종</a></li>
								<li><a href="${contextPath }/cat/cat_kitten.do">어린 고양이</a></li>
								<li><a href="${contextPath }/cat/cat_think.do">고양이를 기를까
										생각중이신가요?</a></li>

							</ul></li>
						<li class="list04"><a class="list" href="#">DOG</a>
							<ul class="sub_ul3">
								<li class="mo over"><a href="${contextPath }/dog/dog_about.do">강아지에 대한 모든 것</a></li>
								<li><a href="${contextPath }/dog/dog_type.do">품종</a></li>
								<li><a href="${contextPath }/dog/dog_puppy.do">어린 강아지</a></li>
								<li><a href="${contextPath }/dog/dog_think.do">강아지를 기를까 생각중이신가요?</a></li>

							</ul></li>
						<li class="list04"><a class="list" href="#"> ARTICLE</a>
							<ul class="sub_ul4">
								<li><a
									href="${contextPath}/board/getBoardList.do?category=free">자유
										게시판</a></li>
								<li><a
									href="${contextPath}/board/getBoardList.do?category=cat">고양이
										게시판</a></li>
								<li><a
									href="${contextPath}/board/getBoardList.do?category=dog">강아지
										게시판</a></li>
							</ul></li>
						<li class="list05"><a class="list" href="#">CatPRODUCT</a>
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
						
						<li class="list05"><a class="list" href="#">DogPRODUCT</a>
							<ul class="sub_ul5">
								<li><a href="${contextPath }/dog_product/dog_all.do">전체</a></li>
								<li><a href="${contextPath }/dog_product/dog_feed.do">사료</a></li>
								<li><a href="${contextPath }/dog_product/dog_treat.do">간식</a></li>
								<li><a href="${contextPath }/dog_product/dog_poop.do">배변용품</a></li>
								<li><a href="${contextPath }/dog_product/dog_carrier.do">이동장</a></li>
								<li><a href="${contextPath }/dog_product/dog_toy.do">장난감</a></li>
								<li><a href="${contextPath }/dog_product/dog_bath.do">목욕용품</a></li>
								<li><a href="${contextPath }/dog_product/dog_house.do">하우스</a></li>
								<li><a href="${contextPath }/dog_product/dog_dish.do">식기</a></li>
							</ul></li>


					</ul>
				</nav>
			</div>


		</div>
	</div>


<!-- 로그아웃 모달 -->
<div class="modal fade" id="logoutModal" tabindex="-1"
	aria-labelledby="logoutModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content bg-white text-center">
			<div class="modal-header border-0">
				<h5 class="modal-title" id="logoutModalLabel" style="color: #000">알림</h5>
			</div>
			<div class="modal-body" style="color: #000">${sessionScope.loginName}님,로그아웃
				하시겠습니까?</div>
			<div class="modal-footer border-0 justify-content-center">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="button" class="btn btn-primary" id="confirmLogout">확인</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>
