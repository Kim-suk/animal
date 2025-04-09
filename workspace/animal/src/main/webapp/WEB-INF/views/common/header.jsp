<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!-- 스타일 및 스크립트 -->
<link rel="stylesheet" href="/animal/resources/css/style.css?v=1.0.3">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>

 .modal-content, .modal-footer, .btn {
  pointer-events: auto !important;
}
  .banner {
    background-color: #fff;
    padding: 10px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 120px;
    position: fixed;
    width: 100%;
    z-index: 999;
    top: 0;
    border-bottom: 1px solid #ddd;
  }

  .banner img {
    height: 100px;
  }

  .navbar {
    background-color: #f8f9fa;
    padding: 0 20px;
    position: fixed;
    top: 120px;
    width: 100%;
    z-index: 998;
    border-bottom: 1px solid #ddd;
  }

  .navbar-nav {
    display: flex;
    flex-wrap: wrap;
  }

  .nav-item {
    position: relative;
    padding: 15px 20px;
    cursor: pointer;
    font-weight: bold;
    color: #333;
  }

  .nav-link {
    text-decoration: none;
    color: #333;
  }

  .submenu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background-color: #fff;
    border: 1px solid #ccc;
    z-index: 1000;
    padding: 10px 0;
    width: 180px;
  }

  .submenu li {
    padding: 8px 20px;
  }

  .submenu li a {
    color: #333;
    text-decoration: none;
  }

  .nav-item:hover .submenu {
    display: block;
  }

  .top-links {
    list-style: none;
    display: flex;
    gap: 10px;
    margin: 0;
    padding: 0;
    align-items: center;
  }

  .nav-login {
    display: flex;
    gap: 10px;
  }

  body {
    margin-top: 140px; /* 헤더 높이만큼 여백 */
  }

  @media (max-width: 768px) {
    .navbar-nav {
      flex-direction: column;
    }

    .nav-item {
      padding: 10px;
    }

    .banner {
      flex-direction: column;
      height: auto;
    }

    .banner img {
      height: 80px;
    }

  }
</style>

<script>
  let confirmBtn; // 전역에서 참조하도록

  $(document).ready(function () {
    $(".nav-item").hover(
      function () { $(this).find(".submenu").stop(true, true).slideDown(200); },
      function () { $(this).find(".submenu").stop(true, true).slideUp(0); }
    );
  });

  function logout(e) {
    e.preventDefault();

    const modalElement = document.getElementById('logoutModal');
    const modal = new bootstrap.Modal(modalElement);

    modal.show();

    // 버튼 참조 후 이벤트 연결 제거 → 재연결 (jQuery 방식으로)
    $('#logoutModal').on('shown.bs.modal', function () {
      $('#confirmLogout').off('click').on('click', function () {
        $.ajax({
          url: "${contextPath}/member/logout.do",
          method: "GET",
          success: function () {
            window.location.href = "${contextPath}/main.do";
          },
          error: function () {
            alert("로그아웃에 실패했습니다.");
          }
        });
      });
    });
  }
</script>

<!-- 상단 배너 -->
<div class="banner">
  <a href="${contextPath }/main.do" class="banner-link">
    <img src="${contextPath}/resources/image/banner.png" alt="배너">
  </a>

  <ul class="top-links">
    <c:choose>
      <c:when test="${not empty sessionScope.loginMember}">
        <li><a class="nav-link" href="#" onclick="logout(event)">로그아웃</a></li>
        <li><a class="nav-link" href="#">${sessionScope.loginName}님 환영합니다</a></li>
      </c:when>
      <c:otherwise>
        <li><a class="nav-link" href="${contextPath}/member/loginForm.do">로그인</a></li>
        <li><a class="nav-link" href="${contextPath}/member/joinMember.do">회원가입</a></li>
      </c:otherwise>
    </c:choose>
  </ul>
</div>

<!-- 로그아웃 모달 -->
<div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-white text-center"> <!-- 여기 bg-white -->
      <div class="modal-header border-0">
        <h5 class="modal-title" id="logoutModalLabel">알림</h5>
      </div>
      <div class="modal-body">
        ${sessionScope.loginName}님, 로그아웃 했습니다.
      </div>
      <div class="modal-footer border-0 justify-content-center">
        <button type="button" class="btn btn-primary" id="confirmLogout">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg">
  <ul class="navbar-nav">

    <li class="nav-item"><a class="nav-link" href="${contextPath}/main.do">홈</a></li>

    <li class="nav-item">동물병원
      <ul class="submenu">
        <li><a href="${contextPath}/hospital/map.do">지도</a></li>
        <li><a href="${contextPath}/hospital/review.do">리뷰</a></li>
      </ul>
    </li>

    <li class="nav-item">고양이
      <ul class="submenu">
        <li><a href="${contextPath}/cat/cat_type.do">묘종</a></li>
        <li><a href="${contextPath}/cat/cat_kitten.do">어린 고양이</a></li>
        <li><a href="${contextPath}/cat/cat_think.do">고민 중이신가요?</a></li>
      </ul>
    </li>

    <li class="nav-item">강아지
      <ul class="submenu">
        <li><a href="${contextPath}/dog/dog_type.do">품종</a></li>
        <li><a href="${contextPath}/dog/dog_puppy.do">어린 강아지</a></li>
        <li><a href="${contextPath}/dog/dog_think.do">고민 중이신가요?</a></li>
      </ul>
    </li>

    <li class="nav-item">게시판
      <ul class="submenu">
        <li><a href="${contextPath}/cat_board/cat_listArticles.do">고양이</a></li>
        <li><a href="${contextPath}/dog_board/dog_listArticles.do">강아지</a></li>
        <li><a href="${contextPath}/board/listArticles.do">자유게시판</a></li>
      </ul>
    </li>

    <li class="nav-item">강아지 용품
      <ul class="submenu">
        <li><a href="${contextPath}/dog_product/dog_all.do">전체</a></li>
        <li><a href="${contextPath}/dog_product/dog_feed.do">사료</a></li>
        <li><a href="${contextPath}/dog_product/dog_snack.do">간식</a></li>
        <li><a href="${contextPath}/dog_product/dog_sanitation.do">위생</a></li>
        <li><a href="${contextPath}/dog_product/dog_dish.do">식기</a></li>
        <li><a href="${contextPath}/dog_product/dog_toy.do">장난감</a></li>
      </ul>
    </li>

    <li class="nav-item">고양이 용품
      <ul class="submenu">
        <li><a href="${contextPath}/cat_product/cat_all.do">전체</a></li>
        <li><a href="${contextPath}/cat_product/cat_feed.do">사료</a></li>
        <li><a href="${contextPath}/cat_product/cat_snack.do">간식</a></li>
        <li><a href="${contextPath}/cat_product/cat_sanitation.do">위생</a></li>
        <li><a href="${contextPath}/cat_product/cat_dish.do">식기</a></li>
        <li><a href="${contextPath}/cat_product/cat_toy.do">장난감</a></li>
      </ul>
    </li>

  </ul>
</nav>
