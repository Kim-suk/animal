<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>반려동물 페이지</title>

<!-- jQuery 및 Bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="/animal/resources/css/main.css?v=250413024730">
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

<style>
/* 네비게이션 바 스타일 */
/* 네비게이션 바 (배너 아래 고정) */
.modal-content, .modal-footer, .btn {
	pointer-events: auto !important;
}

body>.modal-backdrop.show {
	z-index: 1040 !important;
}

.navbar {
	position: fixed;
	top: 80px; /* 배너 높이만큼 아래 */
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
	list-style: none;
}

.common {
	text-decoration: none;
	color: black;
}


/* 로그인 버튼 스타일 */
.nav-login {
	position: absolute;
	right: 20px;
	top: 50%;
	transform: translateY(-50%);
	display: flex;
	align-items: center;
	gap: 10px;
}

.login-user {
	font-weight: bold;
	margin-right: 10px;
}
</style>
</head>

<body>
	<!-- <div class="banner">
		<a href="${contextPath }/main.do" class="banner-link"> <img
			src="${contextPath}/resources/image/banner.png">
		</a>

		 상단 배너 
		<div class="banner">
			<a href="${contextPath}/main.do" class="banner-link"> <img
				src="${contextPath}/resources/image/banner.png">
			</a>
			<div class="inner1720" style="display: flex; align-items: center; justify-content: space-between;" -->
    <!-- 검색 버튼 -->
    <div class="search-btn">
      <a href="/kr/sub/search/result.php">
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none" class="svg replaced-svg">
          <g clip-path="url(#clip0_999_6312)">
            <path d="M22.9956 21.4631C24.8694 19.243 26 16.3762 26 13.25C26 6.21886 20.2811 0.5 13.25 0.5C6.21886 0.5 0.5 6.21886 0.5 13.25C0.5 20.2811 6.21886 26 13.25 26C16.3762 26 19.243 24.8694 21.4631 22.9956L27.6504 29.1829C27.8623 29.3948 28.1416 29.5 28.4167 29.5C28.6939 29.5 28.9715 29.3944 29.1829 29.1829L29.1841 29.1818C29.6047 28.7585 29.6063 28.0738 29.1829 27.6504L22.9956 21.4631ZM2.66667 13.25C2.66667 7.41427 7.41427 2.66667 13.25 2.66667C19.0857 2.66667 23.8333 7.41427 23.8333 13.25C23.8333 19.0857 19.0857 23.8333 13.25 23.8333C7.41427 23.8333 2.66667 19.0857 2.66667 13.25Z" fill="black" stroke="black"></path>
          </g>
          <defs>
            <clipPath id="clip0_999_6312">
              <rect width="30" height="30" fill="black"></rect>
            </clipPath>
          </defs>
        </svg>
      </a>
    </div>

 <!--  </div> -->
			<ul class="top-links">
				<c:choose>
					<c:when test="${not empty sessionScope.loginMember}">
						<li><a class="nav-link" href="#" onclick="logout(event)">로그아웃</a></li>
						<li><a class="nav-link" href="#">${sessionScope.loginName}님
								환영합니다</a></li>
					</c:when>
					<c:otherwise>
						<li><a class="nav-link"
							href="${contextPath}/member/loginForm.do"> 로그인 </a></li>
						<li><a class="nav-link"
							href="${contextPath}/member/joinMember.do"> 회원가입 </a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	<!-- 로그아웃 모달 -->
	<div class="modal fade" id="logoutModal" tabindex="-1"
		aria-labelledby="logoutModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content bg-white text-center">
				<div class="modal-header border-0">
					<h5 class="modal-title" id="logoutModalLabel">알림</h5>
				</div>
				<div class="modal-body">${sessionScope.loginName}님, 로그아웃
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
</html> --%>