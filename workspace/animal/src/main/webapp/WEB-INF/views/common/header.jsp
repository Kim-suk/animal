<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>반려동물 페이지</title>

  <!-- jQuery & Bootstrap -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <!-- Custom CSS -->
  <link rel="stylesheet" href="${contextPath}/resources/css/style.css?v=1.0.3">

  <style>
    .modal-content, .modal-footer, .btn {
      pointer-events: auto !important;
    }
   body > .modal-backdrop.show {
  z-index: 1040 !important;
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

    @media (max-width: 1000px) {
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
  var contextPath = "${pageContext.request.contextPath}";
  var logoutConfirmed = false;

  $(document).ready(function () {

    // 확인 버튼 클릭 → 모달 닫기, 플래그 설정
    $('#confirmLogout').on('click', function () {
      logoutConfirmed = true;
      const modal = bootstrap.Modal.getInstance(document.getElementById('logoutModal'));
      modal.hide(); // 모달 닫기
    });
    $('.modal-backdrop').remove();
    // 모달 닫힌 후 로그아웃 처리
    $('#logoutModal').on('hidden.bs.modal', function () {
      if (logoutConfirmed) {
        $.ajax({
          url: contextPath + "/member/logout.do",
          method: "GET",
          success: function () {
            window.location.href = contextPath + "/main.do";
          },
          error: function () {
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
        backdrop: false // 배경 클릭 방지
      });
      modal.show();
    }
  }
</script>
	
</head>

<body>

  <!-- 상단 배너 -->
  <div class="banner">
    <a href="${contextPath}/main.do">
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
    <div class="modal-content bg-white text-center">
      <div class="modal-header border-0">
        <h5 class="modal-title" id="logoutModalLabel">알림</h5>
      </div>
      <div class="modal-body">
        ${sessionScope.loginName}님, 로그아웃 하시겠습니까?
      </div>
      <div class="modal-footer border-0 justify-content-center">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="confirmLogout">확인</button>
      </div>
    </div>
  </div>
</div>

  <!-- 내비게이션 바 -->
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

  <!-- 푸터 링크 예시 -->
  <footer>
    <p class="footer_p">
      <a id="footer_link" href="http://example.com">© 반려동물 케어</a>
    </p>
  </footer>

</body>
</html>
