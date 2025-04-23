<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath }" />  

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap 5 CDN 추가 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- css -->
<link rel="stylesheet" href="/animal/resources/css/default.css">
<link rel="stylesheet" href="/animal/resources/css/font-awesome.min.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<c:choose>
   <c:when test='${param.result == "loginFailed"}'>
      <script>
         alert('아이디나 비밀번호가 틀립니다. 다시 로그인 하세요.');
      </script>
   </c:when>
   <c:when test='${param.result == "joinSuccess"}'>
    <script>alert('회원가입이 완료되었습니다. 로그인 해 주세요.');</script>
</c:when>
<c:when test='${param.result == "joinFailed"}'>
    <script>alert('회원가입에 실패했습니다. 다시 시도해 주세요.');</script>
</c:when>
</c:choose>
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

      
    .login-container {
        max-width: 600px;
        height: 500px;
        margin: 90px auto;
        margin-top:200px;
        padding: 20px;
        background: white;
        border-radius: 10px;
        border : center;
        background: rgba(255, 255, 255, 0.05); /* 반투명 유리 느낌 */
  		backdrop-filter: blur(10px);           /* 유리 효과 */
      	transition: all 0.3s ease;
  		box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
    }
    .login-title {
          font-family: var(--e-font);
        font-size: 60px;
        font-weight: bold;
        text-align: center;
        color:white;
        margin-bottom: 20px;
    }
    
    .social-login {
  display: flex;
  gap: 10px;
  justify-content: center;
  margin-top: 10px;
}

.social-btn {
   margin-top:5px;
   position: relative;
  padding: 20px 30px;
  font-size: 20px;
  color: white;
  background-color: rgba(255, 255, 255, 0.1); /* 반투명 흰색 */
  border: 1px solid rgba(255, 255, 255, 0.3);  /* 흐릿한 테두리 */
  backdrop-filter: blur(5px);                 /* 유리 느낌 */
  border-radius: 50px;
  cursor: pointer;
  transition: all 0.3s ease;
  
}

.naver {
  background-color: #03C75A;
  border: 1px solid rgba(255, 255, 255, 0.3);  /* 흐릿한 테두리 */
  backdrop-filter: blur(5px);
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
}

.google {
  background-color: #DB4437;
  border: 1px solid rgba(255, 255, 255, 0.3);  /* 흐릿한 테두리 */
  backdrop-filter: blur(5px);
}

.kakao {
  background-color: #FEE500;
  border: 1px solid rgba(255, 255, 255, 0.3);  /* 흐릿한 테두리 */
  backdrop-filter: blur(5px);
  color: black;
}

.facebook {
  background: linear-gradient(90deg, #1877F2 0%, #4e69a2 100%);
  border: 1px solid rgba(255, 255, 255, 0.3);  /* 흐릿한 테두리 */
  backdrop-filter: blur(5px);
  color: white;
}
 

.social-btn:hover {
  transform: scale(1.2);
  transition: transform 0.2s ease;
    backdrop-filter: blur(5px);
}

.login-btn {
  width: 100%;
  padding: 8px 0;
  font-size: 16px;
  font-weight: bold;
  color: white;
  background: #586e65;
  border: none;
  border-radius: 18px;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
   margin-bottom: 15px; /* 여백 추가 */
}

.login-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}
.signup-btn {
  width: 100%;
  padding: 8px 0;
  font-size: 16px;
  font-weight: bold;
  color: white;
  background: #acc2b9;
  border: none;
  border-radius: 18px;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(3, 199, 90, 0.4);
}

.signup-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(3, 199, 90, 0.6);
}
    
</style>

<script>

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

<!-- 기존 로그인 컨테이너는 여기부터 유지 -->
<div class="container">
  <div class="login-container">
    <h2 class="login-title">LOGIN</h2>

    <!-- 로그인 폼 -->
    <form action="${contextPath }/member/login.do" method="post" onsubmit="return saveId()">
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
     <button type="submit" class="login-btn">LOGIN</button>
    </form>

    <!-- 회원가입 폼 -->
    <form method="post" action="${contextPath }/member/joinMember.do">
      <button type="submit" class="signup-btn">SIGN UP</button>
    </form>


  <!-- 네이버, 구글, 카카오, 페이스북 버튼 -->
<div class="social-login">
  <a class="social-btn naver" href="${contextPath}/member/naverLoginStart" title="네이버 로그인" alt="네이버 로그인">N</a>
  <a class="social-btn google" href="${contextPath}/member/googleLoginStart" title="구글 로그인" alt="구글 로그인">G</a>
<a class="social-btn kakao" href="${contextPath}/member/kakaoLoginStart" title="카카오 로그인" alt="카카오 로그인">K</a>
<a class="social-btn facebook" href="${contextPath}/member/facebookLoginStart" title="페이스북 로그인" alt="페이스북 로그인">F</a>
</div>

  </div>
</div>
</body>
</html>