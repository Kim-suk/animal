<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>회원 탈퇴</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/animal/resources/css/default.css">
</head>
<style>
.background-wave {
  width: 110vw;
  height: 110vh;
  position: absolute;
  top: -5vh;
  left: -5vw;
  object-fit: cover;
  filter: url(#water);
  opacity: 0.3; /* ✅ 투명도 조절 */
  z-index: -1;  /* ✅ 배경으로 보내기 */
}

</style>
<body>

<!-- ✅ 배경 애니메이션 SVG 필터 추가 -->
<svg width="0" height="0" xmlns="http://www.w3.org/2000/svg">
  <filter id="water">
    <feTurbulence type="fractalNoise" baseFrequency=".05 .05" numOctaves="1" result="noise1"></feTurbulence>
    <feColorMatrix in="noise1" type="hueRotate" values="0" result="noise2">
      <animate attributeName="values" from="0" to="360" dur="1s" repeatCount="indefinite"/>
    </feColorMatrix>
    <feDisplacementMap xChannelSelector="R" yChannelSelector="G" scale="20" in="SourceGraphic" in2="noise2" />
  </filter>
</svg>

<!-- ✅ 물결 애니메이션 이미지 배경 삽입 -->
<img class="background-wave" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/467/hawaii-water%20small.jpeg" alt="animated water">

<div class="container mt-5">
    <h2 class="text-danger">회원 탈퇴</h2>
    <p class="text-muted">비밀번호를 입력하여 탈퇴를 완료하세요.</p>

    <form method="post" action="/animal/member/deleteForm.do">
        <div class="mb-3">
            <label for="pwd" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="pwd" name="pwd" required>
        </div>
        <input type="hidden" name="id" value="${sessionScope.loginId}">

        <button type="submit" class="btn btn-danger">회원 탈퇴</button>
        <a href="mypage?id=${sessionScope.loginId}" class="btn btn-secondary">취소</a>
    </form>
    <script>
    <c:if test="${not empty msg}">
    <div class="alert alert-success">${msg}</div>
</c:if>
<c:if test="${not empty error}">
    <div class="alert alert-danger">${error}</div>
</c:if>
    </script>
</div>
</body>
</html>