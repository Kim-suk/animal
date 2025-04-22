<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath }" />  

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인</title>

<!-- Bootstrap 5 CDN 추가 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>

    .login-container {
        max-width: 500px;
        margin: 90px auto;
        padding: 20px;
        background: white;
        border-radius: 10px;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    }
    .login-title {
        font-size: 24px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }
    
    .social-login {
  display: flex;
  gap: 10px;
  justify-content: center;
  margin-top: 20px;
}

.social-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 50px;
  height: 50px;
  font-weight: bold;
  font-size: 20px;
  border-radius: 50%;
  text-decoration: none;
  color: white;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.naver {
  background-color: #03C75A;
}

.google {
  background-color: #DB4437;
}

.kakao {
  background-color: #FEE500;
  color: black;
}

    
</style>

<script>
  window.onload = function () {
    // 로그인 실패/로그아웃/비로그인 알림 처리
    <c:choose>
      <c:when test='${param.result == "loginFailed"}'>
        alert('아이디나 비밀번호가 틀립니다. 다시 로그인 하세요.');
      </c:when>
      <c:when test='${param.result == "logout"}'>
        alert('로그아웃 되었습니다.');
      </c:when>
      <c:when test='${param.result == "notLogin"}'>
        alert('로그인이 되어 있지 않습니다. 로그인 하세요.');
      </c:when>
    </c:choose>

    // 아이디 저장 쿠키 처리
    const savedId = getCookie("savedId");
    if (savedId !== "") {
      document.getElementById("id").value = savedId;
      document.getElementById("saveIdCheck").checked = true;
    }
    
    
    // 1. 네이버 로그인 객체 생성
    const naverLogin = new naver.LoginWithNaverId({
      clientId: "gvp5HrUQ4UssNFDKYTkF", // 실제 네이버 Client ID
      callbackUrl: "http://localhost:8080/animal/member/naverLogin", // 네이버에 등록된 콜백 URL
      isPopup: false, // 팝업 로그인 X
    });

    // 2. 초기화
    naverLogin.init();

    // 3. 버튼에 클릭 이벤트 연결
    document.addEventListener("DOMContentLoaded", function () {
      const naverBtn = document.getElementById("naverLoginBtn");
      if (naverBtn) {
        naverBtn.addEventListener("click", function (e) {
          e.preventDefault();
          naverLogin.login(); // 실제 로그인 요청
        });
      }
    });
  </script>

<script>
  function saveId() {
    const id = document.getElementById("id").value;
    const checked = document.getElementById("saveIdCheck").checked;
    if (checked) {
      setCookie("savedId", id, 7); // 7일 저장
    } else {
      deleteCookie("savedId");
    }
    return true;
  }

  function setCookie(name, value, days) {
    const d = new Date();
    d.setTime(d.getTime() + days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + value + ";expires=" + d.toUTCString() + ";path=/";
  }

  function getCookie(name) {
    const value = "; " + document.cookie;
    const parts = value.split("; " + name + "=");
    if (parts.length === 2) return parts.pop().split(";").shift();
    return "";
  }

  function deleteCookie(name) {
    document.cookie = name + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
  }
</script>

</head>
<body  style="padding-top: 140px;">

<div class="container">
  <div class="login-container">
    <h2 class="login-title">LOGIN</h2>

    <!-- 로그인 폼 -->
    <form action="${contextPath }/main.do" method="post" onsubmit="return saveId()">
      <div class="mb-3">
        <label for="id" class="form-label">ID</label>
        <input type="text" class="form-control" id="id" name="id" required>
      </div>
      <div class="mb-3">
        <label for="pwd" class="form-label">PASSWORD</label>
        <input type="password" class="form-control" id="pwd" name="pwd" required>
      </div>
      <label>
        <input type="checkbox" id="saveIdCheck"> 아이디 저장
      </label>
      <button type="submit" class="btn btn-primary w-100">LOGIN</button>
    </form>

    <!-- 회원가입 폼 -->
    <form method="post" action="${contextPath }/member/joinMember.do">
      <button type="submit" class="btn btn-secondary w-100 mt-2">SIGN UP</button>
    </form>

  <!-- 네이버, 구글, 카카오 버튼 -->
<div class="social-login">
  <a class="social-btn naver" href="${contextPath}/member/naverLoginStart" title="네이버 로그인" alt="네이버 로그인">N</a>
  <a class="social-btn google" href="${contextPath}/member/googleLoginStart" title="구글 로그인" alt="구글 로그인">G</a>
<a class="social-btn kakao" href="${contextPath}/member/kakaoLoginStart" title="카카오 로그인" alt="카카오 로그인">K</a>
</div>

  </div>
</div>
</body>
</html>
